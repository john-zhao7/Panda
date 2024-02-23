# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hmi/PathSpeedCtrlInterface.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PathSpeedCtrlInterface(genpy.Message):
  _md5sum = "a552e8162979c20b671aaee207815dbe"
  _type = "hmi/PathSpeedCtrlInterface"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64  timestamp         # 数据帧时间戳
float32  Target_velocity    # 车辆速度m/s
float32  Target_steering_angle    # 车辆转角，方向盘转角 
uint8  Target_gear   # 01：驻车；02：空挡（N）；03：前进（D）；04：后退（R）；05：无效；
uint8  Target_primary_gear   # 01：低速，02：中速；03：高速；
uint8  Target_EngineSpeedLevel   # 01：低速；02：中速；03：高速；
float32  Target_speedlever_percentage   #车速手柄（采棉机）开度（-1000-1000）   对应【-100%, 100%】，负数为后退，正数为前进。
float32  Target_Torque_Nm   #目标驱动扭矩（单位：Nm，没有则给0）。
uint8  Target_braking_percentage   #制动行程请求，最大行程点125，最小行程点为0，单位为个（当前将行程分成125个点）
float32[] NearestPoint_Car2Path  # 反馈当前车辆位置距离规划的局部路径的最近点，包括：
# float   longitude        # 途径点经度（东向坐标，单位为：m）
# float   latitude         # 途径点纬度（北向坐标，单位为：m）
# float   speed         # 途径点速度（单位：m/s）


# add cyun 8.1
int8 Cotton_Bin_Ctrl #棉线动作使能


# add cyun 8.21
float32 CTE
float32 dHead

# add cyun 8.30
float32 brake_enable  #刹车使能
float32 value_brake   #刹车量

# add cyun 8.31
float32[]  flag # 标志位，控制给线控，表明发送成功


float32 raw_control # 


