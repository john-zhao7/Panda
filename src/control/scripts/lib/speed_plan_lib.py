"""
    本库函数包主要包括以ACC为主的速度规划的函数
"""
import math
import base_function
import json

# ACC模式选择
# 输入：期望速度，最小跟随距离， 目标车辆， 原则模式
def acc_mode_management(desired_veh_speed_global, min_distance_ego2front_veh, target_veh, mode, pub_ros_acc_model):
    global ego_content
    global lane_change_speed_triger
    global acc_mode_1egov_2frontv_3distance
    global distance_ego2front_veh_hold
    global Flag_distance_spike_1st_time
    global opt_distance_ego2front_veh_final
    global opt_distance_ego2front_veh_filter

    desired_veh_speed_global = desired_veh_speed_global
    min_distance_ego2front_veh = min_distance_ego2front_veh  # point is 13, car is 35
    reaction_time = 2
    ego_speed = ego_content['Speed']

    try:
        length_front_veh = target_veh['length']
    except:
        length_front_veh = 3

    try:
        distance_ego2front_veh = target_veh['s'] - length_front_veh / 2
    except:
        distance_ego2front_veh = 100
    if math.isnan(distance_ego2front_veh):
        distance_ego2front_veh = 100
    # print("distance_ego2front_veh",distance_ego2front_veh)
    # Kang, 2022-6-2, I think this should be d_y not square of (d_x^2 + d_y^2)

    try:
        speed_error_to_front_veh = target_veh['v_y'] * 3.6
    except:
        speed_error_to_front_veh = 0

    opt_distance_ego2front_veh = min_distance_ego2front_veh + reaction_time * ego_speed / 3.6 + ego_content["A_ego"]*2

    # kang, using a low pass fitler with spike mitigation, 20220604
    if distance_ego2front_veh < opt_distance_ego2front_veh:
        if distance_ego2front_veh_hold - distance_ego2front_veh > 3:
            # kang, we focus on the unexpected cutting-int scenario,
            # sometimes, 150m distance occurs when the camera lost the objective. If so, we just ignore it.
            # Actions:
            # reset the filter once the deviation of ego2front_veh_distance is over 3m
            # by doing so, the ego vehicle will follow the vehicle that cut in, thereby abrupt braking can be avoided
            if Flag_distance_spike_1st_time == 1:
                opt_distance_ego2front_veh_filter = max(distance_ego2front_veh, min_distance_ego2front_veh + 4)
                Flag_distance_spike_1st_time = 0
        else:
            Flag_distance_spike_1st_time = 1
    opt_distance_ego2front_veh_filter = opt_distance_ego2front_veh_filter + 0.02 / 0.025 * (
            opt_distance_ego2front_veh - opt_distance_ego2front_veh_filter)
    # 0.02 is the discrete time step
    # 0.025 is the time constant of the low pass filter, Kang, 20220925
    # TODO 4 _>1 or 0.5
    distance_ego2front_veh_hold = distance_ego2front_veh  # kang, store the previous distance to front vehicle
    # kang, using a low pass filter with spike mitigation, 20220604

    opt_distance_ego2front_veh_final = opt_distance_ego2front_veh_filter
    print("%%%%%%%%%%%%%opt_distance_ego2front_veh_final",opt_distance_ego2front_veh_final)
    '''if distance_ego2front_veh > opt_distance_ego2front_veh * 1.2:  # 车辆间距足够大，定速巡航
        acc_mode_1egov_2frontv_3distance = 1
    else:
        # if ego_speed > front_veh_speed + 2:
        #     acc_mode_1egov_2frontv_3distance = 3
        # elif ego_speed < front_veh_speed - 2:
        #     acc_mode_1egov_2frontv_3distance = 1'''

    if distance_ego2front_veh > min_distance_ego2front_veh + reaction_time * 45 / 3.6:  # cruising mode as the front vehicle is far ahead
        acc_mode_1egov_2frontv_3distance = 1
        print('flag 1')
    elif distance_ego2front_veh > min_distance_ego2front_veh + 6:
        # within the car-following mode distance, but we can either use constant distance mode or constant speed mode
        if speed_error_to_front_veh > 5 and ego_speed > 10:
            # we use the constant speed cruising mode when the front vehicle is moving away to avoid unnecessary jerk
            acc_mode_1egov_2frontv_3distance = 3
            print('flag 2')
        else:
            # we use the constant distance mode when the front vehicle is near
            # we also use the constant distance mode, otherwise frequency mode switching between 1 and 3 can cause jerk
            acc_mode_1egov_2frontv_3distance = 3
            print('flag 3')
    else:  # car following or emergency mode as the front vehicle is too near to be safe
        acc_mode_1egov_2frontv_3distance = 3
        print('flag 4')

    print('mode is :', mode)

    acc_mode_content = {'model': mode,
                        'distance_ego2front_veh': distance_ego2front_veh,
                        'speed_error_to_front_veh': speed_error_to_front_veh,
                        'opt_distance': opt_distance_ego2front_veh_final,
                        'desired_veh_speed_global': desired_veh_speed_global,
                        'lane_change_speed_triger': lane_change_speed_triger,
                        'roadID': ROAD_ID}
    pub_ros_acc_model.publish(json.dumps(acc_mode_content))

