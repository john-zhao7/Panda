# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from car_interfaces/GpsImuRequisiteInterface.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class GpsImuRequisiteInterface(genpy.Message):
  _md5sum = "3baa1bde7021901f9f6bda65e20ca1be"
  _type = "car_interfaces/GpsImuRequisiteInterface"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header       # ros时间戳
int64  gps_time                      #时间戳
float64  PosLon        # 经度
float64  PosLat         # 纬度
float64  PosAlt         # 高度
float64  VelE         # 东向速度
float64  VelN        # 北向速度
float64  VelU        # 天向速度
float64  Vel          # 车辆速度

float64  AngleHeading         # 偏航角（-180-180）
float64  AnglePitch        # 俯仰角（-90-90）
float64  AngleRoll         # 横滚角（-180-180）

int32  system_state                #惯导模式（0-初始化；1-卫导模式；2-组合导航模式；3-纯惯导模式）
int32  GpsNumSatsUsed         #主天线使用卫星数
int32  satellite_status              #卫星状态（0-不定位不定向；1-单点定位定向；   2-伪距差分定位定向；3-组合推算；4-RTK稳定解定位定向；5-RTK浮点解定位定向；6-单点定位不定向； 7-伪距差分定位不定向；8-RTK稳定解定位不定向；9-RTK浮点解定位不定向）
float64  GpsAge                     #差分延时
bool  state                              #设备状态（0-状态异常；1-状态正常）
float64 posX                           #定位点UTM坐标x
float64 posY                           #定位点UTM坐标y
float64 posZ                           #定位点UTM坐标z
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
  __slots__ = ['header','gps_time','PosLon','PosLat','PosAlt','VelE','VelN','VelU','Vel','AngleHeading','AnglePitch','AngleRoll','system_state','GpsNumSatsUsed','satellite_status','GpsAge','state','posX','posY','posZ','process_time']
  _slot_types = ['std_msgs/Header','int64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','int32','int32','int32','float64','bool','float64','float64','float64','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,gps_time,PosLon,PosLat,PosAlt,VelE,VelN,VelU,Vel,AngleHeading,AnglePitch,AngleRoll,system_state,GpsNumSatsUsed,satellite_status,GpsAge,state,posX,posY,posZ,process_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GpsImuRequisiteInterface, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.gps_time is None:
        self.gps_time = 0
      if self.PosLon is None:
        self.PosLon = 0.
      if self.PosLat is None:
        self.PosLat = 0.
      if self.PosAlt is None:
        self.PosAlt = 0.
      if self.VelE is None:
        self.VelE = 0.
      if self.VelN is None:
        self.VelN = 0.
      if self.VelU is None:
        self.VelU = 0.
      if self.Vel is None:
        self.Vel = 0.
      if self.AngleHeading is None:
        self.AngleHeading = 0.
      if self.AnglePitch is None:
        self.AnglePitch = 0.
      if self.AngleRoll is None:
        self.AngleRoll = 0.
      if self.system_state is None:
        self.system_state = 0
      if self.GpsNumSatsUsed is None:
        self.GpsNumSatsUsed = 0
      if self.satellite_status is None:
        self.satellite_status = 0
      if self.GpsAge is None:
        self.GpsAge = 0.
      if self.state is None:
        self.state = False
      if self.posX is None:
        self.posX = 0.
      if self.posY is None:
        self.posY = 0.
      if self.posZ is None:
        self.posZ = 0.
      if self.process_time is None:
        self.process_time = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.gps_time = 0
      self.PosLon = 0.
      self.PosLat = 0.
      self.PosAlt = 0.
      self.VelE = 0.
      self.VelN = 0.
      self.VelU = 0.
      self.Vel = 0.
      self.AngleHeading = 0.
      self.AnglePitch = 0.
      self.AngleRoll = 0.
      self.system_state = 0
      self.GpsNumSatsUsed = 0
      self.satellite_status = 0
      self.GpsAge = 0.
      self.state = False
      self.posX = 0.
      self.posY = 0.
      self.posZ = 0.
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
      buff.write(_get_struct_q10d3idB3df().pack(_x.gps_time, _x.PosLon, _x.PosLat, _x.PosAlt, _x.VelE, _x.VelN, _x.VelU, _x.Vel, _x.AngleHeading, _x.AnglePitch, _x.AngleRoll, _x.system_state, _x.GpsNumSatsUsed, _x.satellite_status, _x.GpsAge, _x.state, _x.posX, _x.posY, _x.posZ, _x.process_time))
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
      end += 137
      (_x.gps_time, _x.PosLon, _x.PosLat, _x.PosAlt, _x.VelE, _x.VelN, _x.VelU, _x.Vel, _x.AngleHeading, _x.AnglePitch, _x.AngleRoll, _x.system_state, _x.GpsNumSatsUsed, _x.satellite_status, _x.GpsAge, _x.state, _x.posX, _x.posY, _x.posZ, _x.process_time,) = _get_struct_q10d3idB3df().unpack(str[start:end])
      self.state = bool(self.state)
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
      buff.write(_get_struct_q10d3idB3df().pack(_x.gps_time, _x.PosLon, _x.PosLat, _x.PosAlt, _x.VelE, _x.VelN, _x.VelU, _x.Vel, _x.AngleHeading, _x.AnglePitch, _x.AngleRoll, _x.system_state, _x.GpsNumSatsUsed, _x.satellite_status, _x.GpsAge, _x.state, _x.posX, _x.posY, _x.posZ, _x.process_time))
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
      end += 137
      (_x.gps_time, _x.PosLon, _x.PosLat, _x.PosAlt, _x.VelE, _x.VelN, _x.VelU, _x.Vel, _x.AngleHeading, _x.AnglePitch, _x.AngleRoll, _x.system_state, _x.GpsNumSatsUsed, _x.satellite_status, _x.GpsAge, _x.state, _x.posX, _x.posY, _x.posZ, _x.process_time,) = _get_struct_q10d3idB3df().unpack(str[start:end])
      self.state = bool(self.state)
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
_struct_q10d3idB3df = None
def _get_struct_q10d3idB3df():
    global _struct_q10d3idB3df
    if _struct_q10d3idB3df is None:
        _struct_q10d3idB3df = struct.Struct("<q10d3idB3df")
    return _struct_q10d3idB3df
