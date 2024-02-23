## BEGIN_TUTORIAL
## This CMakeLists.txt file for rviz_plugin_tutorials builds both the
## TeleopPanel tutorial and the ImuDisplay tutorial.
##
## First start with some standard catkin stuff.
cmake_minimum_required(VERSION 2.8.3)
project(lidar)


# 添加Catkin 
find_package(catkin REQUIRED COMPONENTS 
        message_generation
        message_runtime
        rviz
        cv_bridge
        genmsg
        pcl_conversions
        pcl_ros
        roscpp
        rospy
        std_msgs
        geometry_msgs
        sensor_msgs
        )


add_message_files(
        DIRECTORY msg
        FILES 
        Point2f.msg
        Point3f.msg
        Point4f.msg 
        Point3d.msg 
        Matrix3f.msg
        Indices.msg  
        EndPoints.msg 
        Curve.msg
        CoreInfo.msg 
        SupplementInfo.msg
        Object.msg 
        Objects.msg 
        FreeSpaceInfos.msg 
        Lane.msg 
        Lanes.msg 
        RoadEdge.msg 
        RoadEdges.msg    
        Pose.msg 
        AxisStatusPose.msg 
        PoseMap.msg
        LidarFrameMsg.msg 
        RsPerceptionMsg.msg
        LidarObject.msg 
        LidarObjectList.msg
        StringStamped.msg
)

generate_messages(
        DEPENDENCIES
        std_msgs
        geometry_msgs
        sensor_msgs
)

catkin_package(
        CATKIN_DEPENDS std_msgs message_runtime message_generation roscpp rospy
)


include_directories(
                include
                ${catkin_INCLUDE_DIRS}
                ${CMAKE_CURRENT_SOURCE_DIR}/devel/include
                ${PROJECT_SOURCE_DIR}/msg  # 修改此行
)


add_executable(lidar src/Lidar_parse.cpp)
target_link_libraries(lidar ${catkin_LIBRARIES})
add_dependencies(lidar ${PROJECT_NAME}_generate_messages_cpp)
