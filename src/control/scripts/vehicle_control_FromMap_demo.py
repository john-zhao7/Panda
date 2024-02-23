#!/usr/bin/env python3
#coding=utf-8

import math
import time
import rospy
import signal
import geometry_msgs.msg
import std_msgs.msg
import sys


import yaml
import path_control
import speed_control

sys.path.append('/home/nvidia/cotton_ws_panda/src/control/scripts/lib')
from base_function import *


import json

is_exit = False
CTE = 0
diffCTE = 0
dHead = 0
dHead_filtered = 0
diffdHead = 0
dspeed = 0
diffspeed = 0

# mark = 0


now_pos_x = 0
now_pos_y = 0
now_pos_head = 0
now_speed = 0

Map = []
mapfile = '/home/nvidia/cotton_ws_panda/src/control/scripts/newmap.map'
roadfile = '/home/nvidia/cotton_ws_panda/src/control/scripts/newmap.road'


with open('/home/nvidia/cotton_ws_panda/src/control/config/ControlParameter.yaml', 'r') as file:
    yaml_data = yaml.load(file, Loader=yaml.FullLoader)

plan_data_path_list = []
tarPath = []
sequence = []

# Control_msg_pub = rospy.Publisher('To_WireContorl_publisher', Control, queue_size=10)
Control_msg_pub = rospy.Publisher('/To_WireContorl_publisher', std_msgs.msg.String, queue_size=10)
Data_msg_pub = rospy.Publisher('data_publisher', std_msgs.msg.String, queue_size=10)

class Road:
    def __init__(self):
        self.id = -1
        self.lane = []
        pass

#lane id, attr and pos info
class Lane:
    def __init__(self):
        self.id = -1
        self.left = -1
        self.right = -1
        self.spd = -1
        self.width = -1
        self.points = []
        pass

#lat, lon and head
class Pos:
    def __init__(self, x, y, head):
        self.x = x
        self.y = y
        self.head = head
        pass

class Point:
    def __init__(self, x, y, head):
        self.x = x
        self.y = y
        self.head = head
        pass

def signal_handler(signal, frame):
    global is_exit
    is_exit = True

def readMap():
    global Map
    with open(mapfile) as m:
        rows = m.readlines()
        for i in range(1, len(rows)):
            road = Road()
            lane = Lane()
            col = rows[i].split('\t')
            road.id = int(col[0])
            lane.id = int(col[1])
            lane.left = int(col[2])
            lane.right = int(col[3])
            lane.spd = int(col[4])
            for pos in col[5:]:
                seg = pos.split(',')
                if len(seg) > 2:
                    seg_new = []
                    seg_new = from_latlon(float(seg[1]),float(seg[0]))
                    lane.points.append(Pos(float(seg_new[0]), float(seg_new[1]), float(seg[2])))
            road.lane.append(lane)
            Map.append(road)
    # print Map[0].lane[0].id
    print('mapfile read complete')
    pass

def readRoad():
    global nextRoad
    global nextLane
    global sequence
    with open(roadfile) as r:
        rows = r.readlines()
        for i in range(1, len(rows)):
            col = rows[i].split('\t')
            sequence.append([int(col[0]), int(col[1])])
    nextRoad = sequence[0][0]
    nextLane = sequence[0][1]
    print('roadfile read complete')
    pass

def nextPath():
    global tarPath
    global curRoad
    global curSpd
    global tarPath2
    global curSpd2
    global curLane
    global curLeft
    global curRight
    global nextRoad
    global nextLane

    # read target path
    for i, seg in enumerate(Map):
        if seg.id == nextRoad and seg.lane[0].id == nextLane:
            curRoad = seg.id
            curLane = seg.lane[0].id
            # print curRoad,curLane
            curSpd = seg.lane[0].spd
            tarPath = seg.lane[0].points
            curLeft = seg.lane[0].left
            curRight = seg.lane[0].right
            break

    for i, seg in enumerate(Map):
        if seg.id == nextRoad + 1 and seg.lane[0].id == nextLane:
            curSpd2 = seg.lane[0].spd
            tarPath2 = seg.lane[0].points
            break

    # decide nextroad and nextlane according to the pre-plan info
    for k in range(len(sequence)):
        if sequence[k][0] == nextRoad:
            break

    if k + 1 < len(sequence):
        nextRoad = sequence[k + 1][0]
        nextLane = sequence[k + 1][1]

    if k + 1 == len(sequence):
        nextRoad = sequence[0][0]
        nextLane = sequence[0][1]

    pass


