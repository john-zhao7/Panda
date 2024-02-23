"""
    Name: Hao Jinbo
    Date: 2023.3
    Function: 本库函数应用于存储规划相关功能函数
"""
import math
import color_print_lib
import base_class

# 输入：nextRoad， nextLane , global_Map_dict , Road_dict
# 输出：包含 tarPath 、cur_Road 、nextRoad、nextLane 的字典
def nextPath(nextRoad, nextLane, global_Map_dict, Road_dict):
    Map = global_Map_dict["Map_list"]
    sequence_list = Road_dict["sequence_list"]

    # 搜寻ROAD列表，找到下一路段
    for k in range(len(sequence_list)):
        if sequence_list[k][0] == nextRoad:
            if k + 1 < len(sequence_list):
                nextRoad = sequence_list[k + 1][0]
                nextLane = sequence_list[k + 1][1]
            if k + 1 == len(sequence_list):
                nextRoad = sequence_list[0][0]
                nextLane = sequence_list[0][1]
            break
    for i, seg in enumerate(Map):
        if seg.id == nextRoad and seg.lane[0].id == nextLane:
            curRoad = seg.id
            tarPath = seg.lane[0].points
            break
    next_path_dict = {"tarPath": tarPath, #该路段下的所有点
                      "curRoad": curRoad, #该路段的id
                      "nextRoad": nextRoad,
                      "nextLane": nextLane}
    return next_path_dict

# 输入：path(一个列表，储存Point类对象)，pos(当前车辆位置，Point类对象)，last(初始的二分法的右边界值)
# 输出：curDis, dHead, mark
# 功能：返回当前节点到最近节点的距离curDis, 横向偏差dHead，以及节点在tarPath中位置标记mark
def InsSrch(path, pos, last):
    curDis = 0

    def calcDis(m, pos):
        m = int(m)
        x_m = path[m].x
        y_m = path[m].y
        dis = math.sqrt(math.pow(x_m - pos.x, 2) + math.pow(y_m - pos.y, 2))
        return dis

    def cmpHead(n):
        n = int(n)
        dheading = path[n].head - pos.head
        if math.fabs(dheading) > 75 and math.fabs(dheading) < 275:
            return True
        return False

    if (last - 10 > 0):
        low = last - 10
    else:
        low = 0
    high = len(path) - 9
    count = 0
    while (low < high):
        count += 1
        mid = (low + high) / 2
        mid = int(mid)
        l_dis = calcDis(low, pos)
        m_dis = calcDis(mid, pos)
        h_dis = calcDis(high, pos)
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
    return curDis, dHead, mark

# 输入：dHead，dHead_filtered
# 输出：dHead_filtered
# 航向角滤波
def Dhead_filter(dHead, dHead_filtered,ROAD_ID,ROAD_curve_list):
    if ROAD_ID in ROAD_curve_list:
        tau_filter = 0.25
        tau_discrete = 0.02
    else:
        tau_filter = 0.05
        tau_discrete = 0.02
    dHead_filtered = dHead_filtered + tau_discrete / tau_filter * (dHead - dHead_filtered)
    return dHead_filtered

