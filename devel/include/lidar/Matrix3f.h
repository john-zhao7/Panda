// Generated by gencpp from file lidar/Matrix3f.msg
// DO NOT EDIT!


#ifndef LIDAR_MESSAGE_MATRIX3F_H
#define LIDAR_MESSAGE_MATRIX3F_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>

namespace lidar
{
template <class ContainerAllocator>
struct Matrix3f_
{
  typedef Matrix3f_<ContainerAllocator> Type;

  Matrix3f_()
    : matrix3x3()  {
    }
  Matrix3f_(const ContainerAllocator& _alloc)
    : matrix3x3(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::std_msgs::Float32_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::std_msgs::Float32_<ContainerAllocator> >> _matrix3x3_type;
  _matrix3x3_type matrix3x3;





  typedef boost::shared_ptr< ::lidar::Matrix3f_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar::Matrix3f_<ContainerAllocator> const> ConstPtr;

}; // struct Matrix3f_

typedef ::lidar::Matrix3f_<std::allocator<void> > Matrix3f;

typedef boost::shared_ptr< ::lidar::Matrix3f > Matrix3fPtr;
typedef boost::shared_ptr< ::lidar::Matrix3f const> Matrix3fConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar::Matrix3f_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar::Matrix3f_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar::Matrix3f_<ContainerAllocator1> & lhs, const ::lidar::Matrix3f_<ContainerAllocator2> & rhs)
{
  return lhs.matrix3x3 == rhs.matrix3x3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar::Matrix3f_<ContainerAllocator1> & lhs, const ::lidar::Matrix3f_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lidar::Matrix3f_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar::Matrix3f_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::Matrix3f_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::Matrix3f_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::Matrix3f_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::Matrix3f_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar::Matrix3f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f92b4745b327860ddb3bbad95d45b5bf";
  }

  static const char* value(const ::lidar::Matrix3f_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf92b4745b327860dULL;
  static const uint64_t static_value2 = 0xdb3bbad95d45b5bfULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar::Matrix3f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar/Matrix3f";
  }

  static const char* value(const ::lidar::Matrix3f_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar::Matrix3f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32[] matrix3x3 \n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::lidar::Matrix3f_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar::Matrix3f_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.matrix3x3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Matrix3f_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar::Matrix3f_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar::Matrix3f_<ContainerAllocator>& v)
  {
    s << indent << "matrix3x3[]" << std::endl;
    for (size_t i = 0; i < v.matrix3x3.size(); ++i)
    {
      s << indent << "  matrix3x3[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "    ", v.matrix3x3[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_MESSAGE_MATRIX3F_H
