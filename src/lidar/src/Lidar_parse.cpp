#include "../include/lidar/json.hpp"
#include "lidar/RsPerceptionMsg.h"
#include "ros/ros.h"
#include "std_msgs/String.h"

using namespace std;
class Parse
{
public:
    Parse();
    ~Parse();
    void callback(const lidar::RsPerceptionMsg::ConstPtr& perception_msg);

private:
    ros::NodeHandle nh;
    ros::Subscriber messageSub;
    ros::Publisher msgStringPub;
    ros::Publisher msgStringPubUnknownObject;
};

Parse::Parse()
{
    messageSub = nh.subscribe("/percept_topic", 10, &Parse::callback, this);
    msgStringPub = nh.advertise<std_msgs::String>("/objectlist_json", 10);
    msgStringPubUnknownObject = nh.advertise<std_msgs::String>("/UnKnow_Lidar_from_lidar_to_decision", 10);
}

Parse::~Parse()
{
}

void Parse::callback(const lidar::RsPerceptionMsg::ConstPtr&  perception_msg)
{
    float vel_x,vel_y,vel_z;
    int id;
    float exist_con;
    int type;
    float cen_x,cen_y,cen_z;
    float acc_x,acc_y,acc_z;
    int mot_s;
    int tra_id;

    nlohmann::json  object_json;
    nlohmann::json  object_json_unknown_object;
    // perception_msg.
    for (std::size_t i = 0; i < perception_msg->lidarframe.objects.objects.size(); i++)
    {
        cout<<perception_msg->lidarframe.objects.objects.size()<<endl;
        // cout<<
        const auto& object = perception_msg->lidarframe.objects.objects[i];

        object_json["objects"][i]["id"] = object.coreinfo.priority_id.data;
        object_json["objects"][i]["vel_y"] = object.coreinfo.velocity.x.data;
        object_json["objects"][i]["vel_x"] = object.coreinfo.velocity.y.data;
        object_json["objects"][i]["vel_z"] = object.coreinfo.velocity.z.data;
        object_json["objects"][i]["exist_con"] = object.coreinfo.exist_confidence.data;
        object_json["objects"][i]["type"] = object.coreinfo.type.data;
        object_json["objects"][i]["dis_x"] = object.coreinfo.center.x.data;
        object_json["objects"][i]["dis_y"] = object.coreinfo.center.y.data;
        object_json["objects"][i]["dis_z"] = object.coreinfo.center.z.data;
        object_json["objects"][i]["core_x"] = object.coreinfo.center.x.data;
        object_json["objects"][i]["core_y"] = object.coreinfo.center.y.data;
        object_json["objects"][i]["core_z"] = object.coreinfo.center.z.data;
        object_json["objects"][i]["object_y"] = object.coreinfo.size.x.data;
        object_json["objects"][i]["object_x"] = object.coreinfo.size.y.data;
        object_json["objects"][i]["object_z"] = object.coreinfo.size.z.data;
        object_json["objects"][i]["acc_x"] = object.coreinfo.acceleration.y.data;
        object_json["objects"][i]["acc_y"] = object.coreinfo.acceleration.x.data;
        object_json["objects"][i]["acc_z"] = object.coreinfo.acceleration.z.data;
        object_json["lidar_communication_fault"] = 1;

        int mot_s = object.coreinfo.motion_state.data;
        int tra_id = object.coreinfo.trakcer_id.data;
    }

    for (std::size_t i = 0; i < perception_msg->lidarframe.attention_objects.objects.size(); i++)
    {
        cout<<perception_msg->lidarframe.attention_objects.objects.size()<<endl;
        const auto& attention_object = perception_msg->lidarframe.attention_objects.objects[i];
        if (attention_object.coreinfo.size.z.data <= 0.5)
        {
            cout<<"\033[1;31m0.5m以下的unknow障碍物自动忽略，请注意刹车\033[0m"<<endl;
            continue;
        }
        object_json_unknown_object["objects"][i]["tra_id"] = attention_object.coreinfo.trakcer_id.data;
        object_json_unknown_object["objects"][i]["id"] = attention_object.coreinfo.priority_id.data;
        object_json_unknown_object["objects"][i]["vel_x"] = attention_object.coreinfo.velocity.x.data;
        object_json_unknown_object["objects"][i]["vel_y"] = attention_object.coreinfo.velocity.y.data;
        object_json_unknown_object["objects"][i]["vel_z"] = attention_object.coreinfo.velocity.z.data;
        object_json_unknown_object["objects"][i]["exist_con"] = attention_object.coreinfo.exist_confidence.data;
        object_json_unknown_object["objects"][i]["type"] = attention_object.coreinfo.type.data;
        object_json_unknown_object["objects"][i]["attention_type"] = attention_object.coreinfo.attention_type.data;
        object_json_unknown_object["objects"][i]["motion_state"] = attention_object.coreinfo.motion_state.data;
        object_json_unknown_object["objects"][i]["dis_x"] = attention_object.coreinfo.center.x.data;
        object_json_unknown_object["objects"][i]["dis_y"] = attention_object.coreinfo.center.y.data;
        object_json_unknown_object["objects"][i]["dis_z"] = attention_object.coreinfo.center.z.data;
        object_json_unknown_object["objects"][i]["acc_x"] = attention_object.coreinfo.acceleration.y.data;
        object_json_unknown_object["objects"][i]["acc_y"] = attention_object.coreinfo.acceleration.x.data;
        object_json_unknown_object["objects"][i]["object_y"] = attention_object.coreinfo.size.x.data;
        object_json_unknown_object["objects"][i]["object_x"] = attention_object.coreinfo.size.y.data;
        object_json_unknown_object["objects"][i]["object_z"] = attention_object.coreinfo.size.z.data;
    }

    std_msgs::String object_string;
    std_msgs::String object_string_unknown_object;
    object_string.data=object_json.dump();
    object_string_unknown_object.data=object_json_unknown_object.dump();
    msgStringPub.publish(object_string);
    msgStringPubUnknownObject.publish(object_string_unknown_object);
}

int main(int argc,char** argv){

    ros::init(argc,argv,"Parsed_Pub");
    Parse parser;
    ros::spin();
    return 0;
}
