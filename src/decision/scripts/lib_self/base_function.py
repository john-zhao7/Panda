"""
    Name: Hao Jinbo
    Date: 2023.3
    Function: 存储基本的功能函数
"""

import math
import sys
sys.path.append('lib')
#import base_class
import json
import time
import re
import matplotlib.pyplot as plt
# from color_print_lib import *

# """------------------     地图处理    ----------------------"""
# # 输入：地图文件
# # 输出：地图所有的点列表
# def readMap(mapfile):
#     Map = []
#     with open(mapfile) as m:
#         rows = m.readlines()
#         for i in range(1, len(rows)):
#             road = base_class.Road()
#             lane = base_class.Lane()
#             col = rows[i].split('\t')
#             road.id = int(col[0])
#             lane.id = int(col[1])
#             lane.left = int(col[2])
#             lane.right = int(col[3])
#             lane.spd = int(col[4])
#             for pos in col[5:]:
#                 seg = pos.split(',')
#                 if len(seg) > 2:
#                     lane.points.append(base_class.Point(float(seg[3]), float(seg[4]), float(seg[2])))
#             road.lane.append(lane)
#             Map.append(road)
#     return Map
#
# def readMap_dict(mapfile,ROAD_ID):
#     Map = []
#     with open(mapfile) as m:
#         rows = m.readlines()
#         for i in range(1, len(rows)):
#             road = base_class.Road()
#             lane = base_class.Lane()
#             col = rows[i].split('\t')
#             road.id = int(col[0])
#             lane.id = int(col[1])
#             lane.left = int(col[2])
#             lane.right = int(col[3])
#             lane.spd = int(col[4])
#             for pos in col[5:]:
#                 seg = pos.split(',')
#                 if len(seg) > 2:
#                     lane.points.append(base_class.Point(float(seg[3]), float(seg[4]), float(seg[2])))
#             road.lane.append(lane)
#             Map.append(road)
#     x_list = []
#     y_list = []
#     heading_list = []
#     global_point_list = []
#     if ROAD_ID == 0:
#         map_list = [0, 1]
#     elif ROAD_ID == len(Map) - 1:
#         map_list = [ROAD_ID - 1, ROAD_ID]
#     else:
#         map_list = [ROAD_ID - 1, ROAD_ID, ROAD_ID + 1]
#     for j in map_list:
#         for i in range(len(Map[j].lane[0].points)):
#             global_point_list.append(Map[j].lane[0].points[i])
#             x_list.append(Map[j].lane[0].points[i].x)
#             y_list.append(Map[j].lane[0].points[i].y)
#             theta = Map[j].lane[0].points[i].head
#             theta = theta - 90
#             if theta < -180:
#                 theta = theta + 360
#             if theta > 180:
#                 theta = theta - 360
#             theta = - theta * math.pi / 180
#             heading_list.append(theta)
#     Map_dict = {"global_point_list": global_point_list,
#                 "X_list": x_list,
#                 "Y_list": y_list,
#                 "heading_list": heading_list}
#
#     return Map_dict
#
# # 获取地图信息
# def to_get_map_roi(global_mark, global_Map_dict):
#
#     if global_mark <= 100:
#         start_mark = 0
#     else:
#         start_mark = global_mark - 100
#     if global_mark >= len(global_Map_dict["global_point_list"]) - 300:
#         end_mark = len(global_Map_dict["global_point_list"])
#     else:
#         end_mark = global_mark + 300
#     map_roi_global_point_list = global_Map_dict["global_point_list"][start_mark:end_mark + 1]
#     map_roi_x_list = global_Map_dict["X_list"][start_mark:end_mark + 1]
#     map_roi_y_list = global_Map_dict["Y_list"][start_mark:end_mark + 1]
#     map_roi_heading_list = global_Map_dict["heading_list"][start_mark:end_mark + 1]
#     map_roi_dict = {"map_roi_x_list": map_roi_x_list,
#                     "map_roi_y_list": map_roi_y_list,
#                     "map_roi_heading_list": map_roi_heading_list,
#                     "map_roi_global_point_list": map_roi_global_point_list}
#
#     return map_roi_dict
#
# # 输入：road文件
# # 输出：Road_dict,其中sequence_list是储存road文件数据的列表
# def readRoad(roadfile):
#     sequence_list = []
#     with open(roadfile) as r:
#         rows = r.readlines()   # eg. 有15行即有15个ROADID
#         for i in range(1, len(rows)):
#             col = rows[i].split('\t')
#             sequence_list.append([int(col[0]), int(col[1])])
#     Road_dict = {"sequence_list": sequence_list}
#     return Road_dict
#
# # 输入：地图文件
# # 输出：MAP信息字典，包含路段ID和地图点
# def read_Map_for_planning(mapfile):
#     Map = []
#     road_points_num_list = []
#     with open(mapfile) as m:
#         rows = m.readlines()
#         for i in range(1, len(rows)):
#             road = base_class.Road()
#             lane = base_class.Lane()
#             col = rows[i].split('\t')
#             road.id = int(col[0])
#             lane.id = int(col[1])
#             lane.left = int(col[2])
#             lane.right = int(col[3])
#             lane.spd = int(col[4])
#
#             for pos in col[5:]:
#                 seg = pos.split(',')
#                 if len(seg) > 2:
#                     lane.points.append(base_class.Point(float(seg[3]), float(seg[4]), float(seg[2])))
#
#             road.lane.append(lane)
#             Map.append(road)
#     x_list = []
#     y_list = []
#     heading_list = []
#     global_point_list = []
#     for j in range(len(Map)):
#         for i in range(len(Map[j].lane[0].points)):
#             global_point_list.append(Map[j].lane[0].points[i])   #所有points都放到该列表下
#             x_list.append(Map[j].lane[0].points[i].x)
#             y_list.append(Map[j].lane[0].points[i].y)
#             theta = Map[j].lane[0].points[i].head
#             theta = theta * math.pi / 180  #转化成弧度制
#             heading_list.append(theta)
#         road_points_num_list.append(len(Map[j].lane[0].points))  #把不同ID下的所有点都放到该列表下
#     global_Map_dict = {"global_point_list": global_point_list,  #所有points都放到该列表下
#                        "X_list": x_list,  # UTM_x列表
#                        "Y_list": y_list,  # UTM_y列表
#                        "heading_list": heading_list,  # 航向角列表（弧度制）
#                        "Map_list": Map,  # 包括所有ID及其points
#                        "road_points_num_list": road_points_num_list} # 不同ID下的所有点都放到该列表下，长度为ID数
#     return global_Map_dict
#
# 输入：全局坐标点（x,y,heading）类的列表
# 输出：全局坐标点（x,y,heading）列表索引 对应的 s-l坐标系下的 s的值的列表
def FromGlobalPointsList_to_index2s(ROI_Map_dict):
    index2s = []
    s_cur = 0
    index2s.append(s_cur)
    if len(ROI_Map_dict["X_list"]) != 0:
        for i in range(len(ROI_Map_dict["X_list"]) - 1):
            s_cur += math.sqrt((ROI_Map_dict["X_list"][i + 1]- ROI_Map_dict["X_list"][i]) ** 2 + \
                               (ROI_Map_dict["Y_list"][i + 1] - ROI_Map_dict["Y_list"][i]) ** 2)
            index2s.append(s_cur)
    else:
        pass
    return index2s



"""------------------     坐标系转化    ----------------------"""
# 输入经纬度，输出UTM坐标系
# 进行UTM坐标系转化
def from_latlon(latitude, longitude, force_zone_number=None):
    """This function convert Latitude and Longitude to UTM coordinate

        Parameters
        ----------
        latitude: float
            Latitude between 80 deg S and 84 deg N, e.g. (-80.0 to 84.0)

        longitude: float
            Longitude between 180 deg W and 180 deg E, e.g. (-180.0 to 180.0).

        force_zone number: int
            Zone Number is represented with global map numbers of an UTM Zone
            Numbers Map. You may force conversion including one UTM Zone Number.
            More information see UTMzones [1]_

       .. _[1]: http://www.jaworski.ca/UTMzones.htm
    """
    #__all__ = ['to_latlon', 'from_latlon']

    K0 = 0.9996

    E = 0.00669438
    E2 = E * E
    E3 = E2 * E
    E_P2 = E / (1.0 - E)

    SQRT_E = math.sqrt(1 - E)
    _E = (1 - SQRT_E) / (1 + SQRT_E)
    _E2 = _E * _E
    _E3 = _E2 * _E
    _E4 = _E3 * _E
    _E5 = _E4 * _E

    M1 = (1 - E / 4 - 3 * E2 / 64 - 5 * E3 / 256)
    M2 = (3 * E / 8 + 3 * E2 / 32 + 45 * E3 / 1024)
    M3 = (15 * E2 / 256 + 45 * E3 / 1024)
    M4 = (35 * E3 / 3072)

    P2 = (3. / 2 * _E - 27. / 32 * _E3 + 269. / 512 * _E5)
    P3 = (21. / 16 * _E2 - 55. / 32 * _E4)
    P4 = (151. / 96 * _E3 - 417. / 128 * _E5)
    P5 = (1097. / 512 * _E4)

    R = 6378137

    ZONE_LETTERS = "CDEFGHJKLMNPQRSTUVWXX"

    if not -80.0 <= latitude <= 84.0:
        raise OutOfRangeError('latitude out of range (must be between 80 deg S and 84 deg N)')
    if not -180.0 <= longitude <= 180.0:
        raise OutOfRangeError('longitude out of range (must be between 180 deg W and 180 deg E)')

    lat_rad = math.radians(latitude)
    lat_sin = math.sin(lat_rad)
    lat_cos = math.cos(lat_rad)

    lat_tan = lat_sin / lat_cos
    lat_tan2 = lat_tan * lat_tan
    lat_tan4 = lat_tan2 * lat_tan2

    if force_zone_number is None:
        zone_number = latlon_to_zone_number(latitude, longitude)
    else:
        zone_number = force_zone_number

    zone_letter = latitude_to_zone_letter(latitude)

    lon_rad = math.radians(longitude)
    central_lon = zone_number_to_central_longitude(zone_number)
    central_lon_rad = math.radians(central_lon)

    n = R / math.sqrt(1 - E * lat_sin ** 2)
    c = E_P2 * lat_cos ** 2

    a = lat_cos * (lon_rad - central_lon_rad)
    a2 = a * a
    a3 = a2 * a
    a4 = a3 * a
    a5 = a4 * a
    a6 = a5 * a

    m = R * (M1 * lat_rad -
             M2 * math.sin(2 * lat_rad) +
             M3 * math.sin(4 * lat_rad) -
             M4 * math.sin(6 * lat_rad))

    easting = K0 * n * (a +
                        a3 / 6 * (1 - lat_tan2 + c) +
                        a5 / 120 * (5 - 18 * lat_tan2 + lat_tan4 + 72 * c - 58 * E_P2)) + 500000

    northing = K0 * (m + n * lat_tan * (a2 / 2 +
                                        a4 / 24 * (5 - lat_tan2 + 9 * c + 4 * c ** 2) +
                                        a6 / 720 * (61 - 58 * lat_tan2 + lat_tan4 + 600 * c - 330 * E_P2)))

    if latitude < 0:
        northing += 10000000

    return easting, northing, zone_number, zone_letter

