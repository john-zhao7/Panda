// Generated by gencpp from file car_interfaces/CarDecisionInterface.msg
// DO NOT EDIT!


#ifndef CAR_INTERFACES_MESSAGE_CARDECISIONINTERFACE_H
#define CAR_INTERFACES_MESSAGE_CARDECISIONINTERFACE_H


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
struct CarDecisionInterface_
{
  typedef CarDecisionInterface_<ContainerAllocator> Type;

  CarDecisionInterface_()
    : timestamp(0.0)
    , stop(false)
    , speed(false)
    , maxspeed(0.0)
    , process_time(0.0)
    , lanechange_flag(0.0)  {
    }
  CarDecisionInterface_(const ContainerAllocator& _alloc)
    : timestamp(0.0)
    , stop(false)
    , speed(false)
    , maxspeed(0.0)
    , process_time(0.0)
    , lanechange_flag(0.0)  {
  (void)_alloc;
    }



   typedef double _timestamp_type;
  _timestamp_type timestamp;

   typedef uint8_t _stop_type;
  _stop_type stop;

   typedef uint8_t _speed_type;
  _speed_type speed;

   typedef float _maxspeed_type;
  _maxspeed_type maxspeed;

   typedef float _process_time_type;
  _process_time_type process_time;

   typedef float _lanechange_flag_type;
  _lanechange_flag_type lanechange_flag;





  typedef boost::shared_ptr< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> const> ConstPtr;

}; // struct CarDecisionInterface_

typedef ::car_interfaces::CarDecisionInterface_<std::allocator<void> > CarDecisionInterface;

typedef boost::shared_ptr< ::car_interfaces::CarDecisionInterface > CarDecisionInterfacePtr;
typedef boost::shared_ptr< ::car_interfaces::CarDecisionInterface const> CarDecisionInterfaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_interfaces::CarDecisionInterface_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_interfaces::CarDecisionInterface_<ContainerAllocator1> & lhs, const ::car_interfaces::CarDecisionInterface_<ContainerAllocator2> & rhs)
{
  return lhs.timestamp == rhs.timestamp &&
    lhs.stop == rhs.stop &&
    lhs.speed == rhs.speed &&
    lhs.maxspeed == rhs.maxspeed &&
    lhs.process_time == rhs.process_time &&
    lhs.lanechange_flag == rhs.lanechange_flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_interfaces::CarDecisionInterface_<ContainerAllocator1> & lhs, const ::car_interfaces::CarDecisionInterface_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2ba1499a3ce71d6f0ce03ca3012beede";
  }

  static const char* value(const ::car_interfaces::CarDecisionInterface_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2ba1499a3ce71d6fULL;
  static const uint64_t static_value2 = 0x0ce03ca3012beedeULL;
};

template<class ContainerAllocator>
struct DataType< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_interfaces/CarDecisionInterface";
  }

  static const char* value(const ::car_interfaces::CarDecisionInterface_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64  timestamp   #数据时间戳\n"
"bool   stop   #是否停车，0继续前进，1停车（判断依据：障碍物位置）\n"
"bool  speed   #是否限速，0否，1是\n"
"float32  maxspeed    # 路段限速最大速度，单位为m/s（依据：限速标识）\n"
"float32  process_time    # 进程处理时间\n"
"float32 lanechange_flag   # 0 – 不换道， 1 – 又换道， 2- 左换道\n"
"\n"
;
  }

  static const char* value(const ::car_interfaces::CarDecisionInterface_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.timestamp);
      stream.next(m.stop);
      stream.next(m.speed);
      stream.next(m.maxspeed);
      stream.next(m.process_time);
      stream.next(m.lanechange_flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarDecisionInterface_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_interfaces::CarDecisionInterface_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_interfaces::CarDecisionInterface_<ContainerAllocator>& v)
  {
    s << indent << "timestamp: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp);
    s << indent << "stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stop);
    s << indent << "speed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.speed);
    s << indent << "maxspeed: ";
    Printer<float>::stream(s, indent + "  ", v.maxspeed);
    s << indent << "process_time: ";
    Printer<float>::stream(s, indent + "  ", v.process_time);
    s << indent << "lanechange_flag: ";
    Printer<float>::stream(s, indent + "  ", v.lanechange_flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_INTERFACES_MESSAGE_CARDECISIONINTERFACE_H
