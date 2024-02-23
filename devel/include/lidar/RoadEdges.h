// Generated by gencpp from file lidar/RoadEdges.msg
// DO NOT EDIT!


#ifndef LIDAR_MESSAGE_ROADEDGES_H
#define LIDAR_MESSAGE_ROADEDGES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lidar/RoadEdge.h>

namespace lidar
{
template <class ContainerAllocator>
struct RoadEdges_
{
  typedef RoadEdges_<ContainerAllocator> Type;

  RoadEdges_()
    : curbs()  {
    }
  RoadEdges_(const ContainerAllocator& _alloc)
    : curbs(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::lidar::RoadEdge_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::lidar::RoadEdge_<ContainerAllocator> >> _curbs_type;
  _curbs_type curbs;





  typedef boost::shared_ptr< ::lidar::RoadEdges_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar::RoadEdges_<ContainerAllocator> const> ConstPtr;

}; // struct RoadEdges_

typedef ::lidar::RoadEdges_<std::allocator<void> > RoadEdges;

typedef boost::shared_ptr< ::lidar::RoadEdges > RoadEdgesPtr;
typedef boost::shared_ptr< ::lidar::RoadEdges const> RoadEdgesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar::RoadEdges_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar::RoadEdges_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar::RoadEdges_<ContainerAllocator1> & lhs, const ::lidar::RoadEdges_<ContainerAllocator2> & rhs)
{
  return lhs.curbs == rhs.curbs;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar::RoadEdges_<ContainerAllocator1> & lhs, const ::lidar::RoadEdges_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lidar::RoadEdges_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar::RoadEdges_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::RoadEdges_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::RoadEdges_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::RoadEdges_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::RoadEdges_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar::RoadEdges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5f84b2030d3a2bc9898f012cbd7a61c1";
  }

  static const char* value(const ::lidar::RoadEdges_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5f84b2030d3a2bc9ULL;
  static const uint64_t static_value2 = 0x898f012cbd7a61c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar::RoadEdges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar/RoadEdges";
  }

  static const char* value(const ::lidar::RoadEdges_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar::RoadEdges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RoadEdge[] curbs\n"
"\n"
"================================================================================\n"
"MSG: lidar/RoadEdge\n"
"std_msgs/Int32   roadedge_id  \n"
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

  static const char* value(const ::lidar::RoadEdges_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar::RoadEdges_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.curbs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoadEdges_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar::RoadEdges_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar::RoadEdges_<ContainerAllocator>& v)
  {
    s << indent << "curbs[]" << std::endl;
    for (size_t i = 0; i < v.curbs.size(); ++i)
    {
      s << indent << "  curbs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lidar::RoadEdge_<ContainerAllocator> >::stream(s, indent + "    ", v.curbs[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_MESSAGE_ROADEDGES_H