def latitude_to_zone_letter(latitude):
    ZONE_LETTERS = "CDEFGHJKLMNPQRSTUVWXX"
    if -80 <= latitude <= 84:
        return ZONE_LETTERS[int(latitude + 80) >> 3]
    else:
        return None


def latlon_to_zone_number(latitude, longitude):
    if 56 <= latitude < 64 and 3 <= longitude < 12:
        return 32

    if 72 <= latitude <= 84 and longitude >= 0:
        if longitude <= 9:
            return 31
        elif longitude <= 21:
            return 33
        elif longitude <= 33:
            return 35
        elif longitude <= 42:
            return 37

    return int((longitude + 180) / 6) + 1


def zone_number_to_central_longitude(zone_number):
    return (zone_number - 1) * 6 - 180 + 3

class OutOfRangeError(ValueError):
    pass

ZONE_LETTERS = "CDEFGHJKLMNPQRSTUVWXX"

# 将UTM坐标系转化成经纬度坐标系
def to_latlon(easting, northing, ego_latitude, ego_longitude, northern=None, strict=True):
    """This function convert an UTM coordinate into Latitude and Longitude

        Parameters
        ----------
        easting: int
            Easting value of UTM coordinate

        northing: int
            Northing value of UTM coordinate

        zone number: int
            Zone Number is represented with global map numbers of an UTM Zone
            Numbers Map. More information see UTMzones [1]_

        zone_letter: str
            Zone Letter can be represented as string values. Where UTM Zone
            Designators can be accessed in [1]_

        northern: bool
            You can set True or False to set this parameter. Default is None


       .. _[1]: http://www.jaworski.ca/UTMzones.htm

    """

    K0 = 0.9996

    E = 0.00669438
    E2 = E * E
    E3 = E2 * E
    E_P2 = E / (1.0 - E)

    SQRT_E = math.sqrt(1 - E)
    _E = (1 - SQRT_E) / (1 + SQRT_E)
    _E2 = _E * _E
    _E3 = _E2 * _E
    _E4 = _E3 * _E
    _E5 = _E4 * _E

    M1 = (1 - E / 4 - 3 * E2 / 64 - 5 * E3 / 256)
    M2 = (3 * E / 8 + 3 * E2 / 32 + 45 * E3 / 1024)
    M3 = (15 * E2 / 256 + 45 * E3 / 1024)
    M4 = (35 * E3 / 3072)

    P2 = (3. / 2 * _E - 27. / 32 * _E3 + 269. / 512 * _E5)
    P3 = (21. / 16 * _E2 - 55. / 32 * _E4)
    P4 = (151. / 96 * _E3 - 417. / 128 * _E5)
    P5 = (1097. / 512 * _E4)

    R = 6378137

    ZONE_LETTERS = "CDEFGHJKLMNPQRSTUVWXX"
    zone_number = latlon_to_zone_number(ego_latitude, ego_longitude)

    zone_letter = latitude_to_zone_letter(ego_latitude)

    # if not zone_letter and northern is None:
    #     raise ValueError('either zone_letter or northern needs to be set')
    #
    # elif zone_letter and northern is not None:
    #     raise ValueError('set either zone_letter or northern, but not both')

    if strict:
        if not 100000 <= easting < 1000000:
            raise OutOfRangeError('easting out of range (must be between 100.000 m and 999.999 m)')
        if not 0 <= northing <= 10000000:
            raise OutOfRangeError('northing out of range (must be between 0 m and 10.000.000 m)')
    if not 1 <= zone_number <= 60:
        raise OutOfRangeError('zone number out of range (must be between 1 and 60)')

    if zone_letter:
        zone_letter = zone_letter.upper()

        if not 'C' <= zone_letter <= 'X' or zone_letter in ['I', 'O']:
            raise OutOfRangeError('zone letter out of range (must be between C and X)')

        northern = (zone_letter >= 'N')

    x = easting - 500000
    y = northing

    if not northern:
        y -= 10000000

    m = y / K0
    mu = m / (R * M1)

    p_rad = (mu +
             P2 * math.sin(2 * mu) +
             P3 * math.sin(4 * mu) +
             P4 * math.sin(6 * mu) +
             P5 * math.sin(8 * mu))

    p_sin = math.sin(p_rad)
    p_sin2 = p_sin * p_sin

    p_cos = math.cos(p_rad)

    p_tan = p_sin / p_cos
    p_tan2 = p_tan * p_tan
    p_tan4 = p_tan2 * p_tan2

    ep_sin = 1 - E * p_sin2
    ep_sin_sqrt = math.sqrt(1 - E * p_sin2)

    n = R / ep_sin_sqrt
    r = (1 - E) / ep_sin

    c = _E * p_cos ** 2
    c2 = c * c

    d = x / (n * K0)
    d2 = d * d
    d3 = d2 * d
    d4 = d3 * d
    d5 = d4 * d
    d6 = d5 * d

    latitude = (p_rad - (p_tan / r) *
                (d2 / 2 -
                 d4 / 24 * (5 + 3 * p_tan2 + 10 * c - 4 * c2 - 9 * E_P2)) +
                d6 / 720 * (61 + 90 * p_tan2 + 298 * c + 45 * p_tan4 - 252 * E_P2 - 3 * c2))

    longitude = (d -
                 d3 / 6 * (1 + 2 * p_tan2 + c) +
                 d5 / 120 * (5 - 2 * c + 28 * p_tan2 - 3 * c2 + 8 * E_P2 + 24 * p_tan4)) / p_cos
    print(zone_number, zone_letter)
    return (math.degrees(latitude),
            math.degrees(longitude) + zone_number_to_central_longitude(zone_number))

x_pi = 3.14159265358979324 * 3000.0 / 180.0
pi = 3.1415926535897932384626  # π
a = 6378245.0  # 长半轴
ee = 0.00669342162296594323  # 扁率


class XYexchangeBL:

    def get_WGS84_af(self):
        '''
         * WGS84
         * 长半轴a=6378137± 2（m）
         * 短半轴b=6356752.3142m
         * 扁率α=1/298.257223563
         * 第一偏心率平方 =0.00669437999013
         * 第二偏心率平方 =0.00673949674223
        '''

        a = 6378137.0
        f = 1 / 298.257223563
        return a, f

        '''###################
        #函数:Process_Degree(self,dD)
        #输入值 十进制的经纬度(DEG) 
        #输出 度分秒的经纬度(DMS)
        ###################'''

    def XY2LatLon(self, ellipsoid, X, Y, Longitude):
        X = X / 0.9996  # 仅针对UTM投影
        Y = Y / 0.9996  # 针对UTM投影
        N = int(Longitude / 6)
        L0 = 6 * (N + 1) - 3
        # 椭圆参数控制
        if (ellipsoid == 50):
            a, f = self.get_WGS84_af()

        iPI = 0.0174532925199433333333  # 圆周率/180
        ProjNo = int(X / 1000000)
        L0 = L0 * iPI

        X0 = ProjNo * 1000000 + 500000  # 东偏500000为后续步骤减去做铺垫
        Y0 = 0
        xval = X - X0
        yval = Y - Y0

        # e2=2*f-f*f#第一偏心率平方
        # e1=(1.0-math.sqrt(1-e2))/(1.0+math.sqrt(1-e2))
        # ee=e2/(1-e2)#第二偏心率平方
        e2 = 0.00669437999013
        e1 = (1.0 - math.sqrt(1 - e2)) / (1.0 + math.sqrt(1 - e2))
        ee = 0.00673949674223

        M = yval
        u = M / (a * (1 - e2 / 4 - 3 * e2 * e2 / 64 - 5 * e2 * e2 * e2 / 256))

        # "\"表示转公式下一行结合在一起
        fai = u + (3 * e1 / 2 - 27 * e1 * e1 * e1 / 32) * math.sin(2 * u) + (
                    21 * e1 * e1 / 16 - 55 * e1 * e1 * e1 * e1 / 32) * math.sin(4 * u) + (
                          151 * e1 * e1 * e1 / 96) * math.sin(6 * u) + (1097 * e1 * e1 * e1 * e1 / 512) * math.sin(
            8 * u)
        C = ee * math.cos(fai) * math.cos(fai)
        T = math.tan(fai) * math.tan(fai)
        NN = a / math.sqrt(1.0 - e2 * math.sin(fai) * math.sin(fai))
        R = a * (1 - e2) / math.sqrt(
            (1 - e2 * math.sin(fai) * math.sin(fai)) * (1 - e2 * math.sin(fai) * math.sin(fai)) * (
                        1 - e2 * math.sin(fai) * math.sin(fai)))
        D = xval / NN
        # 计算经纬度（弧度单位的经纬度）
        longitude1 = L0 + (D - (1 + 2 * T + C) * D * D * D / 6 + (
                    5 - 2 * C + 28 * T - 3 * C * C + 8 * ee + 24 * T * T) * D * D * D * D * D / 120) / math.cos(fai)
        latitude1 = fai - (NN * math.tan(fai) / R) * (
                    D * D / 2 - (5 + 3 * T + 10 * C - 4 * C * C - 9 * ee) * D * D * D * D / 24 + (
                        61 + 90 * T + 298 * C + 45 * T * T - 256 * ee - 3 * C * C) * D * D * D * D * D * D / 720)

        longitude = longitude1 / iPI
        latitude = latitude1 / iPI
        # return latitude,longitude
        return [latitude, longitude]

