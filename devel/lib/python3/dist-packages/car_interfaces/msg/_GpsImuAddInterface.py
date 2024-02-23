# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from car_interfaces/GpsImuAddInterface.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class GpsImuAddInterface(genpy.Message):
  _md5sum = "ccdf9c1baf49a9162649abaf0da4c464"
  _type = "car_interfaces/GpsImuAddInterface"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header       # ros时间戳
int64  gps_time              # 时间戳
float64  AngRateRawX         # 角速度x
float64  AngRateRawY         # 角速度y
float64  AngRateRawZ         # 角速度z
float64  AccelRawX             # x轴加速度
float64  AccelRawY             # y轴加速度
float64  AccelRawZ             # z轴加速度
float64 PosESigma           #东向位置标准差
float64 PosNSigma          #北向位置标准差
float64 PosUSigma          #天向位置标准差
float64  VelESigma         # 东向速度标准差
float64  VelNSigma        # 北向速度标准差
float64  VelUSigma        # 天向速度标准差
float64  VelSigma          # 车辆速度标准差
float64  AccelX         # 车辆坐标系x轴加速度
float64  AccelY         # 车辆坐标系y轴加速度
float64  AccelZ         # 车辆坐标系z轴加速度
float64  AngleHeadingSigma         # 偏航角标准差
float64  AnglePitchSigma        # 俯仰角标准差
float64  AngleRollSigma         # 横滚角标准差
float64  AngRateX                  # 车辆坐标系x轴角速度
float64  AngRateY                  # 车辆坐标系y轴角速度
float64  AngRateZ                  # 车辆坐标系z轴角速度
int32  GpsNumSats2Used      #辅天线使用卫星数
int32  GpsNumSats                #主天线搜星数
int32  GpsNumSats2              #副天线搜星数
float64 Rear_posX                  #后轴中心点UTM坐标x
float64 Rear_posY                  #后轴中心点UTM坐标y
float64 Rear_posZ                  #后轴中心点UTM坐标z
float32  process_time    # 进程处理时间


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['header','gps_time','AngRateRawX','AngRateRawY','AngRateRawZ','AccelRawX','AccelRawY','AccelRawZ','PosESigma','PosNSigma','PosUSigma','VelESigma','VelNSigma','VelUSigma','VelSigma','AccelX','AccelY','AccelZ','AngleHeadingSigma','AnglePitchSigma','AngleRollSigma','AngRateX','AngRateY','AngRateZ','GpsNumSats2Used','GpsNumSats','GpsNumSats2','Rear_posX','Rear_posY','Rear_posZ','process_time']
  _slot_types = ['std_msgs/Header','int64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','int32','int32','int32','float64','float64','float64','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,gps_time,AngRateRawX,AngRateRawY,AngRateRawZ,AccelRawX,AccelRawY,AccelRawZ,PosESigma,PosNSigma,PosUSigma,VelESigma,VelNSigma,VelUSigma,VelSigma,AccelX,AccelY,AccelZ,AngleHeadingSigma,AnglePitchSigma,AngleRollSigma,AngRateX,AngRateY,AngRateZ,GpsNumSats2Used,GpsNumSats,GpsNumSats2,Rear_posX,Rear_posY,Rear_posZ,process_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GpsImuAddInterface, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.gps_time is None:
        self.gps_time = 0
      if self.AngRateRawX is None:
        self.AngRateRawX = 0.
      if self.AngRateRawY is None:
        self.AngRateRawY = 0.
      if self.AngRateRawZ is None:
        self.AngRateRawZ = 0.
      if self.AccelRawX is None:
        self.AccelRawX = 0.
      if self.AccelRawY is None:
        self.AccelRawY = 0.
      if self.AccelRawZ is None:
        self.AccelRawZ = 0.
      if self.PosESigma is None:
        self.PosESigma = 0.
      if self.PosNSigma is None:
        self.PosNSigma = 0.
      if self.PosUSigma is None:
        self.PosUSigma = 0.
      if self.VelESigma is None:
        self.VelESigma = 0.
      if self.VelNSigma is None:
        self.VelNSigma = 0.
      if self.VelUSigma is None:
        self.VelUSigma = 0.
      if self.VelSigma is None:
        self.VelSigma = 0.
      if self.AccelX is None:
        self.AccelX = 0.
      if self.AccelY is None:
        self.AccelY = 0.
      if self.AccelZ is None:
        self.AccelZ = 0.
      if self.AngleHeadingSigma is None:
        self.AngleHeadingSigma = 0.
      if self.AnglePitchSigma is None:
        self.AnglePitchSigma = 0.
      if self.AngleRollSigma is None:
        self.AngleRollSigma = 0.
      if self.AngRateX is None:
        self.AngRateX = 0.
      if self.AngRateY is None:
        self.AngRateY = 0.
      if self.AngRateZ is None:
        self.AngRateZ = 0.
      if self.GpsNumSats2Used is None:
        self.GpsNumSats2Used = 0
      if self.GpsNumSats is None:
        self.GpsNumSats = 0
      if self.GpsNumSats2 is None:
        self.GpsNumSats2 = 0
      if self.Rear_posX is None:
        self.Rear_posX = 0.
      if self.Rear_posY is None:
        self.Rear_posY = 0.
      if self.Rear_posZ is None:
        self.Rear_posZ = 0.
      if self.process_time is None:
        self.process_time = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.gps_time = 0
      self.AngRateRawX = 0.
      self.AngRateRawY = 0.
      self.AngRateRawZ = 0.
      self.AccelRawX = 0.
      self.AccelRawY = 0.
      self.AccelRawZ = 0.
      self.PosESigma = 0.
      self.PosNSigma = 0.
      self.PosUSigma = 0.
      self.VelESigma = 0.
      self.VelNSigma = 0.
      self.VelUSigma = 0.
      self.VelSigma = 0.
      self.AccelX = 0.
      self.AccelY = 0.
      self.AccelZ = 0.
      self.AngleHeadingSigma = 0.
      self.AnglePitchSigma = 0.
      self.AngleRollSigma = 0.
      self.AngRateX = 0.
      self.AngRateY = 0.
      self.AngRateZ = 0.
      self.GpsNumSats2Used = 0
      self.GpsNumSats = 0
      self.GpsNumSats2 = 0
      self.Rear_posX = 0.
      self.Rear_posY = 0.
      self.Rear_posZ = 0.
      self.process_time = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_q22d3i3df().pack(_x.gps_time, _x.AngRateRawX, _x.AngRateRawY, _x.AngRateRawZ, _x.AccelRawX, _x.AccelRawY, _x.AccelRawZ, _x.PosESigma, _x.PosNSigma, _x.PosUSigma, _x.VelESigma, _x.VelNSigma, _x.VelUSigma, _x.VelSigma, _x.AccelX, _x.AccelY, _x.AccelZ, _x.AngleHeadingSigma, _x.AnglePitchSigma, _x.AngleRollSigma, _x.AngRateX, _x.AngRateY, _x.AngRateZ, _x.GpsNumSats2Used, _x.GpsNumSats, _x.GpsNumSats2, _x.Rear_posX, _x.Rear_posY, _x.Rear_posZ, _x.process_time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 224
      (_x.gps_time, _x.AngRateRawX, _x.AngRateRawY, _x.AngRateRawZ, _x.AccelRawX, _x.AccelRawY, _x.AccelRawZ, _x.PosESigma, _x.PosNSigma, _x.PosUSigma, _x.VelESigma, _x.VelNSigma, _x.VelUSigma, _x.VelSigma, _x.AccelX, _x.AccelY, _x.AccelZ, _x.AngleHeadingSigma, _x.AnglePitchSigma, _x.AngleRollSigma, _x.AngRateX, _x.AngRateY, _x.AngRateZ, _x.GpsNumSats2Used, _x.GpsNumSats, _x.GpsNumSats2, _x.Rear_posX, _x.Rear_posY, _x.Rear_posZ, _x.process_time,) = _get_struct_q22d3i3df().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_q22d3i3df().pack(_x.gps_time, _x.AngRateRawX, _x.AngRateRawY, _x.AngRateRawZ, _x.AccelRawX, _x.AccelRawY, _x.AccelRawZ, _x.PosESigma, _x.PosNSigma, _x.PosUSigma, _x.VelESigma, _x.VelNSigma, _x.VelUSigma, _x.VelSigma, _x.AccelX, _x.AccelY, _x.AccelZ, _x.AngleHeadingSigma, _x.AnglePitchSigma, _x.AngleRollSigma, _x.AngRateX, _x.AngRateY, _x.AngRateZ, _x.GpsNumSats2Used, _x.GpsNumSats, _x.GpsNumSats2, _x.Rear_posX, _x.Rear_posY, _x.Rear_posZ, _x.process_time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 224
      (_x.gps_time, _x.AngRateRawX, _x.AngRateRawY, _x.AngRateRawZ, _x.AccelRawX, _x.AccelRawY, _x.AccelRawZ, _x.PosESigma, _x.PosNSigma, _x.PosUSigma, _x.VelESigma, _x.VelNSigma, _x.VelUSigma, _x.VelSigma, _x.AccelX, _x.AccelY, _x.AccelZ, _x.AngleHeadingSigma, _x.AnglePitchSigma, _x.AngleRollSigma, _x.AngRateX, _x.AngRateY, _x.AngRateZ, _x.GpsNumSats2Used, _x.GpsNumSats, _x.GpsNumSats2, _x.Rear_posX, _x.Rear_posY, _x.Rear_posZ, _x.process_time,) = _get_struct_q22d3i3df().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_q22d3i3df = None
def _get_struct_q22d3i3df():
    global _struct_q22d3i3df
    if _struct_q22d3i3df is None:
        _struct_q22d3i3df = struct.Struct("<q22d3i3df")
    return _struct_q22d3i3df
