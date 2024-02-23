#include<ros/ros.h>
#include "lidar/RsPerceptionMsg.h"
class Parse{
public:
    Parse();
    ~Parse();
private:
    ros::Subscriber MessageSub;
    ros::Publisher msg_string_pub;
    ros::Publisher msg_string_pub_unknown_object;
    ros::Publisher msg_stringStamped_pub;

    void callback(lidar::RsPerceptionMsg perception_msg);
};

