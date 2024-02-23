// Generated by gencpp from file lidar/LidarObject.msg
// DO NOT EDIT!


#ifndef LIDAR_MESSAGE_LIDAROBJECT_H
#define LIDAR_MESSAGE_LIDAROBJECT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lidar
{
template <class ContainerAllocator>
struct LidarObject_
{
  typedef LidarObject_<ContainerAllocator> Type;

  LidarObject_()
    : id(0)
    , type(0)
    , exist_con(0.0)
    , vel_x(0.0)
    , vel_y(0.0)
    , vel_z(0.0)
    , dis_x(0.0)
    , dis_y(0.0)
    , dis_z(0.0)
    , acc_x(0.0)
    , acc_y(0.0)
    , acc_z(0.0)
    , object_x(0.0)
    , object_y(0.0)
    , object_z(0.0)
    , core_x(0.0)
    , core_y(0.0)
    , core_z(0.0)
    , attention_type(0)
    , motion_state(0)
    , age(0.0)
    , tra_id(0)  {
    }
  LidarObject_(const ContainerAllocator& _alloc)
    : id(0)
    , type(0)
    , exist_con(0.0)
    , vel_x(0.0)
    , vel_y(0.0)
    , vel_z(0.0)
    , dis_x(0.0)
    , dis_y(0.0)
    , dis_z(0.0)
    , acc_x(0.0)
    , acc_y(0.0)
    , acc_z(0.0)
    , object_x(0.0)
    , object_y(0.0)
    , object_z(0.0)
    , core_x(0.0)
    , core_y(0.0)
    , core_z(0.0)
    , attention_type(0)
    , motion_state(0)
    , age(0.0)
    , tra_id(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef uint8_t _type_type;
  _type_type type;

   typedef float _exist_con_type;
  _exist_con_type exist_con;

   typedef float _vel_x_type;
  _vel_x_type vel_x;

   typedef float _vel_y_type;
  _vel_y_type vel_y;

   typedef float _vel_z_type;
  _vel_z_type vel_z;

   typedef float _dis_x_type;
  _dis_x_type dis_x;

   typedef float _dis_y_type;
  _dis_y_type dis_y;

   typedef float _dis_z_type;
  _dis_z_type dis_z;

   typedef float _acc_x_type;
  _acc_x_type acc_x;

   typedef float _acc_y_type;
  _acc_y_type acc_y;

   typedef float _acc_z_type;
  _acc_z_type acc_z;

   typedef float _object_x_type;
  _object_x_type object_x;

   typedef float _object_y_type;
  _object_y_type object_y;

   typedef float _object_z_type;
  _object_z_type object_z;

   typedef float _core_x_type;
  _core_x_type core_x;

   typedef float _core_y_type;
  _core_y_type core_y;

   typedef float _core_z_type;
  _core_z_type core_z;

   typedef uint8_t _attention_type_type;
  _attention_type_type attention_type;

   typedef uint8_t _motion_state_type;
  _motion_state_type motion_state;

   typedef float _age_type;
  _age_type age;

   typedef uint8_t _tra_id_type;
  _tra_id_type tra_id;





  typedef boost::shared_ptr< ::lidar::LidarObject_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar::LidarObject_<ContainerAllocator> const> ConstPtr;

}; // struct LidarObject_

typedef ::lidar::LidarObject_<std::allocator<void> > LidarObject;

typedef boost::shared_ptr< ::lidar::LidarObject > LidarObjectPtr;
typedef boost::shared_ptr< ::lidar::LidarObject const> LidarObjectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar::LidarObject_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar::LidarObject_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar::LidarObject_<ContainerAllocator1> & lhs, const ::lidar::LidarObject_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.type == rhs.type &&
    lhs.exist_con == rhs.exist_con &&
    lhs.vel_x == rhs.vel_x &&
    lhs.vel_y == rhs.vel_y &&
    lhs.vel_z == rhs.vel_z &&
    lhs.dis_x == rhs.dis_x &&
    lhs.dis_y == rhs.dis_y &&
    lhs.dis_z == rhs.dis_z &&
    lhs.acc_x == rhs.acc_x &&
    lhs.acc_y == rhs.acc_y &&
    lhs.acc_z == rhs.acc_z &&
    lhs.object_x == rhs.object_x &&
    lhs.object_y == rhs.object_y &&
    lhs.object_z == rhs.object_z &&
    lhs.core_x == rhs.core_x &&
    lhs.core_y == rhs.core_y &&
    lhs.core_z == rhs.core_z &&
    lhs.attention_type == rhs.attention_type &&
    lhs.motion_state == rhs.motion_state &&
    lhs.age == rhs.age &&
    lhs.tra_id == rhs.tra_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar::LidarObject_<ContainerAllocator1> & lhs, const ::lidar::LidarObject_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lidar::LidarObject_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar::LidarObject_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::LidarObject_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar::LidarObject_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::LidarObject_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar::LidarObject_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar::LidarObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27ffc99628ee0a3fb5403a184a2873f3";
  }

  static const char* value(const ::lidar::LidarObject_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27ffc99628ee0a3fULL;
  static const uint64_t static_value2 = 0xb5403a184a2873f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar::LidarObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar/LidarObject";
  }

  static const char* value(const ::lidar::LidarObject_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar::LidarObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint8 id\n"
"uint8 type\n"
"float32 exist_con\n"
"float32 vel_x\n"
"float32 vel_y\n"
"float32 vel_z\n"
"float32 dis_x\n"
"float32 dis_y\n"
"float32 dis_z\n"
"float32 acc_x\n"
"float32 acc_y\n"
"float32 acc_z\n"
"float32 object_x\n"
"float32 object_y\n"
"float32 object_z\n"
"float32 core_x\n"
"float32 core_y\n"
"float32 core_z\n"
"uint8 attention_type\n"
"uint8   motion_state\n"
"float32 age\n"
"uint8 tra_id\n"
;
  }

  static const char* value(const ::lidar::LidarObject_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar::LidarObject_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.type);
      stream.next(m.exist_con);
      stream.next(m.vel_x);
      stream.next(m.vel_y);
      stream.next(m.vel_z);
      stream.next(m.dis_x);
      stream.next(m.dis_y);
      stream.next(m.dis_z);
      stream.next(m.acc_x);
      stream.next(m.acc_y);
      stream.next(m.acc_z);
      stream.next(m.object_x);
      stream.next(m.object_y);
      stream.next(m.object_z);
      stream.next(m.core_x);
      stream.next(m.core_y);
      stream.next(m.core_z);
      stream.next(m.attention_type);
      stream.next(m.motion_state);
      stream.next(m.age);
      stream.next(m.tra_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarObject_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar::LidarObject_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar::LidarObject_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "exist_con: ";
    Printer<float>::stream(s, indent + "  ", v.exist_con);
    s << indent << "vel_x: ";
    Printer<float>::stream(s, indent + "  ", v.vel_x);
    s << indent << "vel_y: ";
    Printer<float>::stream(s, indent + "  ", v.vel_y);
    s << indent << "vel_z: ";
    Printer<float>::stream(s, indent + "  ", v.vel_z);
    s << indent << "dis_x: ";
    Printer<float>::stream(s, indent + "  ", v.dis_x);
    s << indent << "dis_y: ";
    Printer<float>::stream(s, indent + "  ", v.dis_y);
    s << indent << "dis_z: ";
    Printer<float>::stream(s, indent + "  ", v.dis_z);
    s << indent << "acc_x: ";
    Printer<float>::stream(s, indent + "  ", v.acc_x);
    s << indent << "acc_y: ";
    Printer<float>::stream(s, indent + "  ", v.acc_y);
    s << indent << "acc_z: ";
    Printer<float>::stream(s, indent + "  ", v.acc_z);
    s << indent << "object_x: ";
    Printer<float>::stream(s, indent + "  ", v.object_x);
    s << indent << "object_y: ";
    Printer<float>::stream(s, indent + "  ", v.object_y);
    s << indent << "object_z: ";
    Printer<float>::stream(s, indent + "  ", v.object_z);
    s << indent << "core_x: ";
    Printer<float>::stream(s, indent + "  ", v.core_x);
    s << indent << "core_y: ";
    Printer<float>::stream(s, indent + "  ", v.core_y);
    s << indent << "core_z: ";
    Printer<float>::stream(s, indent + "  ", v.core_z);
    s << indent << "attention_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.attention_type);
    s << indent << "motion_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motion_state);
    s << indent << "age: ";
    Printer<float>::stream(s, indent + "  ", v.age);
    s << indent << "tra_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.tra_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_MESSAGE_LIDAROBJECT_H