float32 kappa #采棉时转弯，提采头的判断"""
  __slots__ = ['timestamp','Target_velocity','Target_steering_angle','Target_gear','Target_primary_gear','Target_EngineSpeedLevel','Target_speedlever_percentage','Target_Torque_Nm','Target_braking_percentage','NearestPoint_Car2Path','Cotton_Bin_Ctrl','CTE','dHead','brake_enable','value_brake','flag','raw_control','kappa']
  _slot_types = ['float64','float32','float32','uint8','uint8','uint8','float32','float32','uint8','float32[]','int8','float32','float32','float32','float32','float32[]','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       timestamp,Target_velocity,Target_steering_angle,Target_gear,Target_primary_gear,Target_EngineSpeedLevel,Target_speedlever_percentage,Target_Torque_Nm,Target_braking_percentage,NearestPoint_Car2Path,Cotton_Bin_Ctrl,CTE,dHead,brake_enable,value_brake,flag,raw_control,kappa

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PathSpeedCtrlInterface, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.timestamp is None:
        self.timestamp = 0.
      if self.Target_velocity is None:
        self.Target_velocity = 0.
      if self.Target_steering_angle is None:
        self.Target_steering_angle = 0.
      if self.Target_gear is None:
        self.Target_gear = 0
      if self.Target_primary_gear is None:
        self.Target_primary_gear = 0
      if self.Target_EngineSpeedLevel is None:
        self.Target_EngineSpeedLevel = 0
      if self.Target_speedlever_percentage is None:
        self.Target_speedlever_percentage = 0.
      if self.Target_Torque_Nm is None:
        self.Target_Torque_Nm = 0.
      if self.Target_braking_percentage is None:
        self.Target_braking_percentage = 0
      if self.NearestPoint_Car2Path is None:
        self.NearestPoint_Car2Path = []
      if self.Cotton_Bin_Ctrl is None:
        self.Cotton_Bin_Ctrl = 0
      if self.CTE is None:
        self.CTE = 0.
      if self.dHead is None:
        self.dHead = 0.
      if self.brake_enable is None:
        self.brake_enable = 0.
      if self.value_brake is None:
        self.value_brake = 0.
      if self.flag is None:
        self.flag = []
      if self.raw_control is None:
        self.raw_control = 0.
      if self.kappa is None:
        self.kappa = 0.
    else:
      self.timestamp = 0.
      self.Target_velocity = 0.
      self.Target_steering_angle = 0.
      self.Target_gear = 0
      self.Target_primary_gear = 0
      self.Target_EngineSpeedLevel = 0
      self.Target_speedlever_percentage = 0.
      self.Target_Torque_Nm = 0.
      self.Target_braking_percentage = 0
      self.NearestPoint_Car2Path = []
      self.Cotton_Bin_Ctrl = 0
      self.CTE = 0.
      self.dHead = 0.
      self.brake_enable = 0.
      self.value_brake = 0.
      self.flag = []
      self.raw_control = 0.
      self.kappa = 0.

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
      buff.write(_get_struct_d2f3B2fB().pack(_x.timestamp, _x.Target_velocity, _x.Target_steering_angle, _x.Target_gear, _x.Target_primary_gear, _x.Target_EngineSpeedLevel, _x.Target_speedlever_percentage, _x.Target_Torque_Nm, _x.Target_braking_percentage))
      length = len(self.NearestPoint_Car2Path)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.NearestPoint_Car2Path))
      _x = self
      buff.write(_get_struct_b4f().pack(_x.Cotton_Bin_Ctrl, _x.CTE, _x.dHead, _x.brake_enable, _x.value_brake))
      length = len(self.flag)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.flag))
      _x = self
      buff.write(_get_struct_2f().pack(_x.raw_control, _x.kappa))
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
      end = 0
      _x = self
      start = end
      end += 28
      (_x.timestamp, _x.Target_velocity, _x.Target_steering_angle, _x.Target_gear, _x.Target_primary_gear, _x.Target_EngineSpeedLevel, _x.Target_speedlever_percentage, _x.Target_Torque_Nm, _x.Target_braking_percentage,) = _get_struct_d2f3B2fB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.NearestPoint_Car2Path = s.unpack(str[start:end])
      _x = self
      start = end
      end += 17
      (_x.Cotton_Bin_Ctrl, _x.CTE, _x.dHead, _x.brake_enable, _x.value_brake,) = _get_struct_b4f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.flag = s.unpack(str[start:end])
      _x = self
      start = end
      end += 8
      (_x.raw_control, _x.kappa,) = _get_struct_2f().unpack(str[start:end])
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
      buff.write(_get_struct_d2f3B2fB().pack(_x.timestamp, _x.Target_velocity, _x.Target_steering_angle, _x.Target_gear, _x.Target_primary_gear, _x.Target_EngineSpeedLevel, _x.Target_speedlever_percentage, _x.Target_Torque_Nm, _x.Target_braking_percentage))
      length = len(self.NearestPoint_Car2Path)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.NearestPoint_Car2Path.tostring())
      _x = self
      buff.write(_get_struct_b4f().pack(_x.Cotton_Bin_Ctrl, _x.CTE, _x.dHead, _x.brake_enable, _x.value_brake))
      length = len(self.flag)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.flag.tostring())
      _x = self
      buff.write(_get_struct_2f().pack(_x.raw_control, _x.kappa))
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
      end = 0
      _x = self
      start = end
      end += 28
      (_x.timestamp, _x.Target_velocity, _x.Target_steering_angle, _x.Target_gear, _x.Target_primary_gear, _x.Target_EngineSpeedLevel, _x.Target_speedlever_percentage, _x.Target_Torque_Nm, _x.Target_braking_percentage,) = _get_struct_d2f3B2fB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.NearestPoint_Car2Path = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 17
      (_x.Cotton_Bin_Ctrl, _x.CTE, _x.dHead, _x.brake_enable, _x.value_brake,) = _get_struct_b4f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.flag = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 8
      (_x.raw_control, _x.kappa,) = _get_struct_2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_b4f = None
def _get_struct_b4f():
    global _struct_b4f
    if _struct_b4f is None:
        _struct_b4f = struct.Struct("<b4f")
    return _struct_b4f
_struct_d2f3B2fB = None
def _get_struct_d2f3B2fB():
    global _struct_d2f3B2fB
    if _struct_d2f3B2fB is None:
        _struct_d2f3B2fB = struct.Struct("<d2f3B2fB")
    return _struct_d2f3B2fB