"""------------------     感兴趣区域划分    ----------------------"""
# 输入：地图信息，
# 进行frenet坐标系转换(前视障碍物分类)
def npc_trans_frenet(Map_dict, index2s, ego_content, obj_list_front):
    sl_message_list = []
    obj_list = obj_list_front
    for i in range(len(obj_list)):
        dis_to_ego = math.sqrt(math.pow(obj_list[i]['d_x'], 2) + math.pow(obj_list[i]['d_y'] + 1.1, 2))
        theta_to_ego = math.atan2(obj_list[i]['d_x'], obj_list[i]['d_y'] + 1.1) * 180 / math.pi  # deg
        obj_list[i]['obj_x'] = ego_content["UTM_x"] + dis_to_ego * \
                               math.cos((ego_content["theta"] + theta_to_ego) * math.pi / 180)
        obj_list[i]['obj_y'] = ego_content["UTM_y"] + dis_to_ego * \
                               math.sin((ego_content['theta'] + theta_to_ego) * math.pi / 180)

        index_obj = to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"],
                                                      Map_dict["heading_list"], obj_list[i]['obj_x'],
                                                      obj_list[i]['obj_y'])[5]
        index_ego = to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"],
                                                      Map_dict["heading_list"], ego_content["UTM_x"],
                                                      ego_content["UTM_y"])[5]
        if len(index2s) > 0:
            obj_list[i]['s'] = index2s[index_obj] - index2s[index_ego] - 2.0
            obj_list[i]['l'] = to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"],
                                                                 Map_dict["heading_list"], obj_list[i]['obj_x'],
                                                                 obj_list[i]['obj_y'])[3]
            print("obj",i, ", s:", obj_list[i]['s'], ", l:", obj_list[i]['l'])
        else:
            obj_list[i]['s'] = 100
            obj_list[i]['l'] = 0
        obj_list[i]['ego_x'] = ego_content["UTM_x"]
        obj_list[i]['ego_y'] = ego_content["UTM_y"]
        sl_message_list.append(obj_list[i])

    # sl_message_pub.publish(json.dumps(sl_message_list))  todo
    return obj_list

# 划分感兴趣区域前，左，右，左左，右右，返回各方为最近的车辆
# s为车头方向，l为侧向
def ROI_sl_simple_line():  # todo 命名待修正
    global front_camera_dict
    global round_camera_dict
    global dis_to_reference

    try:
        round_camera_obj_list = round_camera_dict['objects']
    except:
        round_camera_obj_list = []

    front_obj_list = []
    left_side_obj_list = []
    right_side_obj_list = []
    left_left_side_obj_list = []
    right_right_side_obj_list = []

    front_dis = 100  # m
    left_side_dis = 100
    right_side_dis = 100
    left_left_side_dis = 100
    right_right_side_dis = 100

    obj_list = npc_trans_frenet()


    for i in range(len(obj_list)):
        #TODO
        # lattice_lib.prRed("obj_id:" + str(i) + ";  s:" + str(obj_list[i]['s']) + ";  l:" + str(obj_list[i]['l']))
        if 0 < obj_list[i]['s'] < 100:
            # lattice_lib.prRed("obj_id:" + str(i) + ";  s:" + str(obj_list[i]['s']) + ";  l:" + str(obj_list[i]['l']))
            if (obj_list[i]["l"] - dis_to_reference < 1.2) & (obj_list[i]["l"] - dis_to_reference > -1.5):  # 1.1
                front_obj_list.append(obj_list[i])  # 2.0    1.2       - 1.5   -2.7    #
            if (obj_list[i]["l"] - dis_to_reference < 2.8) & (obj_list[i]["l"] - dis_to_reference >= 1.2):
                left_side_obj_list.append(obj_list[i])  #
            if (obj_list[i]["l"] - dis_to_reference < 5.5) & (obj_list[i]["l"] - dis_to_reference >= 2.0):
                left_left_side_obj_list.append(obj_list[i])
            if (obj_list[i]["l"] - dis_to_reference <= -1.5) & (obj_list[i]["l"] - dis_to_reference > -2.8):
                right_side_obj_list.append(obj_list[i])
            if (obj_list[i]["l"] - dis_to_reference <= -2) & (obj_list[i]["l"] - dis_to_reference > -4.2):
                right_right_side_obj_list.append(obj_list[i])

    if len(front_obj_list) > 0:
        for j in range(len(front_obj_list)):
            if front_obj_list[j]["s"] < front_dis:
                front_dis = front_obj_list[j]["s"]
                front_veh = front_obj_list[j]   # 获取最近前车信息
    else:
        front_veh = {"v_x": 0, "v_y": 0, "s": 100, "l": 100}

    if len(left_side_obj_list) > 0:
        for j in range(len(left_side_obj_list)):
            if left_side_obj_list[j]["s"] < left_side_dis:
                left_side_dis = left_side_obj_list[j]["s"]
                left_side_veh = left_side_obj_list[j]  #获取最近左侧车信息
    else:
        left_side_veh = {"v_x": 0, "v_y": 0, "s": 100, "l": 100}

    if len(right_side_obj_list) > 0:
        for j in range(len(right_side_obj_list)):
            if right_side_obj_list[j]["s"] < right_side_dis:
                right_side_dis = right_side_obj_list[j]["s"]
                right_side_veh = right_side_obj_list[j]  #获取最近右侧车信息
    else:
        right_side_veh = {"v_x": 0, "v_y": 0, "s": 100, "l": -100}

    if len(left_left_side_obj_list) > 0:
        for j in range(len(left_left_side_obj_list)):
            if left_left_side_obj_list[j]["s"] < left_left_side_dis:
                left_left_side_dis = left_left_side_obj_list[j]["s"]
                left_left_side_veh = left_left_side_obj_list[j] # 获取左左侧车辆的信息
    else:
        left_left_side_veh = {"v_x": 0, "v_y": 0, "s": 100, "l": 100}

    if len(right_right_side_obj_list) > 0:
        for j in range(len(right_right_side_obj_list)):
            if right_right_side_obj_list[j]["s"] < right_right_side_dis:
                right_right_side_dis = right_right_side_obj_list[j]["s"]
                right_right_side_veh = right_right_side_obj_list[j] # 获取右右侧车辆的信息
    else:
        right_right_side_veh = {"v_x": 0, "v_y": 0, "s": 100, "l": -100}

    side_safe_flag_list = [1, 1]
    # side_safe_flag_list表示旁车道是否安全，第一位表示左边，第二位表示右边，0表示不安全，1表示安全
    if len(round_camera_obj_list) != 0:
        for i in range(len(round_camera_obj_list)):
            if -5 < round_camera_obj_list[i]['d_y'] < 15:
                if -4 < round_camera_obj_list[i]['d_x'] < 0:
                    side_safe_flag_list[1] = 0
                else:
                    side_safe_flag_list[1] = 1

                if 0 < round_camera_obj_list[i]['d_x'] < 4:
                    side_safe_flag_list[0] = 0
                else:
                    side_safe_flag_list[0] = 1
            else:
                side_safe_flag_list[0] = 1
                side_safe_flag_list[1] = 1

    return front_veh, left_side_veh, right_side_veh, left_left_side_veh, right_right_side_veh, side_safe_flag_list

# 划分感兴趣区域前，左，右   # todo 前和右分开
def ROI_sl_double_line():
    global dis_to_reference

    left_side_obj_list = []
    right_side_obj_list = []
    left_side_dis = 100
    right_side_dis = 100
    front_dis = 100
    obj_list = npc_trans_frenet()

    for i in range(len(obj_list)):
        print("obj", i, obj_list[i]['s'], obj_list[i]["l"])
        if 0 < obj_list[i]['s'] < 100:
            if (obj_list[i]["l"] < 1.6) & (obj_list[i]["l"] >= -1.2):
                right_side_obj_list.append(obj_list[i])
            if (obj_list[i]["l"] < 4.5) & (obj_list[i]["l"] >= 1.6):
                left_side_obj_list.append(obj_list[i])

    if content["offset"] > 0.5:
        front_obj_list = left_side_obj_list
    else:
        front_obj_list = right_side_obj_list

    if len(front_obj_list) > 0:
        for j in range(len(front_obj_list)):
            if front_obj_list[j]["s"] < front_dis:
                front_dis = front_obj_list[j]["s"]
                front_veh = front_obj_list[j]
        print("front_veh", front_veh)
    else:
        front_veh = {"v_x": 0, "v_y": 0, "s": 100, "l": 100, "npc_speed": 0}

    if len(left_side_obj_list) > 0:
        for j in range(len(left_side_obj_list)):
            if left_side_obj_list[j]["s"] < left_side_dis:
                left_side_dis = left_side_obj_list[j]["s"]
                left_side_veh = left_side_obj_list[j]
    else:
        left_side_veh = {"v_x": 0, "v_y": 0, "s": 100, "l": 100, "npc_speed": 0}

    if len(right_side_obj_list) > 0:
        for j in range(len(right_side_obj_list)):
            if right_side_obj_list[j]["s"] < right_side_dis:
                right_side_dis = right_side_obj_list[j]["s"]
                right_side_veh = right_side_obj_list[j]
    else:
        right_side_veh = {"v_x": 0, "v_y": 0, "s": 100, "l": -100 ,"npc_speed": 0}

    side_safe_flag_list = [1, 1]   # 0号位表示左车道，1号位表示右车道   1表示安全
    if len(obj_list) != 0:
        for i in range(len(obj_list)):
            if -15 < obj_list[i]['s'] < 0:
                if -3.5 < obj_list[i]['l'] < 0:
                    side_safe_flag_list[1] = 0
                else:
                    side_safe_flag_list[1] = 1

                if 0 < obj_list[i]['l'] < 3.5:
                    side_safe_flag_list[0] = 0
                else:
                    side_safe_flag_list[0] = 1
            else:
                side_safe_flag_list[0] = 1
                side_safe_flag_list[1] = 1

    return front_veh, left_side_veh, right_side_veh, side_safe_flag_list




"""------------------     回调函数    ----------------------"""
# 获取本车信息
def call_back_ego_vehicle_data(msg):
    global ego_content
    try:
        ego_content = json.loads(msg.data)
    except:
        print('ego data error')
        ego_content = ego_content

#获取前视相机信息
def call_back_front_camera_data(msg):
    global front_camera_dict
    global traffic_light_state
    global traffic_light_state_filter
    global obj_list_front
    front_camera_dict = json.loads(msg.data)
    try:
        obj_list_front = front_camera_dict['objects']
    except:
        obj_list_front = []
    for i in range(len(obj_list_front)):
        obj_list_front[i]['d_x'] = obj_list_front[i]['d_x'] + 0
        obj_list_front[i]['d_y'] = obj_list_front[i]['d_y'] + 1   #补偿相机到定位中心的距离

# 获取周视相机信息
def call_back_round_camera_data(msg):  # todo 周视在换道过程中要发挥重要作用
    global round_camera_dict
    round_camera_dict = json.loads(msg.data)

