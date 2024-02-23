// Generated by gencpp from file lidar/PoseMap.msg
// DO NOT EDIT!


#ifndef LIDAR_MESSAGE_POSEMAP_H
#define LIDAR_MESSAGE_POSEMAP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lidar/AxisStatusPose.h>

namespace lidar
{
template <class ContainerAllocator>
struct PoseMap_
{
  typedef PoseMap_<ContainerAllocator> Type;

  PoseMap_()
    : status_poses()  {
    }
  PoseMap_(const ContainerAllocator& _alloc)
    : status_poses(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::lidar::AxisStatusPose_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::lidar::AxisStatusPose_<ContainerAllocator> >> _status_poses_type;
  _status_poses_type status_poses;





  typedef boost::shared_ptr< ::lidar::PoseMap_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar::PoseMap_<ContainerAllocator> const> ConstPtr;

}; // struct PoseMap_

typedef ::lidar::PoseMap_<std::allocator<void> > PoseMap;

typedef boost::shared_ptr< ::lidar::PoseMap > PoseMapPtr;
typedef boost::shared_ptr< ::lidar::PoseMap const> PoseMapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar::PoseMap_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar::PoseMap_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar::PoseMap_<ContainerAllocator1> & lhs, const ::lidar::PoseMap_<ContainerAllocator2> & rhs)
{
  return lhs.status_poses == rhs.status_poses;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar::PoseMap_<ContainerAllocator1> & lhs, const ::lidar::PoseMap_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lidar::PoseMap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar::PoseMap_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::PoseMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::PoseMap_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::PoseMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::PoseMap_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar::PoseMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "51fc7df0ce0cb8096f687175e8cb1f26";
  }

  static const char* value(const ::lidar::PoseMap_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x51fc7df0ce0cb809ULL;
  static const uint64_t static_value2 = 0x6f687175e8cb1f26ULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar::PoseMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar/PoseMap";
  }

  static const char* value(const ::lidar::PoseMap_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar::PoseMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "AxisStatusPose[] status_poses \n"
"\n"
"================================================================================\n"
"MSG: lidar/AxisStatusPose\n"
"std_msgs/Int32 status \n"
"Pose           pose \n"
"================================================================================\n"
"MSG: std_msgs/Int32\n"
"int32 data\n"
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
;
  }

  static const char* value(const ::lidar::PoseMap_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar::PoseMap_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status_poses);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseMap_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar::PoseMap_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar::PoseMap_<ContainerAllocator>& v)
  {
    s << indent << "status_poses[]" << std::endl;
    for (size_t i = 0; i < v.status_poses.size(); ++i)
    {
      s << indent << "  status_poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lidar::AxisStatusPose_<ContainerAllocator> >::stream(s, indent + "    ", v.status_poses[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_MESSAGE_POSEMAP_H