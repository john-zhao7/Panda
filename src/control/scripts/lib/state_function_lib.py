"""
    本库函数包括不同类型的路段下的策略函数
    包括：单向单车道， 单向双车道， 直行路口（无红绿灯）， 直行路口（有红绿灯）， 左转路口， 右转路口， 汇入路口
    todo : 左换道， 右换道， 左换回， 右换回， 换道终止
"""
from color_print_lib import *
import offset_lib
import speed_plan_lib
import base_function
import color_print_lib


"""----------------- 开放道路 ---------------------"""
#辅路插入主路的速度规划
#输入：路口的四个点的坐标[[],[],[],[]]、点的类型('xy' or 'latlon'),最大的车速
#输出：路口规划的车速
#20230110 lukou_ttc_first
def insert_main_road2(points_list,string_point_type,max_plan_speed,obj_lidar_list,ego_content,Map_dict,index2s):
    speed_plan = max_plan_speed
    point1_lat = points_list[0][0]
    point1_lon = points_list[0][1]
    point3_lat = points_list[2][0]
    point3_lon = points_list[2][1]
    point2_lat = points_list[1][0]
    point2_lon = points_list[1][1]
    point4_lat = points_list[3][0]
    point4_lon = points_list[3][1]
    if string_point_type == 'xy':
        UTM_clash_x = point1_lat
        UTM_clash_y = point1_lon
    else:
        coord4 = base_function.from_latlon(point1_lat, point1_lon)
        UTM_clash_x = coord4[0]
        UTM_clash_y = coord4[1]

    index_clash_point = base_function.to_find_nearest_point(Map_dict['X_list'], Map_dict['Y_list'], Map_dict['heading_list'],
                                                       UTM_clash_x, UTM_clash_y)[5]
    try:
        index_ego = base_function.to_find_nearest_point(Map_dict['X_list'], Map_dict['Y_list'], Map_dict['heading_list'],
                                                      ego_content['UTM_x'], ego_content['UTM_y'])[5]
    except:
        index_ego = base_function.to_find_nearest_point(Map_dict['X_list'], Map_dict['Y_list'], Map_dict['heading_list'],
                                          ego_content['ego_x'], ego_content['ego_y'])[5]
    # prRed(str(len(index2s))+str(index_clash_point)+str(index_ego))
    try:
        distance = index2s[index_clash_point] - index2s[index_ego] - 1
    except:
        distance = 100
    # 计算自车的TTC
    ego_TTC = distance / (ego_content['Speed']/3.6 + 0.00001) #Vehicle
    if ego_TTC > 30:
        ego_TTC = 30
    # ego_TTC = distance / ((ego_content['ego_speed'] / 3.6) + 0.0001)  # Simulation
    obj_lidar_3_space_list = []
    crossing_write_dict = {}
    if 12 >= distance >= 0:
        prBlue("自车距离路口<12m")
        line31_pra = base_function.get_a_line_from_two_points(point3_lat,point3_lon,point1_lat,point1_lon,string_point_type)
        line24_pra = base_function.get_a_line_from_two_points(point2_lat,point2_lon,point4_lat,point4_lon,string_point_type)
        bool_ttc_action = False
        # prRed('@@@' + str(obj_lidar_list))
        for i in range(len(obj_lidar_list)):
            dis_to_line31 = base_function.judge_dis_and_sign_to_line(line31_pra,obj_lidar_list[i]['obj_x'],obj_lidar_list[i]['obj_y']) #Vehicle
            dis_to_line24 = base_function.judge_dis_and_sign_to_line(line24_pra,obj_lidar_list[i]['obj_x'],obj_lidar_list[i]['obj_y']) #Vehicle
            # dis_to_line31 = judge_dis_and_sign_to_line(line31_pra,obj_lidar_list[i]['npc_x'],obj_lidar_list[i]['npc_y']) #Simulation
            # dis_to_line24 = judge_dis_and_sign_to_line(line24_pra,obj_lidar_list[i]['npc_x'],obj_lidar_list[i]['npc_y']) #Simulation

            obj_lidar_list[i]['dis_to_line31'] = dis_to_line31
            obj_lidar_list[i]['dis_to_line24'] = dis_to_line24

            if  dis_to_line31 > -60  and dis_to_line31 < 0 and -5.72 < dis_to_line24 < 0:
                bool_ttc_action = True
        if bool_ttc_action:
            prBlue("障碍物在路口碰撞范围内，-60m至5m内，自车减速避让")
            dis_delta_rear = 30
            dis_time_add = 10
            for i in range(len(obj_lidar_list)):
                if -5.72 < obj_lidar_list[i]['dis_to_line24'] < 0 and -60 < obj_lidar_list[i]['dis_to_line31'] < 0:
                    obj_lidar_3_space_list.append(obj_lidar_list[i])

            for i in range(len(obj_lidar_3_space_list)):
                try:
                    dis_delta_front = -obj_lidar_3_space_list[i]['npc_speed'] * ego_TTC
                except:
                    dis_delta_front = -obj_lidar_3_space_list[i]['real_speed'] * ego_TTC
                if dis_delta_front < -1000:
                    dis_delta_front = -1000
                try:
                    dis_pie = abs(obj_lidar_3_space_list[i]['dis_to_line31']) - obj_lidar_3_space_list[i]['npc_speed'] * ego_TTC
                except:
                    dis_pie = abs(obj_lidar_3_space_list[i]['dis_to_line31']) - obj_lidar_3_space_list[i]['real_speed'] * ego_TTC

                obj_lidar_3_space_list[i]['dis_pie'] = dis_pie
                obj_lidar_3_space_list[i]['dis_delta_front'] = dis_delta_front
                obj_lidar_3_space_list[i]['dis_delta_rear'] = dis_delta_rear

                if dis_pie < dis_delta_front:
                    for_obj_speed_plan = max_plan_speed
                    prBlue('for_obj_speed_plan' + str(for_obj_speed_plan) + 'crossing_mode 1')
                    crossing_mode = 1
                elif dis_pie > dis_delta_rear:
                    for_obj_speed_plan = max_plan_speed
                    prBlue('for_obj_speed_plan' + str(for_obj_speed_plan) + 'crossing_mode 2')
                    crossing_mode = 2
                else:

                    try:
                        time_add = (dis_time_add + dis_pie) / (obj_lidar_3_space_list[i]['npc_speed'] + 0.0001)
                    except:
                        time_add = (dis_time_add + dis_pie) / (obj_lidar_3_space_list[i]['real_speed'] + 0.0001)
                    for_obj_speed_plan = distance / (ego_TTC + time_add)
                    if for_obj_speed_plan <= 1.5:
                        for_obj_speed_plan = -1
                    # 对速度进行修正
                    if obj_lidar_3_space_list[i]['real_speed'] < 0.5 and abs(obj_lidar_3_space_list[i]['dis_to_line31']) > 5:
                        for_obj_speed_plan = max_plan_speed
                    prBlue('for_obj_speed_plan' + str(for_obj_speed_plan) + 'crossing_mode 3')
                    crossing_mode = 3
                obj_lidar_3_space_list[i]['for_obj_speed_plan'] = for_obj_speed_plan
                obj_lidar_3_space_list[i]['crossing_mode'] = crossing_mode
                # else:
                #     for_obj_speed_plan = max_plan_speed
                #     obj_lidar_list[i]['for_obj_speed_plan'] = for_obj_speed_plan

            sorted_obj_lidar_list = sorted(obj_lidar_3_space_list, key=lambda x: x['for_obj_speed_plan'])
            if len(sorted_obj_lidar_list) > 0:
                speed_plan = sorted_obj_lidar_list[0]['for_obj_speed_plan']
                crossing_write_dict['ego_speed_crossing'] = ego_content['Speed']
                crossing_write_dict['dis_delta_front'] = sorted_obj_lidar_list[0]['dis_delta_front']
                crossing_write_dict['dis_pie'] = sorted_obj_lidar_list[0]['dis_pie']
                crossing_write_dict['dis_delta_rear'] = sorted_obj_lidar_list[0]['dis_delta_rear']
                crossing_write_dict['crossing_mode'] = sorted_obj_lidar_list[0]['crossing_mode']
                crossing_write_dict['ego_TTC'] = ego_TTC
                crossing_write_dict['dis_to_line31'] = sorted_obj_lidar_list[0]['dis_to_line31']
                crossing_write_dict['real_speed'] = sorted_obj_lidar_list[0]['real_speed']
        else:
            speed_plan = max_plan_speed
    else:
        speed_plan = max_plan_speed

    return speed_plan, distance, obj_lidar_3_space_list, crossing_write_dict


