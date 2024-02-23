#!/usr/bin/python3
import json
import rospy
from std_msgs.msg import String
from car_interfaces.msg import RsPerceptionMsg
from car_interfaces.msg import LidarObject

class Parse:
    def __init__(self):
        rospy.init_node("parsed_pub")
        self.MessageSub = rospy.Subscriber("/percept_topic", RsPerceptionMsg, self.callback, queue_size=10)
        self.msg_string_pub = rospy.Publisher("/objectlist_json", String, queue_size=10)
        self.msg_string_pub_unknown_object = rospy.Publisher("/UnKnow_Lidar_from_lidar_to_decision", String, queue_size=10)

    def callback(self, perception_msg):
        object_json = {"objects": []}
        object_json_unknown_object = {"objects": []}

        for object in perception_msg.lidarframe.objects.objects:
            object_json["objects"].append({
                "id": object.coreinfo.priority_id.data,
                "vel_y": object.coreinfo.velocity.x.data,  #这里比较乱
                "vel_x": object.coreinfo.velocity.y.data,
                "vel_z": object.coreinfo.velocity.z.data,
                # "exist_con": object.coreinfo.exist_confidence.data,
                "type": object.coreinfo.type.data,
                "dis_x": object.coreinfo.center.x.data,
                "dis_y": object.coreinfo.center.y.data,#方向注意
                "dis_z": object.coreinfo.center.z.data,
                # "core_x": object.coreinfo.center.x.data,
                # "core_y": object.coreinfo.center.y.data,
                # "core_z": object.coreinfo.center.z.data,
                "object_y": object.coreinfo.size.x.data,
                "object_x": object.coreinfo.size.y.data,
                "object_z": object.coreinfo.size.z.data,
                # "acc_x": object.coreinfo.acceleration.y.data,
                # "acc_y": object.coreinfo.acceleration.x.data,
                # "acc_z": object.coreinfo.acceleration.z.data,
                # "lidar_communication_fault": 1
            })

        for object in perception_msg.lidarframe.attention_objects.objects:
            if object.coreinfo.age.data >= 0:
                object_json_unknown_object["objects"].append({
                    "tra_id": object.coreinfo.trakcer_id.data,
                    "id": object.coreinfo.priority_id.data,
                    "vel_x": object.coreinfo.velocity.x.data,
                    "vel_y": object.coreinfo.velocity.y.data,
                    "vel_z": object.coreinfo.velocity.z.data,
                    "exist_con": object.coreinfo.exist_confidence.data,
                    "type": object.coreinfo.type.data,
                    "attention_type": object.coreinfo.attention_type.data,
                    "motion_state": object.coreinfo.motion_state.data,
                    "dis_x": object.coreinfo.center.x.data, #方向注意
                    "dis_y": object.coreinfo.center.y.data,
                    "dis_z": object.coreinfo.center.z.data,
                    "acc_x": object.coreinfo.acceleration.y.data,
                    "acc_y": object.coreinfo.acceleration.x.data,
                    "acc_z": object.coreinfo.acceleration.z.data,
                    "age": object.coreinfo.age.data
                })

        object_string = json.dumps(object_json)
        object_string_unknown_object = json.dumps(object_json_unknown_object)
        self.msg_string_pub.publish(object_string)
        self.msg_string_pub_unknown_object.publish(object_string_unknown_object)

def main():
    parse = Parse()
    rospy.spin()

if __name__ == "__main__":
    main()