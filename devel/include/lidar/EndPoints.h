// Generated by gencpp from file lidar/EndPoints.msg
// DO NOT EDIT!


#ifndef LIDAR_MESSAGE_ENDPOINTS_H
#define LIDAR_MESSAGE_ENDPOINTS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lidar/Point2f.h>
#include <lidar/Point2f.h>

namespace lidar
{
template <class ContainerAllocator>
struct EndPoints_
{
  typedef EndPoints_<ContainerAllocator> Type;

  EndPoints_()
    : start()
    , end()  {
    }
  EndPoints_(const ContainerAllocator& _alloc)
    : start(_alloc)
    , end(_alloc)  {
  (void)_alloc;
    }



   typedef  ::lidar::Point2f_<ContainerAllocator>  _start_type;
  _start_type start;

   typedef  ::lidar::Point2f_<ContainerAllocator>  _end_type;
  _end_type end;





  typedef boost::shared_ptr< ::lidar::EndPoints_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar::EndPoints_<ContainerAllocator> const> ConstPtr;

}; // struct EndPoints_

typedef ::lidar::EndPoints_<std::allocator<void> > EndPoints;

typedef boost::shared_ptr< ::lidar::EndPoints > EndPointsPtr;
typedef boost::shared_ptr< ::lidar::EndPoints const> EndPointsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar::EndPoints_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar::EndPoints_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar::EndPoints_<ContainerAllocator1> & lhs, const ::lidar::EndPoints_<ContainerAllocator2> & rhs)
{
  return lhs.start == rhs.start &&
    lhs.end == rhs.end;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar::EndPoints_<ContainerAllocator1> & lhs, const ::lidar::EndPoints_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lidar::EndPoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar::EndPoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::EndPoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::EndPoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::EndPoints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::EndPoints_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar::EndPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8837e560fc11e0ded6ca2f9a297edb61";
  }

  static const char* value(const ::lidar::EndPoints_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8837e560fc11e0deULL;
  static const uint64_t static_value2 = 0xd6ca2f9a297edb61ULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar::EndPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar/EndPoints";
  }

  static const char* value(const ::lidar::EndPoints_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar::EndPoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Point2f start \n"
"Point2f end \n"
"\n"
"================================================================================\n"
"MSG: lidar/Point2f\n"
"std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::lidar::EndPoints_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar::EndPoints_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start);
      stream.next(m.end);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EndPoints_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar::EndPoints_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar::EndPoints_<ContainerAllocator>& v)
  {
    s << indent << "start: ";
    s << std::endl;
    Printer< ::lidar::Point2f_<ContainerAllocator> >::stream(s, indent + "  ", v.start);
    s << indent << "end: ";
    s << std::endl;
    Printer< ::lidar::Point2f_<ContainerAllocator> >::stream(s, indent + "  ", v.end);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_MESSAGE_ENDPOINTS_H