# 开放道路直线道路规划， 具有感兴趣区域划分为3个，以换道功能为主
# 需要设置参数  set_desired_speed=20 为期望速度
def Straight_road_double_line_State(one_light_flag, count_light,ego_content, turn_light_flag_start
                                    ,Side_Turn_Lamp, content, i, set_desired_speed=20):
    print("直双车道！")
    desired_veh_speed_global = ego_content['Speed'] * 0.9 + 0.1 * set_desired_speed
    print("ego_content['Speed']", ego_content['Speed'])

    if turn_light_flag_start == 0 and desired_veh_speed_global <= 0.5 * 14 and one_light_flag == 0:
        Side_Turn_Lamp.publish(1)
        count_light = count_light + 0.02
        if count_light > 30 or desired_veh_speed_global > 5.5:
            one_light_flag = 1
            count_light = 0
    else:
        pass

    roi_out_list = base_function.ROI_sl_double_line()
    front_veh = roi_out_list[0]

    side_safe_flag_list = roi_out_list[3]
    if content['offset'] == -0.01 or content['offset'] == 0:
        i = 0
    elif content['offset'] >= 0.5:
        i += 0.02
    elif content['offset'] <= -0.5:
        i += 0.02
    color_print_lib.prRed("content['offset']"+content['offset']+'i is:'+ " side_safe_flag_list"+side_safe_flag_list[1])

    if content['offset'] == 0 or content['offset'] == -0.01:
        if roi_out_list[2]['s'] <= 40 and side_safe_flag_list[0] and 5 < ego_content['Speed'] <= set_desired_speed:
            offset_lib.lanechange_left()
            desired_veh_speed_global = ego_content['ego_speed'] * 0.8 + 0.2 * 10
            speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=6.5,
                                               target_veh=front_veh, mode=1)
            print("Turn right!!!!")
        else:
            speed_plan_lib.acc_mode_management(desired_veh_speed_global, 6, target_veh=front_veh, mode=3)
            print("Followcar_normal", "desired_veh_speed_global=", desired_veh_speed_global)

    elif content['offset'] >= 0.5 and i >= 7 and side_safe_flag_list[1]:
        offset_lib.lanechange_back_from_left()
        print("from right to back")
        desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * set_desired_speed

        speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=7.5,
                                           target_veh=front_veh, mode=1)
    elif content['offset'] <= -0.5 and i >= 7:
        offset_lib.lanechange_back_from_right()
        print("from left to back")
        desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * set_desired_speed

        speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=7.5,
                                           target_veh=front_veh, mode=1)
    else:
        speed_plan_lib.acc_mode_management(desired_veh_speed_global, 7.5, target_veh=front_veh, mode=3)
        print("follow car******")

