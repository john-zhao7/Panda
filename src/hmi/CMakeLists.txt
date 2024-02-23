cmake_minimum_required(VERSION 3.0.2)
project(hmi)
add_compile_options(-std=c++11)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  cv_bridge
  std_msgs
  message_generation message_runtime
)


find_package(Qt5 REQUIRED COMPONENTS  Widgets Gui PrintSupport)  
find_package(OpenCV REQUIRED)  
find_package(rviz REQUIRED)  


set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
qt5_add_resources(qrc_FILES image.qrc)

set(include
    src/mainwindow.h
    src/datapublisherthread.h
    src/carmoniterwidget.h
    src/faultdetectwidget.h
    src/instructiondeliverwidget.h
    src/mapcollectwidget.h
    src/nodemanagewidget.h
    src/pathdrawwidget.h
    src/datareceiverthread.h
    src/msgprocesstools.h
    src/perceivedresultwidget.h
    src/matplotpathdrawwidget.h
    src/qcustomplot.h
    src/rvizmodulewidget.h
)

set(SOURCES
  src/main.cpp
  src/mainwindow.cpp
  src/datapublisherthread.cpp
  src/carmoniterwidget.cpp
  src/faultdetectwidget.cpp
  src/instructiondeliverwidget.cpp
  src/mapcollectwidget.cpp
  src/nodemanagewidget.cpp
  src/pathdrawwidget.cpp
  src/datareceiverthread.cpp
  src/msgprocesstools.cpp
  src/perceivedresultwidget.cpp
  src/matplotpathdrawwidget.cpp
  src/qcustomplot.cpp
  src/rvizmodulewidget.cpp
)

#set(FORMS
#  src/mainwindow.ui
#)

## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   GlobalPathPlanningInterface.msg
   GpsImuInterface.msg
   HmiStartEndPointInterface.msg
   FaultDiagnosisInterface.msg
   PathSpeedCtrlInterface.msg
   CarOriInterface.msg
   NodePointsInterface.msg
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
 )

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES package
#  CATKIN_DEPENDS roscpp rospy std_msgs
CATKIN_DEPENDS message_generation message_runtime roscpp rospy std_msgs
)


set(CATKIN_PACKAGE_SHARE_DESTINATION "${CMAKE_INSTALL_PREFIX}/share/${PROJECT_NAME}")


MESSAGE(STATUS "Current path : ${CMAKE_CURRENT_SOURCE_DIR}")
#: /home/jkroly/Jkroly/Code/AIConnect/src/hmi
#: /home/jkroly/Jkroly/Code/AIConnect/devel/include/hmi
include_directories(
  include/hmi
  ${catkin_INCLUDE_DIRS}
  /usr/include/OGRE
  ${PYTHON_INCLUDE_DIRS}
  #${CMAKE_CURRENT_SOURCE_DIR}/include
)


add_executable(${PROJECT_NAME}_node ${SOURCES} ${FORMS} ${qrc_FILES})
target_link_libraries(${PROJECT_NAME}_node
  ${catkin_LIBRARIES}
)
target_link_libraries(${PROJECT_NAME}_node  Qt5::Widgets Qt5::PrintSupport)
target_link_libraries(${PROJECT_NAME}_node  ${OpenCV_LIBS})
target_link_libraries(${PROJECT_NAME}_node ${rviz_LIBRARIES})