# 获取雷达信息
def callback_lidar_data(msg):
    global obj_lidar_list_select
    global ego_content
    try:
        obj_lidar_list = json.loads(msg.data)['objects']
    except:
        obj_lidar_list = []
    obj_lidar_list_select = []
    for i in range(len(obj_lidar_list)):
        if obj_lidar_list[i]["type"] in [2, 3, 4, 5, 6]:
            obj_lidar_list[i]['dis_y'] = obj_lidar_list[i]['dis_y'] + 0.7
            obj_lidar_list[i]['dis_x'] = obj_lidar_list[i]['dis_x'] + 0
            dis_to_ego = math.sqrt(
                math.pow(obj_lidar_list[i]['dis_x'], 2) + math.pow(obj_lidar_list[i]['dis_y'], 2))
            theta_to_ego = math.atan2(obj_lidar_list[i]['dis_x'],
                                      obj_lidar_list[i]['dis_y']) * 180 / math.pi  # deg
            obj_lidar_list[i]['obj_x'] = ego_content["UTM_x"] + dis_to_ego * \
                                         math.cos((ego_content["theta"] + theta_to_ego) * math.pi / 180)
            obj_lidar_list[i]['obj_y'] = ego_content["UTM_y"] + dis_to_ego * \
                                         math.sin((ego_content['theta'] + theta_to_ego) * math.pi / 180)
            obj_lidar_list[i]['real_speed_x'] = ego_content["ego_speed_x"] + obj_lidar_list[i]['vel_x']
            obj_lidar_list[i]['real_speed_y'] = ego_content["ego_speed_y"] + obj_lidar_list[i]['vel_y']
            obj_lidar_list[i]['real_speed'] = math.sqrt(math.pow(obj_lidar_list[i]['real_speed_x'], 2)
                                                        + math.pow(obj_lidar_list[i]['real_speed_y'], 2))
            obj_lidar_list_select.append(obj_lidar_list[i])



"""------------------     功能算法    ----------------------"""
# 二分匹配点法  时间复杂度O(log(n))
# input  一系列路径点的（x,y,heading,kappa）以及障碍物点 x,y
# output match_point_x,match_point_y,nearest_distance_lateral  给出 障碍物距离我轨迹的最近距离以及匹配点的坐标
def to_find_nearest_point(x_list, y_list, heading_list, obs_x, obs_y):
    if len(x_list) > 0:
        left_index = 0
        right_index = len(x_list) - 1
        while (abs(right_index - left_index) > 1):
            left_distance = math.sqrt((x_list[left_index] - obs_x) ** 2 + (y_list[left_index] - obs_y) ** 2)
            right_diatance = math.sqrt((x_list[right_index] - obs_x) ** 2 + (y_list[right_index] - obs_y) ** 2)
            if (right_diatance <= left_distance):
                left_index = int((left_index + right_index) / 2)
            else:
                right_index = int((left_index + right_index) / 2)
        left_distance = math.sqrt((x_list[left_index] - obs_x) ** 2 + (y_list[left_index] - obs_y) ** 2)
        right_diatance = math.sqrt((x_list[right_index] - obs_x) ** 2 + (y_list[right_index] - obs_y) ** 2)
        nearest_dis = (left_distance + right_diatance) / 2
        if (left_distance <= right_diatance):
            match_index = left_index
        else:
            match_index = right_index

        match_point_x = x_list[match_index]
        match_point_y = y_list[match_index]   # 距离障碍物最近的轨迹点

        match_point_heading = heading_list[match_index]
        if (match_index == 0):
            vector_1 = [(obs_x - x_list[match_index]), (obs_y - y_list[match_index])]
            vector_2 = [(obs_x - x_list[match_index + 1]), (obs_y - y_list[match_index + 1])]
            nearest_distance_lateral = (vector_1[0] * vector_2[1] - vector_1[1] * vector_2[0]) / \
                                       (math.sqrt((x_list[match_index] - x_list[match_index + 1]) ** 2 + (
                                               y_list[match_index] - y_list[match_index + 1]) ** 2))
        elif (match_index == (len(x_list) - 1)):
            vector_1 = [(obs_x - x_list[match_index]), (obs_y - y_list[match_index])]
            vector_2 = [(obs_x - x_list[match_index - 1]), (obs_y - y_list[match_index - 1])]
            nearest_distance_lateral = -(vector_1[0] * vector_2[1] - vector_1[1] * vector_2[0]) / \
                                       (math.sqrt((x_list[match_index] - x_list[match_index - 1]) ** 2 + (
                                               y_list[match_index] - y_list[match_index - 1]) ** 2))
        else:
            dis_match_point_left = math.sqrt(
                (x_list[match_index - 1] - obs_x) ** 2 + (y_list[match_index - 1] - obs_y) ** 2)

            dis_match_point_right = math.sqrt(
                (x_list[match_index + 1] - obs_x) ** 2 + (y_list[match_index + 1] - obs_y) ** 2)

            if (dis_match_point_left <= dis_match_point_right):
                vector_1 = [(obs_x - x_list[match_index]), (obs_y - y_list[match_index])]
                vector_2 = [(obs_x - x_list[match_index - 1]), (obs_y - y_list[match_index - 1])]
                nearest_distance_lateral = -(vector_1[0] * vector_2[1] - vector_1[1] * vector_2[0]) / \
                                           (math.sqrt((x_list[match_index] - x_list[match_index - 1]) ** 2 + (
                                                   y_list[match_index] - y_list[match_index - 1]) ** 2))
            else:
                vector_1 = [(obs_x - x_list[match_index]), (obs_y - y_list[match_index])]
                vector_2 = [(obs_x - x_list[match_index + 1]), (obs_y - y_list[match_index + 1])]
                nearest_distance_lateral = (vector_1[0] * vector_2[1] - vector_1[1] * vector_2[0]) / \
                                           (math.sqrt((x_list[match_index] - x_list[match_index + 1]) ** 2 + (
                                                   y_list[match_index] - y_list[match_index + 1]) ** 2))
    else:
        match_point_x = 0
        match_point_y = 0
        match_point_heading = 0
        nearest_distance_lateral = 0
        nearest_dis = 0
        match_index = 0
    # print("match_index", match_index,"nearest_dis", nearest_dis)
    return match_point_x, match_point_y, match_point_heading, nearest_distance_lateral, nearest_dis, match_index

"""------------------     附属功能    ----------------------"""
##功能：将两个点构成一条直线，给出直线的参数列表
# 输入：point1_lat, point1_lon, point2_lat, point2_lon 两个点的经纬度
# 输出：直线的参数[A,B,C] Ax+By+c=0
def get_a_line_from_two_points(point1_lat, point1_lon, point2_lat, point2_lon, string_point_type):
    string_point_type = str(string_point_type)
    if string_point_type == 'xy':
        point1_x = point1_lat
        point1_y = point1_lon
        point2_x = point2_lat
        point2_y = point2_lon
        line_A = point1_y - point2_y
        line_B = point2_x - point1_x
        line_C = point1_x * point2_y - point1_y * point2_x
        line_pra_list = [line_A, line_B, line_C]
    elif string_point_type == 'latlon':
        point1_x_y = from_latlon(point1_lat, point1_lon)
        point1_x = point1_x_y[0]
        point1_y = point1_x_y[1]
        point2_x_y = from_latlon(point2_lat, point2_lon)
        point2_x = point2_x_y[0]
        point2_y = point2_x_y[1]
        line_A = point1_y - point2_y
        line_B = point2_x - point1_x
        line_C = point1_x * point2_y - point1_y * point2_x
        line_pra_list = [line_A, line_B, line_C]
    return line_pra_list


##功能：判断点到直线的距离，和点在直线的左右
#输入：直线参数，点的xy
#输出：带有符号的距离。
def judge_dis_and_sign_to_line(line_pra_list, jduge_point_x, jduge_point_y):
    point_x = jduge_point_x
    point_y = jduge_point_y
    A = line_pra_list[0]
    B = line_pra_list[1]
    C = line_pra_list[2]
    dis_v2x_accident = (A * point_x + B * point_y + C) / math.sqrt(
        A * A + B * B)
    return dis_v2x_accident

#灯控
def light_control_new(Ros_topic_name):   # todo 灯控要稳定
    global content
    global from_left_to_mid
    global from_right_to_mid
    global one_light_flag
    global is_exit
    i1 = 0
    i2 = 0
    i3 = 0
    i4 = 0
    j = 0
    content_old = content
    while not is_exit:

        flag_turn_light = content["offset"] - content_old["offset"]
        if (one_light_flag == 1):
            if (flag_turn_light > 0.2 or (0 < i1 <= 5.3)):
                i1 = i1 + 0.2

                if i1 <= 5:

                    Ros_topic_name.publish(1)
                else:
                    i1 = 0
                    Ros_topic_name.publish(0)



            elif (flag_turn_light < -0.2 or (0 < i2 <= 5.3)):
                i2 = i2 + 0.2
                if i2 <= 5:
                    Ros_topic_name.publish(2)

                else:
                    i2 = 0
                    Ros_topic_name.publish(0)

            elif (from_right_to_mid == 1) and (flag_turn_light < 0.2 or (0 < i3 <= 5.3)):
                i3 = i3 + 0.2
                if i3 <= 5:
                    Ros_topic_name.publish(1)

                else:
                    i3 = 0
                    Ros_topic_name.publish(0)
                    from_right_to_mid = 0



            elif (from_left_to_mid == 1) and (flag_turn_light > 0.2 or (0 < i4 <= 5.3)):
                i4 = i4 + 0.2
                if i4 <= 5:
                    Ros_topic_name.publish(2)

                else:
                    i4 = 0
                    Ros_topic_name.publish(0)
                    from_left_to_mid = 0

            else:
                Ros_topic_name.publish(0)

        if content["offset"] == -0.01:

            if j >= 5:
                content["offset"] = 0
                j = 0
            else:
                j += 0.2

        # print("*******flag_turn_light",flag_turn_light,"i = ",i1,"content",content,"content_old",content_old)
        content_old = content

        time.sleep(0.1)

# 计算距离红绿灯距离
def red_gereen_point_straight(index, ego_content, intersection_stopline_list):

    coord4 = from_latlon(intersection_stopline_list[index][0], intersection_stopline_list[index][1])
    UTM_intersection_stopline_x = coord4[0]
    UTM_intersection_stopline_y = coord4[1]
    dis_intersection_stopline = math.sqrt(math.pow(UTM_intersection_stopline_x - ego_content['UTM_x'], 2)
                                          + math.pow(UTM_intersection_stopline_y - ego_content['UTM_y'], 2))
    return dis_intersection_stopline

# 计算左转停止线
def red_gereen_point_turnleft(index, ego_content, intersection_stopline_list):

    coord4 = from_latlon(intersection_stopline_list[index][0], intersection_stopline_list[index][1])
    UTM_intersection_stopline_x = coord4[0]
    UTM_intersection_stopline_y = coord4[1]
    dis_intersection_stopline = math.sqrt(math.pow(UTM_intersection_stopline_x - ego_content['UTM_x'], 2)
                                          + math.pow(UTM_intersection_stopline_y - ego_content['UTM_y'], 2))
    return dis_intersection_stopline

