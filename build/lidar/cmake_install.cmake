# Install script for directory: /home/nvidia/las/src/lidar

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/las/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar/msg" TYPE FILE FILES
    "/home/nvidia/las/src/lidar/msg/Point2f.msg"
    "/home/nvidia/las/src/lidar/msg/Point3f.msg"
    "/home/nvidia/las/src/lidar/msg/Point4f.msg"
    "/home/nvidia/las/src/lidar/msg/Point3d.msg"
    "/home/nvidia/las/src/lidar/msg/Matrix3f.msg"
    "/home/nvidia/las/src/lidar/msg/Indices.msg"
    "/home/nvidia/las/src/lidar/msg/EndPoints.msg"
    "/home/nvidia/las/src/lidar/msg/Curve.msg"
    "/home/nvidia/las/src/lidar/msg/CoreInfo.msg"
    "/home/nvidia/las/src/lidar/msg/SupplementInfo.msg"
    "/home/nvidia/las/src/lidar/msg/Object.msg"
    "/home/nvidia/las/src/lidar/msg/Objects.msg"
    "/home/nvidia/las/src/lidar/msg/FreeSpaceInfos.msg"
    "/home/nvidia/las/src/lidar/msg/Lane.msg"
    "/home/nvidia/las/src/lidar/msg/Lanes.msg"
    "/home/nvidia/las/src/lidar/msg/RoadEdge.msg"
    "/home/nvidia/las/src/lidar/msg/RoadEdges.msg"
    "/home/nvidia/las/src/lidar/msg/Pose.msg"
    "/home/nvidia/las/src/lidar/msg/AxisStatusPose.msg"
    "/home/nvidia/las/src/lidar/msg/PoseMap.msg"
    "/home/nvidia/las/src/lidar/msg/LidarFrameMsg.msg"
    "/home/nvidia/las/src/lidar/msg/RsPerceptionMsg.msg"
    "/home/nvidia/las/src/lidar/msg/LidarObject.msg"
    "/home/nvidia/las/src/lidar/msg/LidarObjectList.msg"
    "/home/nvidia/las/src/lidar/msg/StringStamped.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar/cmake" TYPE FILE FILES "/home/nvidia/las/build/lidar/catkin_generated/installspace/lidar-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/las/devel/include/lidar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/las/devel/share/roseus/ros/lidar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/las/devel/share/common-lisp/ros/lidar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/las/devel/share/gennodejs/ros/lidar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nvidia/las/devel/lib/python3/dist-packages/lidar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/las/devel/lib/python3/dist-packages/lidar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/las/build/lidar/catkin_generated/installspace/lidar.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar/cmake" TYPE FILE FILES "/home/nvidia/las/build/lidar/catkin_generated/installspace/lidar-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar/cmake" TYPE FILE FILES
    "/home/nvidia/las/build/lidar/catkin_generated/installspace/lidarConfig.cmake"
    "/home/nvidia/las/build/lidar/catkin_generated/installspace/lidarConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lidar" TYPE FILE FILES "/home/nvidia/las/src/lidar/package.xml")
endif()

