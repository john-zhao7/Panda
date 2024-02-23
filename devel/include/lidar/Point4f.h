// Generated by gencpp from file lidar/Point4f.msg
// DO NOT EDIT!


#ifndef LIDAR_MESSAGE_POINT4F_H
#define LIDAR_MESSAGE_POINT4F_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>

namespace lidar
{
template <class ContainerAllocator>
struct Point4f_
{
  typedef Point4f_<ContainerAllocator> Type;

  Point4f_()
    : x()
    , y()
    , z()
    , i()  {
    }
  Point4f_(const ContainerAllocator& _alloc)
    : x(_alloc)
    , y(_alloc)
    , z(_alloc)
    , i(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _x_type;
  _x_type x;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _y_type;
  _y_type y;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _z_type;
  _z_type z;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _i_type;
  _i_type i;





  typedef boost::shared_ptr< ::lidar::Point4f_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar::Point4f_<ContainerAllocator> const> ConstPtr;

}; // struct Point4f_

typedef ::lidar::Point4f_<std::allocator<void> > Point4f;

typedef boost::shared_ptr< ::lidar::Point4f > Point4fPtr;
typedef boost::shared_ptr< ::lidar::Point4f const> Point4fConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar::Point4f_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar::Point4f_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar::Point4f_<ContainerAllocator1> & lhs, const ::lidar::Point4f_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.i == rhs.i;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar::Point4f_<ContainerAllocator1> & lhs, const ::lidar::Point4f_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lidar::Point4f_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar::Point4f_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::Point4f_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::Point4f_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::Point4f_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::Point4f_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar::Point4f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4743d309d7a476dab23f1b8e2261bd00";
  }

  static const char* value(const ::lidar::Point4f_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4743d309d7a476daULL;
  static const uint64_t static_value2 = 0xb23f1b8e2261bd00ULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar::Point4f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar/Point4f";
  }

  static const char* value(const ::lidar::Point4f_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar::Point4f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 x \n"
"std_msgs/Float32 y \n"
"std_msgs/Float32 z \n"
"std_msgs/Float32 i \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::lidar::Point4f_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar::Point4f_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.i);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Point4f_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar::Point4f_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar::Point4f_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.z);
    s << indent << "i: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.i);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_MESSAGE_POINT4F_H
