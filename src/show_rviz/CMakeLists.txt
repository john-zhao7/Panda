cmake_minimum_required(VERSION 2.8.3)
project(show_rviz)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  car_interfaces
  message_generation
  message_runtime
)



catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES car_interfaces
 CATKIN_DEPENDS message_generation message_runtime roscpp rospy std_msgs
#  DEPENDS system_lib
)
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)


add_executable(by_marker src/marker.cpp)
target_link_libraries(by_marker ${catkin_LIBRARIES})

add_executable(by_marker_list src/marker_list.cpp)
target_link_libraries(by_marker_list ${catkin_LIBRARIES})

add_executable(by_path src/path.cpp)
target_link_libraries(by_path ${catkin_LIBRARIES})

add_dependencies(by_path car_interfaces_generate_messages_cpp)