def call_back_GNSS(msg):
    global now_pos_x
    global now_pos_y
    global now_pos_head
    global now_speed

    GNSS_data = json.loads(msg.data)
    cood_xy = from_latlon(float(GNSS_data["Lat"]), float(GNSS_data["Lon"]))

    now_pos_x = cood_xy[0]
    now_pos_y = cood_xy[1]

    now_pos_head = GNSS_data["Head"]
    now_speed = GNSS_data["Speed"]

    Data_Process()



def Dhead_filter():

    global dHead_filtered
    global dHead


    tau_filter = 0.05
    tau_discrete = 0.02

    dHead_filtered = dHead_filtered + tau_discrete / tau_filter * (dHead - dHead_filtered)

    return dHead_filtered


def InsSrch(path, pos, last):
    curDis = 0
    # global mid
    mid = 0

    # calculate distance from current point to map
    def calcDis(m, pos):

        dis = math.sqrt(math.pow(path[m].x - pos.x, 2) + math.pow(path[m].y - pos.y, 2))
        return dis

    # compare if dheading is out of range
    def cmpHead(n):
        dheading = path[n].head - pos.head
        if math.fabs(dheading) > 75 and math.fabs(dheading) < 275:
            return True
        return False

    # search from last point to save time
    if (last - 10 > 0):
        low = last - 10
    else:
        low = 0
    high = len(path) - 9
    count = 0

    while (low < high):
        count += 1
        low = int(low)
        high = int(high)
        mid = int((low + high) / 2)

        l_dis = calcDis(low, pos)
        m_dis = calcDis(mid, pos)
        h_dis = calcDis(high, pos)

        # check dheading
        if count > 15:
            curDis = 9999
            break
        if cmpHead(low):
            low = mid
            continue
        if cmpHead(high):
            high = mid
            continue

        if (l_dis < h_dis and high - mid > 0):
            high = mid
        if (h_dis < l_dis and mid - low > 0):
            low = mid
        if mid == int((low + high) / 2):
            if l_dis <= m_dis and l_dis <= h_dis:
                curDis = l_dis
                mid = low
                break
            if m_dis <= l_dis and m_dis <= h_dis:
                curDis = m_dis
                break
            if h_dis <= l_dis and h_dis <= m_dis:
                curDis = h_dis
                mid = high
                break

    dHead = path[mid].head - pos.head
    mark = mid

    # print count
    return curDis, dHead, mark
    pass