# 计算任意两个经纬度点的距离
# 输入：两个经纬度点的经度和纬度，float形式
# 输出：两个点之间的距离，单位m
def get_dis_two_point_latlon(point1_lat, point1_lon, point2_lat, point2_lon):
    e_x = from_latlon(point1_lat, point1_lon)[0] - from_latlon(point2_lat, point2_lon)[0]
    e_y = from_latlon(point1_lat, point1_lon)[1] - from_latlon(point2_lat, point2_lon)[1]
    dis = math.sqrt(math.pow(e_x, 2) + math.pow(e_y, 2))
    return dis

##将经纬度的度分秒转换成含有小数点的形式
# 输入:带有度分秒的字符串 例如：'34°58′06.42276″'
# 输出：float类型的数据  例如：34.968451
def from_deg_to_num_longitude(longitude):
    longitude_split = re.split(u";", longitude)[:3]
    if len(longitude_split) == 3:
        x = [float(j) for j in longitude_split]
        data = (x[0] + x[1] / 60 + x[2] / 3600)
        return float('%.6f' % float(data))


"""---------------- 未归类的函数 ---------------------"""
def CalcMatchPoint(s_list, index2s, mark_cur):
    mark_max = 150 + mark_cur
    match_point_index = []
    if len(index2s) > 0:
        for i in range(len(s_list)):
            mark_search = mark_cur
            while (index2s[mark_search] < s_list[i]):
                mark_search += 1
                if (mark_search >= mark_max):
                    mark_search = mark_max
                    break
            match_point_index.append(mark_search)
    else:
        match_point_index = [0 for _ in range(len(s_list))]
    return match_point_index


# 输入：规划的l列表，规划的路径点，在全局坐标下对应的 匹配点坐标点列表
# 输出：规划路径点在笛卡尔坐标系下的x，y列表
def Frenet2Cartesian(l_list, match_point_list):
    x_set = []
    y_set = []
    for i in range(len(l_list)):
        theta = (match_point_list[i].head)

        # theta = theta - 90
        # if (theta < -180):
        #     theta = theta + 360
        # if (theta > 180):
        #     theta = theta - 360
        # theta = - theta * math.pi / 180

        # print("theta",theta)
        # print("x",match_point_list[i].x,l_list[i] * math.sin(theta))
        # print("y",match_point_list[i].y,l_list[i] * math.cos(theta))
        x_set.append(match_point_list[i].x - l_list[i] * math.sin(theta))
        y_set.append(match_point_list[i].y + l_list[i] * math.cos(theta))
    return x_set, y_set



# 根据 定位点的x，y，heading 自车的长宽度  确定 车顶点的坐标
# 能给出顶点坐标， 但是方位是不准的。
# input   x，y，heading，length,width
# output  rectangle_points_list
def to_get_ego_vertexs(x, y, heading, length, width):
    rectangle_points_list = []
    heading = heading / 180 * math.pi
    l = math.sqrt((length / 2) ** 2 + (width / 2) ** 2)
    if (heading >= 0):
        theta_left_front = heading + math.atan((0.5 * width) / (0.5 * length))
        theta_left_behind = heading + math.pi - math.atan((0.5 * width) / (0.5 * length))
        theta_right_front = heading - math.atan((0.5 * width) / (0.5 * length))
        theta_right_behind = heading - math.pi + math.atan((0.5 * width) / (0.5 * length))
    else:
        theta_left_front = heading + math.atan((0.5 * width) / (0.5 * length))
        theta_left_behind = heading - math.pi + math.atan((0.5 * width) / (0.5 * length))
        theta_right_front = heading - math.atan((0.5 * width) / (0.5 * length))
        theta_right_behind = heading + math.pi - math.atan((0.5 * width) / (0.5 * length))
    # point_left_front_x = x + l * math.cos(theta_left_front)
    # point_left_front_y = y + l * math.sin(theta_left_front)
    # point_left_behind_x = x + l * math.cos(theta_left_behind)
    # point_left_behind_y = y + l * math.sin(theta_left_behind)
    # point_right_front_x = x + l * math.cos(theta_right_front)
    # point_right_front_y = y + l * math.sin(theta_right_front)
    # point_right_behind_x = x + l * math.cos(theta_right_behind)
    # point_right_behind_y = y + l * math.sin(theta_right_behind)

    point_left_front_x = x + l * math.sin(theta_left_front)
    point_left_front_y = y + l * math.cos(theta_left_front)
    point_left_behind_x = x + l * math.sin(theta_left_behind)
    point_left_behind_y = y + l * math.cos(theta_left_behind)
    point_right_front_x = x + l * math.sin(theta_right_front)
    point_right_front_y = y + l * math.cos(theta_right_front)
    point_right_behind_x = x + l * math.sin(theta_right_behind)
    point_right_behind_y = y + l * math.cos(theta_right_behind)

    rectangle_points_list = [[point_left_front_x, point_left_front_y], [point_right_front_x, point_right_front_y], \
                             [point_left_behind_x, point_left_behind_y], [point_right_behind_x, point_right_behind_y]]
    return rectangle_points_list


# 分离轴定理来得到，圆与矩形 是否重叠
# input ego_rectangle_points，obs_round_points
# output separation_alex_result(0.5/1,  0.5表示无重叠,但可能发生碰撞，1表示有重叠，一定会发生碰撞)
def to_get_separation_alex_reslut_for_round(ego_rectangle_points, obs_round_points, dis_obs):
    def normalize(vector):
        """
        :return: The vector scaled to a length of 1
        """
        norm = math.sqrt(vector[0] ** 2 + vector[1] ** 2)
        return vector[0] / norm, vector[1] / norm

    def dot(vector1, vector2):
        """
        :return: The dot (or scalar) product of the two vectors
        """
        return vector1[0] * vector2[0] + vector1[1] * vector2[1]

    def edge_direction(point0, point1):
        """
        :return: A vector going from point0 to point1
        """
        return point1[0] - point0[0], point1[1] - point0[1]

    def orthogonal(vector):
        """
        :return: A new vector which is orthogonal to the given vector
        """
        return vector[1], -vector[0]

    def vertices_to_edges(vertices):
        """
        :return: A list of the edges of the vertices as vectors
        """
        return [edge_direction(vertices[i], vertices[(i + 1) % len(vertices)])
                for i in range(len(vertices))]

    def project(vertices, axis):
        """
        :return: A vector showing how much of the vertices lies along the axis
        """
        dots = [dot(vertex, axis) for vertex in vertices]
        return [min(dots), max(dots)]

    def overlap(projection1, projection2):
        """
        :return: Boolean indicating if the two projections overlap
        """
        return min(projection1) <= max(projection2) and \
            min(projection2) <= max(projection1)

    def separating_axis_theorem(vertices_a, vertices_b):
        edges = vertices_to_edges(vertices_a) + vertices_to_edges(vertices_b)
        # get all edges
        axes = [normalize(orthogonal(edge)) for edge in edges]
        for axis in axes:
            projection_a = project(vertices_a, axis)
            projection_b = project(vertices_b, axis)
            overlapping = overlap(projection_a, projection_b)

            if not overlapping:
                return False

        return True

    def get_collision_p_round(x):
        mean = 3
        std = 0.5
        z = (x - mean) / std
        p = 1 - stats.norm.cdf(z)
        return p

    def get_collision_p_rectangle(x):
        mean = 2.8
        std = 0.5
        z = (x - mean) / std
        p = 1 - stats.norm.cdf(z)
        return p

    result = separating_axis_theorem(ego_rectangle_points, obs_round_points)
    # print("result",result)
    if result is False:
        # print("未发生重合")
        if len(obs_round_points) == 2:
            separation_alex_result = get_collision_p_round(dis_obs)
        else:
            separation_alex_result = get_collision_p_rectangle(dis_obs)
    else:
        separation_alex_result = 1

    return separation_alex_result

# 找到圆心距离四个顶点最近的点，再在这两个点之间 找距离为圆半径的另一个点
# input ego_rectangle_points、covered_obs_round
# output  obs_round_points
def to_get_obs_round_points(ego_rectangle_points, covered_obs_round):
    min_dis_index = 0
    min_dis = 10000
    for i in range(len(ego_rectangle_points)):
        dis_to_round = math.sqrt((ego_rectangle_points[i][0] - covered_obs_round[0]) ** 2 + (
                ego_rectangle_points[i][1] - covered_obs_round[1]) ** 2)
        if (dis_to_round < min_dis):
            min_dis = dis_to_round
            min_dis_index = i

    try:
        theta = math.atan2(((ego_rectangle_points[min_dis_index][1] - covered_obs_round[1])),
                           (ego_rectangle_points[min_dis_index][0] - covered_obs_round[0]))
        another_point_x = covered_obs_round[0] + covered_obs_round[2] * math.cos(theta)
        another_point_y = covered_obs_round[1] + covered_obs_round[2] * math.sin(theta)
    except:
        another_point_x = covered_obs_round[0]
        if (covered_obs_round[1] > ego_rectangle_points[min_dis_index][1]):
            another_point_y = covered_obs_round[1] - covered_obs_round[2]
        else:
            another_point_y = covered_obs_round[1] + covered_obs_round[2]

    ego_rectangle_points_center_x = ((ego_rectangle_points[0][0] + ego_rectangle_points[1][0]) / 2 + \
                                     (ego_rectangle_points[2][0] + ego_rectangle_points[3][0]) / 2) / 2
    ego_rectangle_points_center_y = (ego_rectangle_points[0][1] + ego_rectangle_points[1][1] + \
                                     ego_rectangle_points[2][1] + ego_rectangle_points[3][1]) / 4

    try:
        theta = math.atan2(((ego_rectangle_points_center_y - covered_obs_round[1])),
                           (ego_rectangle_points_center_x - covered_obs_round[0]))
        nother_point_x = covered_obs_round[0] + covered_obs_round[2] * math.cos(theta)
        nother_point_y = covered_obs_round[1] + covered_obs_round[2] * math.sin(theta)
    except:
        nother_point_x = covered_obs_round[0]
        if (covered_obs_round[1] > ego_rectangle_points_center_y):
            nother_point_y = covered_obs_round[1] - covered_obs_round[2]
        else:
            nother_point_y = covered_obs_round[1] + covered_obs_round[2]

    return [[covered_obs_round[0], covered_obs_round[1]], [another_point_x, another_point_y],
            [nother_point_x, nother_point_y]]