# 功能：自动切换路段，寻找最近目标点 ，计算横向偏差CTE、和航向偏差dheading
# 输入：mark,first_plan_dict,next_path_dict,nextRoad,nextLane,global_Map_dict,Road_dict,position_node,offset_dict
# 输出：first_plan_dict, mark, next_path_dict, dis_to_reference
def firstPlan(mark, first_plan_dict, next_path_dict, global_Map_dict,
              Road_dict, position_node, offset_dict, ROAD_ID, ROAD_curve_list, preview_number1=8, preview_number2=5):
    """
        first_plan_dict = {'CTE': 0, 'diffCTE': 0,
                   'Dis': 0, 'dHead': 0, 'diffdHead': 0, 'targetpath_head': 0}

        next_path_dict = {"tarPath": [], "curRoad": -1, "nextRoad": -1, "nextLane": -1}

        global_Map_dict = {"global_point_list": global_point_list,  #所有points都放到该列表下
                   "X_list": x_list,  # UTM_x列表
                   "Y_list": y_list,  # UTM_y列表
                   "heading_list": heading_list,  # 航向角列表（弧度制）
                   "Map_list": Map,  # 包括所有ID及其points
                   "road_points_num_list": road_points_num_list} # 不同ID下的所有点都放到该列表下，长度为ID数

        Road_dict = {"sequence_list": sequence_list} # ROAD文件下的路段

        offset_dict = {"offset": 0, "offset_dHead": 0}

        ROAD_curve_list = [] # 弯曲路段
    """

    CTE = first_plan_dict["CTE"]
    dHead = first_plan_dict["dHead"]
    dHead_filtered = dHead
    offset = offset_dict["offset"]
    offset_dHead = offset_dict["offset_dHead"]
    tarPath = next_path_dict["tarPath"]
    nextRoad = next_path_dict["nextRoad"]
    nextLane = next_path_dict["nextLane"]
    sequence_list = Road_dict["sequence_list"]  # road文件下读取列表
    curDis = 999999
    disLeft = 99999
    disRight = 9999
    # diffValue = -last Value
    diffCTE = -CTE
    diffdHead = -dHead
    # initialize the Path
    while len(tarPath) < 5 and len(sequence_list) > 0:
        color_print_lib.prRed('path too short and step to next!')
        next_path_dict = nextPath(nextRoad, nextLane, global_Map_dict, Road_dict)
        tarPath = next_path_dict["tarPath"]
        nextRoad = next_path_dict["nextRoad"]
        nextLane = next_path_dict["nextLane"]
        mark = 0
    curPos = base_class.Point(position_node.x, position_node.y, position_node.head)

    # insertion search
    curDis, dheading, mark = InsSrch(tarPath, curPos, mark)
    ptA = base_class.Point(tarPath[mark].x, tarPath[mark].y, tarPath[mark].head)
    # cheak if the Path is the nearest
    if curDis > 20:
        color_print_lib.prBlue('dis to closest point is {0}, dhead is {1}, step to next path'.format(curDis, dheading))
        next_path_dict = nextPath(nextRoad, nextLane, global_Map_dict, Road_dict)
        first_plan_dict = {'CTE': 0, 'diffCTE': 0, 'Dis': 0, 'dHead': 0, 'diffdHead': 0,'targetpath_head':0}
        dis_to_reference = 0
        mark = 0
        return {"first_plan_dict": first_plan_dict,
                "mark": mark,
                "next_path_dict": next_path_dict,
                "dis_to_reference": dis_to_reference}

    # find the scnd nearest point to curPos
    if mark - 2 > 0:
        ptB = base_class.Point(tarPath[mark - 2].x, tarPath[mark - 2].y, tarPath[mark - 2].head)
        disLeft = math.sqrt(math.pow(curPos.x - ptB.x, 2) + math.pow(curPos.y - ptB.y, 2))
    ptC = base_class.Point(tarPath[mark + 2].x, tarPath[mark + 2].y, tarPath[mark + 2].head)
    disRight = math.sqrt(math.pow(curPos.x - ptC.x, 2) + math.pow(curPos.y - ptC.y, 2))
    try:
        dHead = curPos.head - tarPath[mark + preview_number1].head  # forward distance   　　　
    except:
        dHead = curPos.head - tarPath[mark + preview_number2].head   # [8,8]  date 0110
    print("tarPath_head",tarPath[mark + preview_number1].head,'curPos.head',curPos.head)

    if disLeft < disRight:
        dx = ptA.x - ptB.x
        dy = ptA.y - ptB.y
        Rx = curPos.x - ptB.x
        Ry = curPos.y - ptB.y
    else:
        dx = ptC.x - ptA.x
        dy = ptC.y - ptA.y
        Rx = curPos.x - ptA.x
        Ry = curPos.y - ptA.y
    # convert dhead of range 360-0

    dHead = dHead + offset_dHead

    if dHead < -270:
        dHead = 360 + dHead
    if dHead > 270:
        dHead = dHead - 360
    dHead_filtered = Dhead_filter(dHead, dHead_filtered, ROAD_ID, ROAD_curve_list) # 弯道需要航向角滤波
    dHead = dHead_filtered

    CTE = (Ry * dx - Rx * dy) / ((dx ** 2 + dy ** 2) ** 0.5) - offset
    diffCTE = diffCTE + CTE
    diffdHead = diffdHead + dHead
    if diffCTE > 0.02:
        diffCTE = 0.02
    if diffCTE < -0.02:
        diffCTE = -0.02
    dis_to_reference = CTE + offset
    # pub error to control module
    print("tarPath_head", tarPath[mark + 8].head, 'curPos.head', curPos.head)
    first_plan_dict = {'CTE': CTE, 'diffCTE': diffCTE, 'Dis': curDis, 'dHead': dHead, 'diffdHead': diffdHead,'targetpath_head': tarPath[mark + preview_number1].head}
    if len(tarPath) - mark < 10:
        color_print_lib.prRed('no enough points, step to next path')
        next_path_dict = nextPath(nextRoad, nextLane, global_Map_dict, Road_dict)
        mark = 0
    next_path_dict = next_path_dict
    dict = {"first_plan_dict": first_plan_dict,
            "mark": mark,
            "next_path_dict": next_path_dict,
            "dis_to_reference": dis_to_reference}
    return dict

