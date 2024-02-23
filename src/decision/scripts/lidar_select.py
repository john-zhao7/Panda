import math

def point2point(x1, x2):
    dis = math.sqrt(math.pow((x2[0] - x1[0]), 2) + math.pow((x2[1] - x1[1]), 2))
    return dis


def discretize_points(point1, point2, num_points):
    x1, y1 = point1
    x2, y2 = point2

    delta_x = (x2 - x1) / (num_points + 1)
    delta_y = (y2 - y1) / (num_points + 1)

    discrete_points = []
    for i in range(1, num_points + 1):
        x = x1 + delta_x * i
        y = y1 + delta_y * i
        discrete_points.append([x, y])

    return discrete_points



def polygon_point(obj_list):

    ob_all_point = []
    if obj_list == []:
        pass
    else:
        for i in range(len(obj_list)-1):
            point = discretize_points(obj_list[i], obj_list[i+1], (math.ceil(math.sqrt(math.pow(obj_list[i][0] - obj_list[i+1][0], 2) + math.pow(obj_list[i][1] - obj_list[i+1][1], 2))))*10)
            ob_all_point += point
        ob_all_point += discretize_points(obj_list[0], obj_list[-1], (math.ceil(math.sqrt(math.pow(obj_list[0][0] - obj_list[-1][0], 2) + math.pow(obj_list[i][1] - obj_list[i+1][1], 2))))*10)
        ob_all_point += obj_list

    return ob_all_point


def loca_change(dis_y, dis_x, ego_content):
    dis_to_ego = math.sqrt(
        math.pow(dis_x, 2) + math.pow(dis_y, 2))
    theta_to_ego = math.atan2(dis_x,
                              dis_y) * 180 / math.pi  # deg
    chage_x = ego_content["UTM_x"] + dis_to_ego * math.cos(
        (ego_content["yaw"] + theta_to_ego) * math.pi / 180)
    chage_y = ego_content["UTM_y"] + dis_to_ego * math.sin(
        (ego_content["yaw"]  + theta_to_ego) * math.pi / 180)
    return [chage_x, chage_y]

def select(object_json):
    dis_x = []
    dis_y = []
    dis_z = []
    obj_all = []
    fence_x = []
    fence_y = []
    view_obj = {}
    obstruct_points = []

    if object_json == {}:
        pass
    else:
        for i in range(len(object_json["objects"])):
            # if (object_json["objects"][i]["area"] < 2 or object_json["objects"][i]["height"] < 0.2):
            #     continue
            dis_point_view=[]
            dis_point=[]
            for j in range(len(object_json["objects"][i]["points"])):

                dis_x.append(object_json["objects"][i]["points"][j]["dis_x"])
                dis_y.append(object_json["objects"][i]["points"][j]["dis_y"])
                dis_z.append(object_json["objects"][i]["points"][j]["dis_z"])
                dis_point.append(
                    [object_json["objects"][i]["points"][j]["dis_x"], object_json["objects"][i]["points"][j]["dis_y"]])
                dis_point_view.append(
                    [object_json["objects"][i]["points"][j]["dis_x"], object_json["objects"][i]["points"][j]["dis_y"]])
            view_obj[i]=polygon_point(dis_point_view)
            obstruct_points+=polygon_point(dis_point)

        for j in range(len(obstruct_points)):
            fence_x.append(obstruct_points[j][0])
            fence_y.append(obstruct_points[j][1])
            obj_all.append([obstruct_points[j][0] ,obstruct_points[j][1]])
    return obj_all,fence_x,fence_y,view_obj

def point_select(obj_list, ego_content):
    cur_location = [ego_content["UTM_x"], ego_content["UTM_y"]]
    min_dis = []
    min_points = []
    obj_all = select(obj_list)
    select_point_list = []

    output = {}
    for k, v in obj_all[3].items():
        min = 999999
        min_point = []
        select_point = {}
        ego_point = v.copy()

        for i in range(len(v)):
            v[i] = loca_change(v[i][0], v[i][1], ego_content)
            point2obs = point2point(v[i],cur_location)
            if point2obs < min :
                min = point2obs
                min_point = ego_point[i]
        if min <50:
            min_dis.append(min)
            min_points.append(min_point)
            select_point['core_x'] = min_point[0]
            select_point['core_y'] = min_point[1]
            select_point['dis'] = min
            select_point_list.append(select_point)

    output['objects'] = select_point_list

    return output