# 总方法：调用其他的函数
# input  未来的轨迹路径点序列 x_list,y_list, heading_list,自车尺寸信息 ego_length，ego_width， covered_obs_round_list，covered_obs_rectangle_list(这两者可能为空)
# output  check_collosion_result(取值： 0，0.5，1)          0 ： 不可能碰撞，1，必然发生碰撞，0.5 可能发生碰撞
def to_get_check_collision_result(x_list, y_list, heading_list, ego_length, ego_width, covered_obs_round_list,
                                  covered_obs_rectangle_list):
    if (not covered_obs_round_list) and (not covered_obs_rectangle_list):
        check_collosion_result = 0
    else:
        result_round_list = []
        result_rectangle_list = []
        for i in range(len(covered_obs_round_list)):
            temp = to_find_nearest_point(x_list, y_list, heading_list, covered_obs_round_list[i][0],
                                         covered_obs_round_list[i][1])
            match_point_heading = temp[2]
            center_x = temp[0]
            center_y = temp[1]
            # print("center_x",center_x,center_y,match_point_heading,temp[3],temp[4])
            width = ego_width
            Length = ego_length
            temp_points = to_get_ego_vertexs(center_x, center_y, match_point_heading, Length, width)
            match_point_heading = match_point_heading * 180 / math.pi
            # plt.gca().add_patch(plt.Rectangle((temp_points[2][0], temp_points[2][1]),
            #                                   Length,width, match_point_heading, color='b'))

            distance_ego_to_obs_min = (0.25 * ((ego_width) ** 2 + (ego_length) ** 2)) ** 0.5 + \
                                      covered_obs_round_list[i][2]
            # print("distance_ego_to_obs_min",distance_ego_to_obs_min)
            if (temp[3] > distance_ego_to_obs_min or temp[4] > distance_ego_to_obs_min + 8):
                result_round_list.append(0)
            else:
                ego_rectangle_points = to_get_ego_vertexs(temp[0], temp[1], temp[2], ego_length, ego_width)
                obs_round_points = to_get_obs_round_points(ego_rectangle_points, covered_obs_round_list[i])
                # print("ego_rectangle_points",ego_rectangle_points,obs_round_points)
                separation_alex_result = to_get_separation_alex_reslut_for_round(ego_rectangle_points, obs_round_points,
                                                                                 temp[4])
                result_round_list.append(separation_alex_result)
        for i in range(len(covered_obs_rectangle_list)):
            temp = to_find_nearest_point(x_list, y_list, heading_list, covered_obs_rectangle_list[i][0],
                                         covered_obs_rectangle_list[i][1])
            match_point_heading = temp[2]
            center_x = temp[0]
            center_y = temp[1]
            # print("center_x",center_x,center_y,match_point_heading,temp[3],temp[4])
            width = ego_width
            Length = ego_length
            temp_points = to_get_ego_vertexs(center_x, center_y, match_point_heading, Length, width)
            match_point_heading = match_point_heading * 180 / math.pi
            # plt.gca().add_patch(plt.Rectangle((temp_points[2][0], temp_points[2][1]), Length,
            #                                   width, match_point_heading, color='b'))

            distance_ego_to_obs_min = (0.25 * (ego_length + covered_obs_rectangle_list[i][2][0]) ** 2 + \
                                       0.25 * (ego_width + covered_obs_rectangle_list[i][2][1]) ** 2) ** 0.5
            # print("distance_ego_to_obs_min",distance_ego_to_obs_min)
            if (temp[3] > distance_ego_to_obs_min or temp[4] > distance_ego_to_obs_min + 8):
                result_rectangle_list.append(0)
            else:
                ego_rectangle_points = to_get_ego_vertexs(temp[0], temp[1], temp[2], ego_length, ego_width)
                obs_rectangle_points = to_get_ego_vertexs(covered_obs_rectangle_list[i][0],
                                                          covered_obs_rectangle_list[i][1], \
                                                          temp[2], covered_obs_rectangle_list[i][2][0],
                                                          covered_obs_rectangle_list[i][2][1])
                # prBlue("ego_points" + str(ego_rectangle_points) + "obs_rectang" + str(obs_rectangle_points))
                separation_alex_result = to_get_separation_alex_reslut_for_round(ego_rectangle_points,
                                                                                 obs_rectangle_points, temp[4])
                result_rectangle_list.append(separation_alex_result)
        result_obs_all_list = result_rectangle_list + result_round_list
        check_collosion_result = max(result_obs_all_list)

    return check_collosion_result


def to_get_check_collision_result_dynamic(s_list, l_list, heading_list, ego_length, ego_width,
                                          covered_obs_round_list_dynamic,
                                          covered_obs_rectangle_list_dynamic, Map_dict):
    if (not covered_obs_round_list_dynamic) and (not covered_obs_rectangle_list_dynamic):
        check_collosion_result = 0
    else:
        result_round_list = []
        result_rectangle_list = []
        for i in range(len(covered_obs_round_list_dynamic)):
            result_round_pro_list = []
            obs_round_s_pre_list = [covered_obs_round_list_dynamic[i][0]]
            obs_round_l_pre_list = [covered_obs_round_list_dynamic[i][1]]
            for k in range(len(s_list) - 1):  # k 是时间间隔，１ｓ
                obs_round_s_pre_list.append(obs_round_s_pre_list[0] + (k + 1) * covered_obs_round_list_dynamic[i][3])
                obs_round_l_pre_list.append(obs_round_l_pre_list[0])

            distance_ego_to_obs_min = (0.25 * (ego_width ** 2 + (ego_length) ** 2)) ** 0.5 + \
                                      covered_obs_round_list_dynamic[i][2]
            for j in range(len(s_list)):
                dis_ego_to_obs_dynamic = math.sqrt((s_list[j]-obs_round_s_pre_list[j])**2 + (l_list[j] -obs_round_l_pre_list[j])**2)
                if dis_ego_to_obs_dynamic > distance_ego_to_obs_min + 8:
                    result_round_pro_list.append(0)
                else:
                    ego_points = to_get_ego_vertexs(s_list[j], l_list[j], heading_list[j], ego_length, ego_width)
                    obs_round_points = to_get_obs_round_points(ego_points, covered_obs_round_list_dynamic[i])
                    separation_alex_result = to_get_separation_alex_reslut_for_round(ego_points,
                                                                                     obs_round_points,
                                                                                     dis_ego_to_obs_dynamic)
                    result_round_pro_list.append(separation_alex_result)
            result_round_list.append(max(result_round_pro_list))

        for i in range(len(covered_obs_rectangle_list_dynamic)):
            result_rectangle_pro_list = []
            dis_list_check = []
            obs_rectangle_s_pre_list = [covered_obs_rectangle_list_dynamic[i][0]]
            obs_rectangle_l_pre_list = [covered_obs_rectangle_list_dynamic[i][1]]
            obs_rectangle_heading_pre_list = []
            for k in range(len(s_list) - 1):  # k 是时间间隔，１ｓ
                obs_rectangle_s_pre_list.append(
                    obs_rectangle_s_pre_list[0] + (k + 1) * covered_obs_rectangle_list_dynamic[i][3])
                obs_rectangle_l_pre_list.append(obs_rectangle_l_pre_list[0])

            mark_cur = to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"], Map_dict["heading_list"],
                                             covered_obs_rectangle_list_dynamic[i][4], covered_obs_rectangle_list_dynamic[i][5])[5]
            index2s = FromGlobalPointsList_to_index2s(Map_dict["global_point_list"])  # 每个全局路径点对应的s
            match_point_index = CalcMatchPoint(obs_rectangle_s_pre_list, index2s, mark_cur)  # TODO match_point_index 是一个列表
            for g in range(len(match_point_index)):
                obs_rectangle_heading_pre_list.append(Map_dict["global_point_list"][match_point_index[g]].head * math.pi/180)

            distance_ego_to_obs_min = (0.25 * (ego_length + covered_obs_rectangle_list_dynamic[i][2][0]) ** 2 + \
                                       0.25 * (ego_width + covered_obs_rectangle_list_dynamic[i][2][1]) ** 2) ** 0.5
            for j in range(len(s_list)):
                dis_ego_to_obs_dynamic = math.sqrt((s_list[j] - obs_rectangle_s_pre_list[j]) ** 2 + (l_list[j] - obs_rectangle_l_pre_list[j]) ** 2)
                dis_list_check.append(dis_ego_to_obs_dynamic)
                if dis_ego_to_obs_dynamic > distance_ego_to_obs_min + 8:
                    result_rectangle_pro_list.append(0)
                else:
                    ego_points = to_get_ego_vertexs(s_list[j], l_list[j], heading_list[j], ego_length, ego_width)

                    obs_rectangle_points = to_get_ego_vertexs(obs_rectangle_s_pre_list[j],
                                                              obs_rectangle_l_pre_list[j], \
                                                              obs_rectangle_heading_pre_list[j],
                                                              covered_obs_rectangle_list_dynamic[i][2][0],
                                                              covered_obs_rectangle_list_dynamic[i][2][1])
                    # prBlue("ego_points"+ str(ego_points) + "obs_rectang"+str(obs_rectangle_points))
                    separation_alex_result = to_get_separation_alex_reslut_for_round(ego_points,
                                                                                     obs_rectangle_points,
                                                                                     dis_ego_to_obs_dynamic)
                    result_rectangle_pro_list.append(separation_alex_result)
            result_rectangle_list.append(max(result_rectangle_pro_list))
        result_obs_all_list = result_rectangle_list + result_round_list
        check_collosion_result = max(result_obs_all_list)
    return check_collosion_result