# 道路右转规划
# 需要设置参数  set_desired_speed=20 为期望速度
def TurnRight_CrossRoad_list_State(ego_content, set_desired_speed=7.5):
    print("路口右转！！")
    roi_out_list = base_function.ROI_sl_double_line()
    front_veh = roi_out_list[0]
    desired_veh_speed_global = ego_content['Speed'] * 0.9 + 0.1 * set_desired_speed
    speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=7.5,
                                       target_veh=front_veh, mode=1)

# 红绿灯路口通行策略：红灯则减速，绿灯则继承ACC策略
def Straight_CrossRoad_State(traffic_light_state, Straight_CrossRoad_list, ROAD_ID, ego_content,
                             traffic_light_state_key, turn_light_flag_start, Side_Turn_Lamp, content,
                             i, set_desired_speed=20):

    front_veh = base_function.ROI_sl_double_line()[0]
    print('light state', traffic_light_state)
    index = Straight_CrossRoad_list.index(ROAD_ID)
    dis_intersection_stopline = base_function.red_gereen_point_straight(index)
    print('dis to stop line', dis_intersection_stopline)
    desired_veh_speed_global = ego_content['Speed'] * 0.9 + 0.1 * set_desired_speed

    if traffic_light_state == 2 :
        if dis_intersection_stopline >= 30:
            desired_veh_speed_global = ego_content['Speed'] * 0.9 + 0.1 * 10

        elif (dis_intersection_stopline >= 7) and (dis_intersection_stopline < 30):
            print("7-30m")
            desired_veh_speed_global = ego_content['Speed'] * 0.9 + 0.1 * 6

        elif (dis_intersection_stopline >= 0) and (dis_intersection_stopline < 7) :
            print("<7m且红灯")
            desired_veh_speed_global = ego_content['Speed'] * 0.5 + 0.5 * 0

    if (traffic_light_state == 1) or (traffic_light_state_key == 1):
        print("绿灯")
        desired_veh_speed_global = ego_content['Speed'] * 0.9 + 0.1 * set_desired_speed

    print('target speed is :', desired_veh_speed_global)
    print("路口直行！！")

    if turn_light_flag_start == 0 and desired_veh_speed_global <= 7:
        Side_Turn_Lamp.publish(1)

        print("!dadeng", "turn_light_flag_start", turn_light_flag_start)
    else:
        Side_Turn_Lamp.publish(0)
        print("!no turn light", "turn_light_flag_start", turn_light_flag_start)

    if content['offset'] >= 0.5 and i >= 7:
        offset_lib.lanechange_back_from_left()
        print("from right to back")
        desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * 15

        speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=7.5,
                                           target_veh=front_veh, mode=1)
    elif content['offset'] <= -0.5 and i >= 7:
        offset_lib.lanechange_back_from_right()
        print("from left to back")
        desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * 15

        speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=7.5,
                                           target_veh=front_veh, mode=1)

    speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=7.5,
                                       target_veh=front_veh, mode=3)