# 根据某点的经纬度规划速度
# 输入该点的纬度，经度，ego_content, 远距离速度，近距离速度，减速距离，减速系数
# 输出：期望速度
def local_speed_plan(lat, lon, ego_content, speed_far, speed_near, Deceleration_distancespeed=40, Deceleration_coefficient=0.15):
    #  Lat:34.9680763	lon:115.868014  wan dao roadID=17
    global desired_veh_speed_global

    coord4 = base_function.from_latlon(lat,lon)
    UTM_intersection_stopline_x = coord4[0]
    UTM_intersection_stopline_y = coord4[1]
    dis_intersection_stopline = math.sqrt(math.pow(UTM_intersection_stopline_x - ego_content['UTM_x'], 2)
                                          + math.pow(UTM_intersection_stopline_y - ego_content['UTM_y'], 2))

    print('dis to stop line', dis_intersection_stopline)
    if dis_intersection_stopline >= Deceleration_distancespeed:
        desired_veh_speed_global = speed_far

    elif (dis_intersection_stopline < Deceleration_distancespeed):
        print("Enter deceleration range， Deceleration_distancespeed is", Deceleration_distancespeed)
        desired_veh_speed_global = speed_near + Deceleration_coefficient * dis_intersection_stopline
    elif (dis_intersection_stopline < 0):
        desired_veh_speed_global = speed_near

    return desired_veh_speed_global


# 根据距离障碍物的距离进行速度规划
# 输入：距离障碍物距离，远距离速度，三个距离区间
def abstacle_speed_plan(dis_to_obstacle, speed_ori, safe_distence1=30, safe_distence2=20, safe_distence3=10):
    global ego_content
    #  Lat:34.9680763	lon:115.868014  wan dao roadID=17
    print('dis to obstacle ', dis_to_obstacle)
    desired_veh_speed_global = speed_ori
    if (dis_to_obstacle >= safe_distence2) and (dis_to_obstacle < safe_distence1):
        desired_veh_speed_global = ego_content['Speed'] * 0.7 + 0.3 * speed_ori * 0.8

    elif (dis_to_obstacle >= safe_distence3) and (dis_to_obstacle < safe_distence2):
        print("10-20m")
        desired_veh_speed_global = ego_content['Speed'] * 0.7 + 0.3 * speed_ori * 0.7
    elif (dis_to_obstacle < safe_distence3):
        desired_veh_speed_global = ego_content['Speed'] * 0.7 + 0.3 * speed_ori * 0.55

    return desired_veh_speed_global