# 输入：轨迹的x_list和y_list
# 输出：轨迹的heading_list和kappa_list组成的字典dict
def to_get_heading_kappa(x_plan_list, y_plan_list):
    dx_pre_list = []
    dx_after_list = []
    dx_final_list = []
    ds_final_list = []
    heading_plan_list = []
    dx_after_list.append(x_plan_list[1] - x_plan_list[0])
    for i in range(len(x_plan_list) - 1):
        dx_pre_list.append(x_plan_list[i + 1] - x_plan_list[i])
        dx_after_list.append(x_plan_list[i + 1] - x_plan_list[i])
    dx_pre_list.append(x_plan_list[-1] - x_plan_list[-2])
    dy_pre_list = []
    dy_after_list = []
    dy_final_list = []
    dy_after_list.append(y_plan_list[1] - y_plan_list[0])
    for i in range(len(y_plan_list) - 1):
        dy_pre_list.append(y_plan_list[i + 1] - y_plan_list[i])
        dy_after_list.append(y_plan_list[i + 1] - y_plan_list[i])
    dy_pre_list.append(y_plan_list[-1] - y_plan_list[-2])
    for i in range(len(x_plan_list)):
        dx_final_list.append((dx_after_list[i] + dx_pre_list[i]) / 2)
        dy_final_list.append((dy_after_list[i] + dy_pre_list[i]) / 2)
        heading_plan_list.append(math.atan2(dy_final_list[-1], dx_final_list[-1]) * 180 / math.pi)
        temp_ds_i = math.sqrt(dx_final_list[-1] ** 2 + dy_final_list[-1] ** 2)
        ds_final_list.append(temp_ds_i)
    # dx_final_list/d_y_final_list/ds_final_list   差分后的dx列表/dy列表/ds列表/heading_plan列表

    dheading_pre_list = []
    dheading_after_list = []
    dheading_final_list = []
    kappa_plan_list = []

    dheading_after_list.append(heading_plan_list[1] - heading_plan_list[0])
    for i in range(len(heading_plan_list) - 1):
        dheading_pre_list.append(heading_plan_list[i + 1] - heading_plan_list[i])
        dheading_after_list.append(heading_plan_list[i + 1] - heading_plan_list[i])
    dheading_pre_list.append(heading_plan_list[-1] - heading_plan_list[-2])
    for i in range(len(dheading_after_list)):
        dheading_final_list.append((dheading_after_list[i] + dheading_pre_list[i]) / 2)
        kappa_plan_list.append(math.sin(dheading_final_list[-1]) / (ds_final_list[i] + 0.0001))

    dict = {"heading_plan_list": heading_plan_list, "kappa_plan_list": kappa_plan_list}
    return dict


# 输入：读地图输出的字典信息，碰撞检测模块输出的需要的画图的字典信息
# 输出：绘制图像
def lattice_collision_check_plot(Map_dict, dict_plot):
    ego_width = 2.5
    ego_length = 12

    match_point_index = dict_plot["match_point_index"]
    x_plan_list = dict_plot["x_plan_list"]
    y_plan_list = dict_plot["y_plan_list"]
    heading_plan_list = dict_plot["heading_plan_list"]
    covered_obs_round_list = dict_plot["covered_obs_round_list"]
    covered_obs_rectangle_list = dict_plot["covered_obs_rectangle_list"]
    x_list = Map_dict["X_list"]
    y_list = Map_dict["Y_list"]
    heading_list = Map_dict["heading_list"]
    plt.plot(x_list[match_point_index[0]:match_point_index[-1]],
             y_list[match_point_index[0]:match_point_index[-1]], color='k', marker='.', linestyle='dashed')

    plt.plot(x_plan_list, y_plan_list, color='r', marker='.', linestyle='dashed')

    for i in range(len(covered_obs_round_list)):
        plt.gca().add_patch(plt.Circle((covered_obs_round_list[i][0], covered_obs_round_list[i][1]),
                                       covered_obs_round_list[i][2], color="blue", fill=True))

    for i in range(len(covered_obs_rectangle_list)):
        match_obs_heading = to_find_nearest_point(x_list, y_list, heading_list,
                                                  covered_obs_rectangle_list[i][0], covered_obs_rectangle_list[i][1])[2]
        center_x = covered_obs_rectangle_list[i][0]
        center_y = covered_obs_rectangle_list[i][1]
        width = covered_obs_rectangle_list[i][2][1]
        Length = covered_obs_rectangle_list[i][2][0]
        temp = to_get_ego_vertexs(center_x, center_y, match_obs_heading, Length, width)
        match_obs_heading = match_obs_heading * 180 / math.pi
        plt.gca().add_patch(plt.Rectangle((temp[2][0], temp[2][1]), Length,
                                          width, match_obs_heading, color='k'))

    for i in range(len(covered_obs_round_list)):
        temp = to_find_nearest_point(x_plan_list, y_plan_list, heading_plan_list, covered_obs_round_list[i][0],
                                     covered_obs_round_list[i][1])
        match_point_heading = temp[2]
        center_x = temp[0]
        center_y = temp[1]
        width = ego_width
        Length = ego_length
        temp_points = to_get_ego_vertexs(center_x, center_y, match_point_heading, Length, width)
        match_point_heading = match_point_heading * 180 / math.pi
        plt.gca().add_patch(plt.Rectangle((temp_points[2][0], temp_points[2][1]),
                                          Length, width, match_point_heading, color='r'))
    for i in range(len(covered_obs_rectangle_list)):
        temp = to_find_nearest_point(x_plan_list, y_plan_list, heading_plan_list, covered_obs_rectangle_list[i][0],
                                     covered_obs_rectangle_list[i][1])
        match_point_heading = temp[2]
        center_x = temp[0]
        center_y = temp[1]
        # print("center_x", center_x, center_y, match_point_heading, temp[3], temp[4])
        width = ego_width
        Length = ego_length
        temp_points = to_get_ego_vertexs(center_x, center_y, match_point_heading, Length, width)
        match_point_heading = match_point_heading * 180 / math.pi
        plt.gca().add_patch(plt.Rectangle((temp_points[2][0], temp_points[2][1]), Length,
                                          width, match_point_heading, color='r'))
    plt.show()


# 被调用的核心函数，碰撞检测的接口。
# 输入：规划的s列表，l列表，从ROI function 里面的障碍物列表，本车定位点，读地图输出的字典信息
# 输出：dict_plan,dict_plot 规划数据字典和画图数据字典
def lattice_collision_check(s_list, l_list, obj_list, ego_Point_class, Map_dict):
    ego_width = 2.5  ###
    ego_length = 12
    min_ego_turn_radius = 4.5  # TODO 重新计算
    if len(Map_dict["global_point_list"]) > 0:
        mark_cur = to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"], Map_dict["heading_list"],
                                         ego_Point_class.x, ego_Point_class.y)[5]
        index2s = FromGlobalPointsList_to_index2s(Map_dict["global_point_list"])  # 每个全局路径点对应的s

        match_point_index = CalcMatchPoint(s_list, index2s, mark_cur)  # TODO match_point_index 是一个列表
        match_point_list = []
        for i in range(len(match_point_index)):
            match_point_list.append(Map_dict["global_point_list"][match_point_index[i]])

        x_plan_list, y_plan_list = Frenet2Cartesian(l_list, match_point_list)

        heading_plan_list = to_get_heading_kappa(x_plan_list, y_plan_list)["heading_plan_list"]
        heading_plan_error_list = []
        for i in range(len(match_point_list)):
            heading_plan_error_list.append(match_point_list[i].head - heading_plan_list[i])
        kappa_plan_list = to_get_heading_kappa(x_plan_list, y_plan_list)["kappa_plan_list"]
        covered_obs_round_list_static = []
        covered_obs_rectangle_list_static = []
        covered_obs_round_list_dynamic = []
        covered_obs_rectangle_list_dynamic = []
        for i in range(len(obj_list)):
            if obj_list[i]["type"] == "person" or obj_list[i]["type"] == "chil":
                # min_obs_round_radius = math.sqrt((obj_list[i]["Length"] / 2) ** 2 + (obj_list[i]["Width"] / 2) ** 2)
                min_obs_round_radius = 0.8
                covered_obs_radius = min_obs_round_radius + min_ego_turn_radius * 0.05
                covered_obs_x = obj_list[i]["x"]
                covered_obs_y = obj_list[i]["y"]
                if obj_list[i]["npc_speed"] < 1:
                    covered_obs_round_list_static.append([covered_obs_x, covered_obs_y, covered_obs_radius])
                else:
                    covered_obs_s = obj_list[i]["s"] + s_list[0]
                    covered_obs_l = obj_list[i]["l"]
                    covered_obs_round_list_dynamic.append(
                        [covered_obs_s, covered_obs_l, covered_obs_radius, obj_list[i]["npc_speed"], covered_obs_x,
                         covered_obs_y])

            elif (obj_list[i]["type"] == "bus" or obj_list[i]["type"] == "car" or obj_list[i]["type"] == "truck" or
                  obj_list[i]["type"] == "bicycle"):
                covered_obs_length = obj_list[i]["Length"] + min_ego_turn_radius * 0.1
                covered_obs_width = obj_list[i]["Width"] + min_ego_turn_radius * 0.1
                covered_obs_x = obj_list[i]["npc_x"]
                covered_obs_y = obj_list[i]["npc_y"]
                if obj_list[i]["npc_speed"] < 1:
                    covered_obs_rectangle_list_static.append(
                        [covered_obs_x, covered_obs_y, (covered_obs_length, covered_obs_width)])
                else:

                    covered_obs_s = obj_list[i]["s"] + s_list[0]
                    covered_obs_l = obj_list[i]["l"]
                    covered_obs_rectangle_list_dynamic.append(
                        [covered_obs_s, covered_obs_l, (covered_obs_length, covered_obs_width),
                         obj_list[i]["npc_speed"], covered_obs_x, covered_obs_y])
        result_check_dynamic = to_get_check_collision_result_dynamic(s_list, l_list, heading_plan_list, ego_length,
                                                                     ego_width, covered_obs_round_list_dynamic,
                                                                     covered_obs_rectangle_list_dynamic, Map_dict)

        result_check_static = to_get_check_collision_result(x_plan_list, y_plan_list, heading_plan_list, ego_length,
                                                            ego_width,
                                                            covered_obs_round_list_static,
                                                            covered_obs_rectangle_list_static)  # static float [0,1]
        # prYellow("result_check_dynamic" + str(result_check_dynamic) + "result_check_static" + str(result_check_static))
        result_check = max(result_check_dynamic, result_check_static)

    else:
        x_plan_list = range(len(s_list))
        y_plan_list = range(len(s_list))
        heading_plan_list = range(len(s_list))
        kappa_plan_list = range(len(s_list))
        result_check = 0
        heading_plan_error_list = [0 for _ in range(len(s_list))]
        match_point_index = [0 for _ in range(len(s_list))]
        covered_obs_round_list_static = []
        covered_obs_rectangle_list_static = []

    dict_plan = {"s_list": s_list, "l_list": l_list, "x_plan_list": x_plan_list, "y_plan_list": y_plan_list,
                 "heading_plan_list": heading_plan_list, "kappa_plan_list": kappa_plan_list,
                 "result_check": result_check,
                 "heading_plan_error_list": heading_plan_error_list}
    dict_plot = {"match_point_index": match_point_index, "x_plan_list": x_plan_list, "y_plan_list": y_plan_list,
                 "covered_obs_round_list": covered_obs_round_list_static, "heading_plan_list": heading_plan_list,
                 "covered_obs_rectangle_list": covered_obs_rectangle_list_static}
    return dict_plan, dict_plot

