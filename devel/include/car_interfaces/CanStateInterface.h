// Generated by gencpp from file car_interfaces/CanStateInterface.msg
// DO NOT EDIT!


#ifndef CAR_INTERFACES_MESSAGE_CANSTATEINTERFACE_H
#define CAR_INTERFACES_MESSAGE_CANSTATEINTERFACE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace car_interfaces
{
template <class ContainerAllocator>
struct CanStateInterface_
{
  typedef CanStateInterface_<ContainerAllocator> Type;

  CanStateInterface_()
    : timestamp(0.0)
    , id(0)
    , state(0)
    , error(0)  {
    }
  CanStateInterface_(const ContainerAllocator& _alloc)
    : timestamp(0.0)
    , id(0)
    , state(0)
    , error(0)  {
  (void)_alloc;
    }



   typedef double _timestamp_type;
  _timestamp_type timestamp;

   typedef uint8_t _id_type;
  _id_type id;

   typedef uint8_t _state_type;
  _state_type state;

   typedef uint8_t _error_type;
  _error_type error;





  typedef boost::shared_ptr< ::car_interfaces::CanStateInterface_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_interfaces::CanStateInterface_<ContainerAllocator> const> ConstPtr;

}; // struct CanStateInterface_

typedef ::car_interfaces::CanStateInterface_<std::allocator<void> > CanStateInterface;

typedef boost::shared_ptr< ::car_interfaces::CanStateInterface > CanStateInterfacePtr;
typedef boost::shared_ptr< ::car_interfaces::CanStateInterface const> CanStateInterfaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_interfaces::CanStateInterface_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_interfaces::CanStateInterface_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_interfaces::CanStateInterface_<ContainerAllocator1> & lhs, const ::car_interfaces::CanStateInterface_<ContainerAllocator2> & rhs)
{
  return lhs.timestamp == rhs.timestamp &&
    lhs.id == rhs.id &&
    lhs.state == rhs.state &&
    lhs.error == rhs.error;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_interfaces::CanStateInterface_<ContainerAllocator1> & lhs, const ::car_interfaces::CanStateInterface_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::car_interfaces::CanStateInterface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_interfaces::CanStateInterface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_interfaces::CanStateInterface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_interfaces::CanStateInterface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_interfaces::CanStateInterface_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_interfaces::CanStateInterface_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_interfaces::CanStateInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "734c36f80e5d087b16b7faf91834343f";
  }

  static const char* value(const ::car_interfaces::CanStateInterface_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x734c36f80e5d087bULL;
  static const uint64_t static_value2 = 0x16b7faf91834343fULL;
};

template<class ContainerAllocator>
struct DataType< ::car_interfaces::CanStateInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_interfaces/CanStateInterface";
  }

  static const char* value(const ::car_interfaces::CanStateInterface_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_interfaces::CanStateInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64  timestamp  #时间戳\n"
"uint8  id   # CANID\n"
"uint8  state          # 设备状态，0：状态正常，1：状态异常\n"
"uint8  error          # 错误码,  0: 无错误，1：库函数错误，2：打开设备错误，3：初始化CAN0通道错误，4：清空CAN0缓冲区错误，5：启动CAN0通道错误，\n"
"                      # 6：初始化CAN1通道错误，7：清空CAN1缓冲区错误，8：启动CAN1通道错误\n"
;
  }

  static const char* value(const ::car_interfaces::CanStateInterface_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_interfaces::CanStateInterface_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.timestamp);
      stream.next(m.id);
      stream.next(m.state);
      stream.next(m.error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CanStateInterface_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_interfaces::CanStateInterface_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_interfaces::CanStateInterface_<ContainerAllocator>& v)
  {
    s << indent << "timestamp: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp);
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
    s << indent << "error: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_INTERFACES_MESSAGE_CANSTATEINTERFACE_H