def Data_Process():
    global now_pos_x
    global now_pos_y
    global now_pos_head
    global now_speed
    global mark

    global CTE
    global dHead
    global diffCTE
    global diffdHead
    global plan_data_path_list
    global dspeed
    global now_speed
    global tarPath
    global diffspeed
    global dspeed

    global yaml_data

    tar_speed = 0.8 * now_speed + 0.2 * yaml_data['TargetSpeed']
    # print("tar_speed:###########@@@@@@",tar_speed)

    diffCTE = -CTE
    diffdHead = -dHead
    diffspeed = -dspeed


    while len(tarPath) < 5 and len(sequence) > 0:
        print('path too short and step to next')
        nextPath()
        mark = 0
        pass

    plan_data_path_list = tarPath
    # print(plan_data_path_list[0].x)

    curPos = Point(now_pos_x, now_pos_y, now_pos_head)
    curDis,dheading,mark = InsSrch(plan_data_path_list, curPos,mark)
    mark_cood = Point(plan_data_path_list[mark].x, plan_data_path_list[mark].y, plan_data_path_list[mark].head)

    if curDis > 20:
        print('dis to closest point is {0}, dhead is {1}, step to next path'.format(curDis, dheading))
        nextPath()
        mark = 0
        return 0

    if mark - 2 > 0:
        ptB = Point(plan_data_path_list[mark - 2].x, plan_data_path_list[mark - 2].y, plan_data_path_list[mark - 2].head)
        disLeft = math.sqrt(math.pow(curPos.x - ptB.x, 2) + math.pow(curPos.y - ptB.y, 2))
    else:
        disLeft = 100

    ptC = Point(plan_data_path_list[mark + 2].x, plan_data_path_list[mark + 2].y, plan_data_path_list[mark + 2].head)
    disRight = math.sqrt(math.pow(curPos.x - ptC.x, 2) + math.pow(curPos.y - ptC.y, 2))
    try:
        dHead = curPos.head - plan_data_path_list[mark + 8].head  # forward distance
    except:
        dHead = curPos.head - plan_data_path_list[mark + 7].head
    if dHead < -180:
        dHead = dHead + 360
    if dHead > 180:
        dHead = dHead - 360
    dHead = Dhead_filter()

    dspeed = tar_speed - now_speed

    if disLeft < disRight:
        dx = mark_cood.x - ptB.x
        dy = mark_cood.y - ptB.y
        Rx = curPos.x - ptB.x
        Ry = curPos.y - ptB.y
    else:
        dx = ptC.x - mark_cood.x
        dy = ptC.y - mark_cood.y
        Rx = curPos.x - mark_cood.x
        Ry = curPos.y - mark_cood.y

    # dHead = dHead + offset_dHead

    if dHead < -270:
        dHead = 360 + dHead
    if dHead > 270:
        dHead = dHead - 360

    # CTE = (Ry * dx - Rx * dy) / ((dx ** 2 + dy ** 2) ** 0.5) - offset
    CTE = (Ry * dx - Rx * dy) / ((dx ** 2 + dy ** 2) ** 0.5)
    diffCTE = diffCTE + CTE
    diffdHead = diffdHead + dHead
    diffspeed = diffspeed + dspeed

    if diffCTE > 0.02:
        diffCTE = 0.02
    if diffCTE < -0.02:
        diffCTE = -0.02

    data_pub = {"markx": mark_cood.x, "marky": mark_cood.y, "markhead": mark_cood.head,
                "curposx": curPos.x, "curposy": curPos.y, "curposhead": curPos.head,
                "CTE":CTE,"diffCTE":diffCTE,"dHead":dHead,"diffdHead":diffdHead}
    Data_msg_pub.publish(json.dumps(data_pub))


def VehicleControl():
    global CTE
    global diffCTE
    global dHead
    global diffdHead
    global yaml_data
    global diffspeed
    global dspeed

    control_msg = {}
    offset = 0   # change the road
    # print("CTE:",CTE,"diffCTE:",diffCTE,"dHead:",dHead,"diffdHead:",diffdHead)
    print("CTE:", CTE, "dHead:", dHead)

    # print("dspeed:",dspeed,"diffspeed:",diffspeed)
    wheelAngle = path_control.pathControl(CTE + offset, diffCTE, dHead, diffdHead, yaml_data)

    [throttle_ACC,throttle_EBS] = speed_control.speedControl(dspeed,diffspeed,yaml_data)

    control_msg["wheelAngle"] = wheelAngle
    control_msg["throttle"] = throttle_ACC
    control_msg["Target_deceleration"] = throttle_EBS
    control_msg["CTE"] = CTE
    control_msg["dHead"] = dHead


    # print("wheelAngle:",wheelAngle,"throttle:",throttle_ACC,"Target_deceleration:",throttle_EBS)

    Control_msg_pub.publish(json.dumps(control_msg))



    return

def main():
    global CTE

    signal.signal(signal.SIGINT, signal_handler)

    rospy.init_node('control', anonymous=False)
    rospy.Subscriber('/ztbus/location', std_msgs.msg.String, call_back_GNSS)

    readMap()
    readRoad()

    print('all threads started ......')

    start = time.time()

    alive = True
    while not is_exit:
        VehicleControl()

        after = time.time()
        gap = after - start
        start = after
        # print(gap)

        time.sleep(0.07)

    print('\nall threads were ended by Ctrl-C')

#run main func
if __name__ == '__main__':
    main()