# 功能： 右转进入内部道路避让非机动车道的 动态 objects
# 输入：
# 输出：
def turn_right_avoid_obj(obj_lidar_list_select, ego_content, Map_dict, points_list, index2s, max_speed_plan):
    coord = from_latlon(points_list[0], points_list[1])
    UTM_clash_x = coord[0]
    UTM_clash_y = coord[1]

    index_clash_point = to_find_nearest_point(Map_dict['X_list'], Map_dict['Y_list'], Map_dict['heading_list'],
                                                       UTM_clash_x, UTM_clash_y)[5]
    try:
        index_ego = to_find_nearest_point(Map_dict['X_list'], Map_dict['Y_list'], Map_dict['heading_list'],
                                                      ego_content['UTM_x'], ego_content['UTM_y'])[5]
    except:
        index_ego = to_find_nearest_point(Map_dict['X_list'], Map_dict['Y_list'], Map_dict['heading_list'],
                                          ego_content['ego_x'], ego_content['ego_y'])[5]
    try:
        distance = index2s[index_clash_point] - index2s[index_ego] - 1
    except:
        distance = 100
    #TODO  need add some speed message for obj
    if len(obj_lidar_list_select) > 0:
        for i in range(len(obj_lidar_list_select)):
            if (-10 <= obj_lidar_list_select[i]['dis_y'] <= 5) and (-4 <= obj_lidar_list_select[i]['dis_x'] <= 0):
                stop_flag = True
                break
            else:
                stop_flag = False
    else:
        stop_flag = False

    if stop_flag:
        if distance >= 20:
            speed_plan = max_speed_plan
        elif 8 < distance < 20:
            speed_plan = max_speed_plan / 2
        elif 0 < distance <= 8:
            speed_plan = -1
        elif -5 < distance <= 0:
            speed_plan = max_speed_plan / 2
        else:
            speed_plan = max_speed_plan
    else:
        speed_plan = max_speed_plan
    print("turn_right_avoid_obj_speed:", speed_plan, ' ', "distance", distance, ' ', "stop_flag", stop_flag)
    return speed_plan



# todo
# input:   front_vech_dict: roi front veh message; delta_time: gap time
# output:   gap_time* ego_speed apply for speed
def get_speed_according_to_S(ego_content, front_veh_dict, delta_time, speed_dot_init=0, speed_dot_dot_init=0):
    reaction_time = 2
    min_safe_dis = 17
    target_speed = front_veh_dict['npc_speed'] * 3.6

    # ds = ego_content['ego_speed'] / 3.6 * delta_time
    # print("target_speed", target_speed, "ds",ds)
    S_safe = ego_content['ego_speed'] / 3.6 * reaction_time + min_safe_dis
    S = front_veh_dict['s'] - S_safe
    ds = S / 4
    print("run_time", delta_time, ego_content["ego_speed"] / 3.6, ds)
    b0 = ego_content["ego_speed"]
    b1 = speed_dot_init
    b2 = speed_dot_dot_init
    b3 = -(4 * (ego_content["ego_speed"] - target_speed)) / S ** 3
    b4 = (3 * (ego_content["ego_speed"] - target_speed)) / S ** 4
    # speed_plan = b0 + b1 * (S - ds) + b2 * ((S - ds) ** 2) + b3 * ((S - ds) ** 3) + b4 * ((S - ds) ** 4)
    speed_plan = b0 + b1 * ds + b2 * (ds ** 2) + b3 * (ds ** 3) + b4 * (ds ** 4)
    if S < 0 and front_veh_dict['npc_speed'] < 0.3:
        speed_plan = -0.1

    return speed_plan


"------------------应对2023WIDC科目13------------------------"


def widc_get_a_line_from_two_points(point1_lat, point1_lon, point2_lat, point2_lon, string_point_type):
    string_point_type = str(string_point_type)
    if string_point_type == 'xy':
        point1_x = point1_lat
        point1_y = point1_lon
        point2_x = point2_lat
        point2_y = point2_lon
        line_B = point2_x - point1_x
        line_C = point1_x * point2_y - point1_y * point2_x
        line_pra_list = [line_A, line_B, line_C]
    elif string_point_type == 'latlon':
        point1_x_y = from_latlon(point1_lat, point1_lon)
        point1_x = point1_x_y[0]
        point1_y = point1_x_y[1]
        point2_x_y = from_latlon(point2_lat, point2_lon)
        point2_x = point2_x_y[0]
        point2_y = point2_x_y[1]
        line_A = point1_y - point2_y
        line_B = point2_x - point1_x
        line_C = point1_x * point2_y - point1_y * point2_x
        line_pra_list = [line_A, line_B, line_C]
        k = -line_A / line_B
        b = -line_C / line_B
    return k, b


def lon_utm(points):
    points_utm = []

    # 经纬度转换为UTM
    for point in points:
        point_x_y = from_latlon(point[0], point[1])
        point_x = point_x_y[0]
        point_y = point_x_y[1]
        point_utm = [point_x, point_y]
        points_utm.append(point_utm)
    return points_utm


# 根据k的正负，lat大小比较可能需要更改
def judge_point_position(utm_x, utm_y, k,b):
    if (utm_y < utm_x * k[0] + b[0]) and (utm_y < utm_x * k[1] + b[1]) and\
            (utm_y < utm_x * k[2] + b[2]) and (utm_y < utm_x * k[3] + b[3])and \
            (utm_y < utm_x * k[4] + b[4])and (utm_y < utm_x * k[5] + b[5])\
            and (utm_y < utm_x * k[6] + b[6])and (utm_y < utm_x * k[7] + b[7])and \
            (utm_y < utm_x * k[8] + b[8])\
            and (utm_y < utm_x * k[9] + b[9]):
        return "r_lane"
    else:
        return "l_lane"


def dc_point(star_utm_x, start_utm_y, k, b):
    dc = []

    x = (start_utm_y - k * star_utm_x - b) / (k ** 2 + 1)
    y = k * x + b
    dc_x = 2 * x - star_utm_x
    dc_y = 2 * y - start_utm_y
    dc = [dc_x, dc_y]

    return dc


def split_points_by_line(points_utm, k,b):
    left_points = []
    right_points = []

    for point in points_utm:
        position = judge_point_position(point[0], point[1], k,b)
        if position == "l_lane":
            left_points.append(point)
        elif position == "r_lane":
            right_points.append(point)
        else:
            print("Unexpected position value")

    return left_points, right_points


def car_point_diatance(left_points, right_points, k1, b1, start_point):
    # current_star_location_UTM = [537847.5743367609, 4338377.610937201]
    current_star_location_UTM = start_point
    current_dc_location_UTM = dc_point(current_star_location_UTM[0], current_star_location_UTM[1], k1, b1)
    distances_left = []
    distances_right = []

    distance_l1 = math.sqrt(
        (left_points[0][0] - current_dc_location_UTM[0]) ** 2 + (left_points[0][1] - current_dc_location_UTM[1]) ** 2)
    distance_l2 = math.sqrt(
        (left_points[1][0] - current_dc_location_UTM[0]) ** 2 + (left_points[1][1] - current_dc_location_UTM[1]) ** 2)
    if distance_l1 < distance_l2:
        distances_left.append(left_points[1])
        distances_left.append(left_points[0])
    else:
        distances_left.append(left_points[0])
        distances_left.append(left_points[1])

    distance_r1 = math.sqrt(
        (right_points[0][0] - current_star_location_UTM[0]) ** 2 + (
                right_points[0][1] - current_star_location_UTM[1]) ** 2)
    distance_r2 = math.sqrt(
        (right_points[1][0] - current_star_location_UTM[0]) ** 2 + (
                right_points[1][1] - current_star_location_UTM[1]) ** 2)
    if distance_r1 < distance_r2:
        distances_right.append(right_points[0])
        distances_right.append(right_points[1])
    else:
        distances_right.append(right_points[1])
        distances_right.append(right_points[0])
    sort_points_utm = distances_right + distances_left
    return sort_points_utm


def widc_npc(Map_dict, index2s, ego_content, points):
    point_l = []
    point_s = []
    for point in points:
        index_obj = to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"],
                                          Map_dict["heading_list"], point[0],
                                          point[1])[5]
        index_ego = to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"],
                                          Map_dict["heading_list"], ego_content["UTM_x"],
                                          ego_content["UTM_y"])[5]
        if len(index2s) > 0:
            point_s.append(index2s[index_obj] - index2s[index_ego])
            if -8 < (
            to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"], Map_dict["heading_list"], point[0], point[1])[
                3]) < 8:
                point_l.append(to_find_nearest_point(Map_dict["X_list"], Map_dict["Y_list"],
                                                     Map_dict["heading_list"], point[0],
                                                     point[1])[3])
            else:
                point_l.append('Error')

    return point_l, point_s


def WIDC_13_main(target_points, start_point):
    send_points = [{'UTM_X': 0, 'UTM_Y': 0}, {'UTM_X': 0, 'UTM_Y': 0}, {'UTM_X': 0, 'UTM_Y': 0}, {'UTM_X': 0, 'UTM_Y': 0}]
    k=[]
    b=[]
    line_points = [[39.192383, 117.437555], [39.192957, 117.437770], [39.193634, 117.438073], [39.194532, 117.438578],
                   [39.195542, 117.439286],
                   [39.196225, 117.439860], [39.196912, 117.440533], [39.197466, 117.441157], [39.198120, 117.442008],
                   [39.198651, 117.442802], [39.199307, 117.443928]]
    for i in range(len(line_points)):
        if i <len(line_points)-1:
            result=widc_get_a_line_from_two_points(line_points[i][0],line_points[i][1],line_points[i+1][0],line_points[i+1][1],'latlon')
            k.append(result[0])
            b.append(result[1])

    points_utm = lon_utm(target_points)
    print(points_utm)
    result2 = split_points_by_line(points_utm,k,b)
    left_points = result2[0]
    right_points = result2[1]
    sort_points_utm = car_point_diatance(left_points, right_points, k[0], b[0], start_point)
    b=sort_points_utm[0]
    d=sort_points_utm[1]
    c=sort_points_utm[2]
    a=sort_points_utm[3]
    sort_points_utm=[a,b,c,d]
    # point_sl = widc_npc(Map_dict, index2s, ego_content, sort_points_utm)
    # point_l = point_sl[0]

    for i in range(len(sort_points_utm)):
        send_points[i]['UTM_X'] = sort_points_utm[i][0]
        send_points[i]['UTM_Y'] = sort_points_utm[i][1]
    return send_points


"------------------应对2023WIDC科目13------------------------"



"""
    Name: Hao Jinbo
    Date: 2023.3
    Function: 存储基本的功能函数
"""