"""------------------ 封闭道路 --------------------------"""
# 封闭区域直线道路规划，具感兴趣区域划分为5个，有风险场功能和绕障功能
# 需要设置参数  set_desired_speed=20 为期望速度
def Straight_road_simple_line_State(one_light_flag, count_light, ego_content, turn_light_flag_start
                                    , Side_Turn_Lamp, content, i, set_desired_speed=20):
    print("one_light_flag", one_light_flag, count_light)
    print("直路！")
    desired_veh_speed_global = ego_content['Speed'] * 0.9 + 0.1 * set_desired_speed
    print('desir speed is :', desired_veh_speed_global)

    print("turn_light_flag_start", turn_light_flag_start, desired_veh_speed_global, one_light_flag)
    if turn_light_flag_start == 0 and desired_veh_speed_global <= 0.5 * 12 and one_light_flag == 0:
        print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
        Side_Turn_Lamp.publish(1)
        count_light = count_light + 0.02
        if count_light > 30 or desired_veh_speed_global > 5.5:
            one_light_flag = 1
            count_light = 0
        print("!dadeng", "turn_light_flag_start", turn_light_flag_start)
    else:
        pass

    roi_out_list = base_function.ROI_sl_simple_line()
    front_veh = roi_out_list[0]
    side_safe_flag_list = roi_out_list[5]

    if content['offset'] == -0.01 or content['offset'] == 0:
        i = 0
    elif content['offset'] >= 0.5:
        i += 0.02
    elif content['offset'] <= -0.5:
        i += 0.02
    print("content['offset']", content['offset'], 'i is:', i, " side_safe_flag_list", side_safe_flag_list[1])

    if content['offset'] == 0 or content['offset'] == -0.01:
        if roi_out_list[1]['s'] <= 30 and side_safe_flag_list[1] and front_veh['s'] > 40:
            offset_lib.lanechange_right()
            desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * set_desired_speed

            speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=6.5,
                                               target_veh=front_veh, mode=1)
            print("Turn right!!!!")

        elif roi_out_list[2]['s'] <= 30 and side_safe_flag_list[0] and front_veh['s'] > 40:
            offset_lib.lanechange_left()
            print("Turn left!!!!")
            desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * set_desired_speed
            speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=6.5,
                                               target_veh=front_veh, mode=1)
        else:
            if front_veh['s'] <= 70:
                speed_plan_lib.acc_mode_management(desired_veh_speed_global, 7, target_veh=front_veh, mode=3)
                print("Followcar_normal")
            elif roi_out_list[3]['s'] <= 25 or roi_out_list[4]['s'] <= 25:
                desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * (set_desired_speed * 0.5)
                print("jiansutongguo!!")

                speed_plan_lib.acc_mode_management(desired_veh_speed_global, 7.5, target_veh=front_veh, mode=1)
            else:
                speed_plan_lib.acc_mode_management(desired_veh_speed_global, 7.5, target_veh=front_veh, mode=3)
                print("Followcar!!!!!")
    elif content['offset'] >= 0.5 and i >= 7 and side_safe_flag_list[0]:
        offset_lib.lanechange_back_from_left()
        print("from right to back")
        desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * set_desired_speed

        speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=7.5,
                                           target_veh=front_veh, mode=1)
    elif content['offset'] <= -0.5 and i >= 7 and side_safe_flag_list[1]:
        offset_lib.lanechange_back_from_right()
        print("from left to back")
        desired_veh_speed_global = ego_content['Speed'] * 0.8 + 0.2 * set_desired_speed

        speed_plan_lib.acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh=7.5,
                                           target_veh=front_veh, mode=1)
    else:
        speed_plan_lib.acc_mode_management(desired_veh_speed_global, 7.5, target_veh=front_veh, mode=3)
        print("follow car******")