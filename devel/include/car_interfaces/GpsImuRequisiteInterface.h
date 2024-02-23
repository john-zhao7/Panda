// Generated by gencpp from file car_interfaces/GpsImuRequisiteInterface.msg
// DO NOT EDIT!


#ifndef CAR_INTERFACES_MESSAGE_GPSIMUREQUISITEINTERFACE_H
#define CAR_INTERFACES_MESSAGE_GPSIMUREQUISITEINTERFACE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace car_interfaces
{
template <class ContainerAllocator>
struct GpsImuRequisiteInterface_
{
  typedef GpsImuRequisiteInterface_<ContainerAllocator> Type;

  GpsImuRequisiteInterface_()
    : header()
    , gps_time(0)
    , PosLon(0.0)
    , PosLat(0.0)
    , PosAlt(0.0)
    , VelE(0.0)
    , VelN(0.0)
    , VelU(0.0)
    , Vel(0.0)
    , AngleHeading(0.0)
    , AnglePitch(0.0)
    , AngleRoll(0.0)
    , system_state(0)
    , GpsNumSatsUsed(0)
    , satellite_status(0)
    , GpsAge(0.0)
    , state(false)
    , posX(0.0)
    , posY(0.0)
    , posZ(0.0)
    , process_time(0.0)  {
    }
  GpsImuRequisiteInterface_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , gps_time(0)
    , PosLon(0.0)
    , PosLat(0.0)
    , PosAlt(0.0)
    , VelE(0.0)
    , VelN(0.0)
    , VelU(0.0)
    , Vel(0.0)
    , AngleHeading(0.0)
    , AnglePitch(0.0)
    , AngleRoll(0.0)
    , system_state(0)
    , GpsNumSatsUsed(0)
    , satellite_status(0)
    , GpsAge(0.0)
    , state(false)
    , posX(0.0)
    , posY(0.0)
    , posZ(0.0)
    , process_time(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int64_t _gps_time_type;
  _gps_time_type gps_time;

   typedef double _PosLon_type;
  _PosLon_type PosLon;

   typedef double _PosLat_type;
  _PosLat_type PosLat;

   typedef double _PosAlt_type;
  _PosAlt_type PosAlt;

   typedef double _VelE_type;
  _VelE_type VelE;

   typedef double _VelN_type;
  _VelN_type VelN;

   typedef double _VelU_type;
  _VelU_type VelU;

   typedef double _Vel_type;
  _Vel_type Vel;

   typedef double _AngleHeading_type;
  _AngleHeading_type AngleHeading;

   typedef double _AnglePitch_type;
  _AnglePitch_type AnglePitch;

   typedef double _AngleRoll_type;
  _AngleRoll_type AngleRoll;

   typedef int32_t _system_state_type;
  _system_state_type system_state;

   typedef int32_t _GpsNumSatsUsed_type;
  _GpsNumSatsUsed_type GpsNumSatsUsed;

   typedef int32_t _satellite_status_type;
  _satellite_status_type satellite_status;

   typedef double _GpsAge_type;
  _GpsAge_type GpsAge;

   typedef uint8_t _state_type;
  _state_type state;

   typedef double _posX_type;
  _posX_type posX;

   typedef double _posY_type;
  _posY_type posY;

   typedef double _posZ_type;
  _posZ_type posZ;

   typedef float _process_time_type;
  _process_time_type process_time;





  typedef boost::shared_ptr< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> const> ConstPtr;

}; // struct GpsImuRequisiteInterface_

typedef ::car_interfaces::GpsImuRequisiteInterface_<std::allocator<void> > GpsImuRequisiteInterface;

typedef boost::shared_ptr< ::car_interfaces::GpsImuRequisiteInterface > GpsImuRequisiteInterfacePtr;
typedef boost::shared_ptr< ::car_interfaces::GpsImuRequisiteInterface const> GpsImuRequisiteInterfaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator1> & lhs, const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.gps_time == rhs.gps_time &&
    lhs.PosLon == rhs.PosLon &&
    lhs.PosLat == rhs.PosLat &&
    lhs.PosAlt == rhs.PosAlt &&
    lhs.VelE == rhs.VelE &&
    lhs.VelN == rhs.VelN &&
    lhs.VelU == rhs.VelU &&
    lhs.Vel == rhs.Vel &&
    lhs.AngleHeading == rhs.AngleHeading &&
    lhs.AnglePitch == rhs.AnglePitch &&
    lhs.AngleRoll == rhs.AngleRoll &&
    lhs.system_state == rhs.system_state &&
    lhs.GpsNumSatsUsed == rhs.GpsNumSatsUsed &&
    lhs.satellite_status == rhs.satellite_status &&
    lhs.GpsAge == rhs.GpsAge &&
    lhs.state == rhs.state &&
    lhs.posX == rhs.posX &&
    lhs.posY == rhs.posY &&
    lhs.posZ == rhs.posZ &&
    lhs.process_time == rhs.process_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator1> & lhs, const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3baa1bde7021901f9f6bda65e20ca1be";
  }

  static const char* value(const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3baa1bde7021901fULL;
  static const uint64_t static_value2 = 0x9f6bda65e20ca1beULL;
};

template<class ContainerAllocator>
struct DataType< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_interfaces/GpsImuRequisiteInterface";
  }

  static const char* value(const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header       # ros时间戳\n"
"int64  gps_time                      #时间戳\n"
"float64  PosLon        # 经度\n"
"float64  PosLat         # 纬度\n"
"float64  PosAlt         # 高度\n"
"float64  VelE         # 东向速度\n"
"float64  VelN        # 北向速度\n"
"float64  VelU        # 天向速度\n"
"float64  Vel          # 车辆速度\n"
"\n"
"float64  AngleHeading         # 偏航角（-180-180）\n"
"float64  AnglePitch        # 俯仰角（-90-90）\n"
"float64  AngleRoll         # 横滚角（-180-180）\n"
"\n"
"int32  system_state                #惯导模式（0-初始化；1-卫导模式；2-组合导航模式；3-纯惯导模式）\n"
"int32  GpsNumSatsUsed         #主天线使用卫星数\n"
"int32  satellite_status              #卫星状态（0-不定位不定向；1-单点定位定向；   2-伪距差分定位定向；3-组合推算；4-RTK稳定解定位定向；5-RTK浮点解定位定向；6-单点定位不定向； 7-伪距差分定位不定向；8-RTK稳定解定位不定向；9-RTK浮点解定位不定向）\n"
"float64  GpsAge                     #差分延时\n"
"bool  state                              #设备状态（0-状态异常；1-状态正常）\n"
"float64 posX                           #定位点UTM坐标x\n"
"float64 posY                           #定位点UTM坐标y\n"
"float64 posZ                           #定位点UTM坐标z\n"
"float32  process_time    # 进程处理时间\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.gps_time);
      stream.next(m.PosLon);
      stream.next(m.PosLat);
      stream.next(m.PosAlt);
      stream.next(m.VelE);
      stream.next(m.VelN);
      stream.next(m.VelU);
      stream.next(m.Vel);
      stream.next(m.AngleHeading);
      stream.next(m.AnglePitch);
      stream.next(m.AngleRoll);
      stream.next(m.system_state);
      stream.next(m.GpsNumSatsUsed);
      stream.next(m.satellite_status);
      stream.next(m.GpsAge);
      stream.next(m.state);
      stream.next(m.posX);
      stream.next(m.posY);
      stream.next(m.posZ);
      stream.next(m.process_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GpsImuRequisiteInterface_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_interfaces::GpsImuRequisiteInterface_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "gps_time: ";
    Printer<int64_t>::stream(s, indent + "  ", v.gps_time);
    s << indent << "PosLon: ";
    Printer<double>::stream(s, indent + "  ", v.PosLon);
    s << indent << "PosLat: ";
    Printer<double>::stream(s, indent + "  ", v.PosLat);
    s << indent << "PosAlt: ";
    Printer<double>::stream(s, indent + "  ", v.PosAlt);
    s << indent << "VelE: ";
    Printer<double>::stream(s, indent + "  ", v.VelE);
    s << indent << "VelN: ";
    Printer<double>::stream(s, indent + "  ", v.VelN);
    s << indent << "VelU: ";
    Printer<double>::stream(s, indent + "  ", v.VelU);
    s << indent << "Vel: ";
    Printer<double>::stream(s, indent + "  ", v.Vel);
    s << indent << "AngleHeading: ";
    Printer<double>::stream(s, indent + "  ", v.AngleHeading);
    s << indent << "AnglePitch: ";
    Printer<double>::stream(s, indent + "  ", v.AnglePitch);
    s << indent << "AngleRoll: ";
    Printer<double>::stream(s, indent + "  ", v.AngleRoll);
    s << indent << "system_state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.system_state);
    s << indent << "GpsNumSatsUsed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.GpsNumSatsUsed);
    s << indent << "satellite_status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.satellite_status);
    s << indent << "GpsAge: ";
    Printer<double>::stream(s, indent + "  ", v.GpsAge);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
    s << indent << "posX: ";
    Printer<double>::stream(s, indent + "  ", v.posX);
    s << indent << "posY: ";
    Printer<double>::stream(s, indent + "  ", v.posY);
    s << indent << "posZ: ";
    Printer<double>::stream(s, indent + "  ", v.posZ);
    s << indent << "process_time: ";
    Printer<float>::stream(s, indent + "  ", v.process_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_INTERFACES_MESSAGE_GPSIMUREQUISITEINTERFACE_H
