// Generated by gencpp from file lidar/RoadEdge.msg
// DO NOT EDIT!


#ifndef LIDAR_MESSAGE_ROADEDGE_H
#define LIDAR_MESSAGE_ROADEDGE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Int32.h>
#include <lidar/Curve.h>
#include <lidar/EndPoints.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Float32.h>

namespace lidar
{
template <class ContainerAllocator>
struct RoadEdge_
{
  typedef RoadEdge_<ContainerAllocator> Type;

  RoadEdge_()
    : roadedge_id()
    , curve()
    , end_points()
    , measure_status()
    , confidence()  {
    }
  RoadEdge_(const ContainerAllocator& _alloc)
    : roadedge_id(_alloc)
    , curve(_alloc)
    , end_points(_alloc)
    , measure_status(_alloc)
    , confidence(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Int32_<ContainerAllocator>  _roadedge_id_type;
  _roadedge_id_type roadedge_id;

   typedef  ::lidar::Curve_<ContainerAllocator>  _curve_type;
  _curve_type curve;

   typedef  ::lidar::EndPoints_<ContainerAllocator>  _end_points_type;
  _end_points_type end_points;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _measure_status_type;
  _measure_status_type measure_status;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::lidar::RoadEdge_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar::RoadEdge_<ContainerAllocator> const> ConstPtr;

}; // struct RoadEdge_

typedef ::lidar::RoadEdge_<std::allocator<void> > RoadEdge;

typedef boost::shared_ptr< ::lidar::RoadEdge > RoadEdgePtr;
typedef boost::shared_ptr< ::lidar::RoadEdge const> RoadEdgeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar::RoadEdge_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar::RoadEdge_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar::RoadEdge_<ContainerAllocator1> & lhs, const ::lidar::RoadEdge_<ContainerAllocator2> & rhs)
{
  return lhs.roadedge_id == rhs.roadedge_id &&
    lhs.curve == rhs.curve &&
    lhs.end_points == rhs.end_points &&
    lhs.measure_status == rhs.measure_status &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar::RoadEdge_<ContainerAllocator1> & lhs, const ::lidar::RoadEdge_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lidar::RoadEdge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar::RoadEdge_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::RoadEdge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::RoadEdge_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::RoadEdge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::RoadEdge_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar::RoadEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18d874dc862d1be92aa83f7d5c965158";
  }

  static const char* value(const ::lidar::RoadEdge_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18d874dc862d1be9ULL;
  static const uint64_t static_value2 = 0x2aa83f7d5c965158ULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar::RoadEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar/RoadEdge";
  }

  static const char* value(const ::lidar::RoadEdge_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar::RoadEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Int32   roadedge_id  \n"
"Curve            curve \n"
"EndPoints        end_points \n"
"std_msgs/Int32   measure_status  \n"
"std_msgs/Float32 confidence \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Int32\n"
"int32 data\n"
"================================================================================\n"
"MSG: lidar/Curve\n"
"std_msgs/Float32 x_start \n"
"std_msgs/Float32 x_end \n"
"std_msgs/Float32 a \n"
"std_msgs/Float32 b \n"
"std_msgs/Float32 c \n"
"std_msgs/Float32 d \n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
"================================================================================\n"
"MSG: lidar/EndPoints\n"
"Point2f start \n"
"Point2f end \n"
"\n"
"================================================================================\n"
"MSG: lidar/Point2f\n"
"std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
;
  }

  static const char* value(const ::lidar::RoadEdge_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar::RoadEdge_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roadedge_id);
      stream.next(m.curve);
      stream.next(m.end_points);
      stream.next(m.measure_status);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoadEdge_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar::RoadEdge_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar::RoadEdge_<ContainerAllocator>& v)
  {
    s << indent << "roadedge_id: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.roadedge_id);
    s << indent << "curve: ";
    s << std::endl;
    Printer< ::lidar::Curve_<ContainerAllocator> >::stream(s, indent + "  ", v.curve);
    s << indent << "end_points: ";
    s << std::endl;
    Printer< ::lidar::EndPoints_<ContainerAllocator> >::stream(s, indent + "  ", v.end_points);
    s << indent << "measure_status: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.measure_status);
    s << indent << "confidence: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_MESSAGE_ROADEDGE_H