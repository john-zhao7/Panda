// Generated by gencpp from file lidar/RsPerceptionMsg.msg
// DO NOT EDIT!


#ifndef LIDAR_MESSAGE_RSPERCEPTIONMSG_H
#define LIDAR_MESSAGE_RSPERCEPTIONMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lidar/LidarFrameMsg.h>
#include <std_msgs/Int32.h>

namespace lidar
{
template <class ContainerAllocator>
struct RsPerceptionMsg_
{
  typedef RsPerceptionMsg_<ContainerAllocator> Type;

  RsPerceptionMsg_()
    : lidarframe()
    , device_id()  {
    }
  RsPerceptionMsg_(const ContainerAllocator& _alloc)
    : lidarframe(_alloc)
    , device_id(_alloc)  {
  (void)_alloc;
    }



   typedef  ::lidar::LidarFrameMsg_<ContainerAllocator>  _lidarframe_type;
  _lidarframe_type lidarframe;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _device_id_type;
  _device_id_type device_id;





  typedef boost::shared_ptr< ::lidar::RsPerceptionMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar::RsPerceptionMsg_<ContainerAllocator> const> ConstPtr;

}; // struct RsPerceptionMsg_

typedef ::lidar::RsPerceptionMsg_<std::allocator<void> > RsPerceptionMsg;

typedef boost::shared_ptr< ::lidar::RsPerceptionMsg > RsPerceptionMsgPtr;
typedef boost::shared_ptr< ::lidar::RsPerceptionMsg const> RsPerceptionMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar::RsPerceptionMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar::RsPerceptionMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar::RsPerceptionMsg_<ContainerAllocator1> & lhs, const ::lidar::RsPerceptionMsg_<ContainerAllocator2> & rhs)
{
  return lhs.lidarframe == rhs.lidarframe &&
    lhs.device_id == rhs.device_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar::RsPerceptionMsg_<ContainerAllocator1> & lhs, const ::lidar::RsPerceptionMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lidar::RsPerceptionMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar::RsPerceptionMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::RsPerceptionMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::RsPerceptionMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::RsPerceptionMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::RsPerceptionMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar::RsPerceptionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ed114efee5ecd5e94f0dbd1aa700b6d";
  }

  static const char* value(const ::lidar::RsPerceptionMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ed114efee5ecd5eULL;
  static const uint64_t static_value2 = 0x94f0dbd1aa700b6dULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar::RsPerceptionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar/RsPerceptionMsg";
  }

  static const char* value(const ::lidar::RsPerceptionMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar::RsPerceptionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Field Of LidarFrameMsg \n"
"LidarFrameMsg  lidarframe \n"
"std_msgs/Int32 device_id\n"
"\n"
"================================================================================\n"
"MSG: lidar/LidarFrameMsg\n"
"\n"
"\n"
"std_msgs/String frame_id\n"
"std_msgs/Float64 timestamp \n"
"Pose             global_pose \n"
"Point3d          gps_origin \n"
"PoseMap          status_pose_map \n"
"std_msgs/Int32   status \n"
"Indices          valid_indices \n"
"Objects          objects \n"
"\n"
"std_msgs/Bool  has_pointcloud \n"
"Point4f[]      scan_pointcloud \n"
"\n"
"std_msgs/Bool  has_attention_objects \n"
"Objects        attention_objects \n"
"\n"
"std_msgs/Bool  has_freespace \n"
"FreeSpaceInfos freespace_infos \n"
"\n"
"std_msgs/Bool   has_lanes \n"
"Lanes           lanes \n"
"\n"
"std_msgs/Bool   has_roadedges \n"
"RoadEdges       roadedges \n"
"\n"
"std_msgs/Bool   has_sematice_indices \n"
"Indices         non_ground_indices\n"
"Indices         ground_indices \n"
"Indices         background_indices \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64\n"
"float64 data\n"
"================================================================================\n"
"MSG: lidar/Pose\n"
"std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"std_msgs/Float32 z \n"
"\n"
"std_msgs/Float32 roll \n"
"std_msgs/Float32 pitch\n"
"std_msgs/Float32 yaw\n"
"\n"
"std_msgs/Int32 status \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
"================================================================================\n"
"MSG: std_msgs/Int32\n"
"int32 data\n"
"================================================================================\n"
"MSG: lidar/Point3d\n"
"std_msgs/Float64 x \n"
"std_msgs/Float64 y \n"
"std_msgs/Float64 z \n"
"\n"
"================================================================================\n"
"MSG: lidar/PoseMap\n"
"AxisStatusPose[] status_poses \n"
"\n"
"================================================================================\n"
"MSG: lidar/AxisStatusPose\n"
"std_msgs/Int32 status \n"
"Pose           pose \n"
"================================================================================\n"
"MSG: lidar/Indices\n"
"std_msgs/Int32[]    indices\n"
"================================================================================\n"
"MSG: lidar/Objects\n"
"Object[]         objects\n"
"================================================================================\n"
"MSG: lidar/Object\n"
"CoreInfo coreinfo\n"
"std_msgs/Bool  hassupplmentinfo \n"
"SupplementInfo supplementinfo \n"
"\n"
"================================================================================\n"
"MSG: lidar/CoreInfo\n"
"std_msgs/Float64 timestamp\n"
"\n"
"std_msgs/Int32 priority_id\n"
"std_msgs/Float32 exist_confidence \n"
"Point3f          center \n"
"Point3f          center_cov \n"
"Point3f          size \n"
"Point3f          size_cov \n"
"Point3f          direction \n"
"Point3f          direction_cov         \n"
"std_msgs/Int32   type \n"
"std_msgs/Float32 type_confidence \n"
"std_msgs/Int32   attention_type \n"
"std_msgs/Int32   motion_state\n"
"std_msgs/Int32   lane_pos\n"
"std_msgs/Int32   trakcer_id \n"
"std_msgs/Float64 age \n"
"Point3f          velocity \n"
"Point3f          velocity_cov \n"
"Point3f          acceleration \n"
"Point3f          acceleration_cov \n"
"std_msgs/Float32 angle_velocity \n"
"std_msgs/Float32 angle_velocity_cov \n"
"std_msgs/Float32 angle_acceleration \n"
"std_msgs/Float32 angle_acceleration_cov  \n"
"Point3f          anchor \n"
"Point3f          nearest_point \n"
"\n"
"\n"
"================================================================================\n"
"MSG: lidar/Point3f\n"
"std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"std_msgs/Float32 z \n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
"================================================================================\n"
"MSG: lidar/SupplementInfo\n"
"std_msgs/UInt32     unique_id\n"
"\n"
"Point3f[]           polygon\n"
"std_msgs/Int32      left_point_index \n"
"std_msgs/Int32      right_point_index \n"
"\n"
"std_msgs/Int32[]    cloud_indices\n"
"\n"
"std_msgs/Float32[]  latent_types\n"
"std_msgs/Int32      size_type \n"
"std_msgs/Int32      mode \n"
"std_msgs/Bool       in_roi \n"
"std_msgs/Int32      tracking_state\n"
"Point3f             geo_center \n"
"Point3f             geo_size \n"
"\n"
"\n"
"\n"
"Point3f[]           trajectory \n"
"Point3f[]           history_velocity\n"
"std_msgs/Int32[]    history_type \n"
"std_msgs/Int32      gps_mode \n"
"Point3d             gps_info \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/UInt32\n"
"uint32 data\n"
"================================================================================\n"
"MSG: lidar/Point4f\n"
"std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"std_msgs/Float32 z \n"
"std_msgs/Float32 i \n"
"\n"
"================================================================================\n"
"MSG: lidar/FreeSpaceInfos\n"
"Point3f[]        fs_pts\n"
"std_msgs/Float32[] fs_confidence \n"
"\n"
"================================================================================\n"
"MSG: lidar/Lanes\n"
"Lane[] lanes\n"
"================================================================================\n"
"MSG: lidar/Lane\n"
"std_msgs/Int32   lane_id \n"
"Curve            curve \n"
"EndPoints        end_points \n"
"std_msgs/Int32   measure_status  \n"
"std_msgs/Float32 confidence \n"
"\n"
"================================================================================\n"
"MSG: lidar/Curve\n"
"std_msgs/Float32 x_start \n"
"std_msgs/Float32 x_end \n"
"std_msgs/Float32 a \n"
"std_msgs/Float32 b \n"
"std_msgs/Float32 c \n"
"std_msgs/Float32 d \n"
"================================================================================\n"
"MSG: lidar/EndPoints\n"
"Point2f start \n"
"Point2f end \n"
"\n"
"================================================================================\n"
"MSG: lidar/Point2f\n"
"std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"\n"
"================================================================================\n"
"MSG: lidar/RoadEdges\n"
"RoadEdge[] curbs\n"
"\n"
"================================================================================\n"
"MSG: lidar/RoadEdge\n"
"std_msgs/Int32   roadedge_id  \n"
"Curve            curve \n"
"EndPoints        end_points \n"
"std_msgs/Int32   measure_status  \n"
"std_msgs/Float32 confidence \n"
;
  }

  static const char* value(const ::lidar::RsPerceptionMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar::RsPerceptionMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lidarframe);
      stream.next(m.device_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RsPerceptionMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar::RsPerceptionMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar::RsPerceptionMsg_<ContainerAllocator>& v)
  {
    s << indent << "lidarframe: ";
    s << std::endl;
    Printer< ::lidar::LidarFrameMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.lidarframe);
    s << indent << "device_id: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.device_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_MESSAGE_RSPERCEPTIONMSG_H
