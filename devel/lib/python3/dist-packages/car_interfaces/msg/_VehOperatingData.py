# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from car_interfaces/VehOperatingData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VehOperatingData(genpy.Message):
  _md5sum = "6881f1f50cfa4ccbc6e29bdbd978adae"
  _type = "car_interfaces/VehOperatingData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# float64  timestamp  # 数据帧时间戳
# float32  cotton_picker_fan_Enabler    #  使能采头与风机，1-使能；0-保持不变；
# float32  cotton_bin_upper    # 升棉箱指令，1-提升；0-保持不变；
# uint8  cotton_bin_lower   # 降棉箱指令，1-降低；0-保持不变；
# uint8  cotton_bin_tilting   #  棉箱倾斜指令（需要持续作用，长按），1-倾斜；0-保持不变；
# uint8  cotton_bin_restore # 棉箱回正指令（需要持续作用，长按），1-回正；0-保持不变；
# uint8  cotton_unload  # 卸棉花指令（传送带），1-卸载；0-保持不变；
# float32  process_time    # 进程处理时间

# int8 operate# 0-不使能 1-使能
# int8 unloading # 0-不使能 1-使能



# 10.17 cyun
int8 cotton_box_control   #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 
# int8 cotton_picker_enable       # 采头风机使能 0-不使能 1-使能 
int8 cotton_unloading         # 卸棉传送带  0-关闭 1-启动
# auto_enable= 1           #enable_single;
# speed_range= 0                  
# throttle_opening=0  #-100~100       
int8 Head_control    #1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能） 
int8 Engine_power     # 1-低速 2-中速 3-高速               
int8 Target_Fan_gear  # 采头风机 0-不接通 1-风机 2-采头风机
# Reserve_1=0       # 驻车信号 0-驻车 1-取消
# Target_steering_angle = 0 #方向盘转角
# brake_enable=0  #刹车使能
# brake_pressure_request=0 #刹车行程
# Reserve_2=0
# Target_turn_light=0
int8 Door_control    #门控 0-停止 1-开门 2-关门
# Reserve_3=0

int8 flag # 发送到线控成功

# operate = 0 # 采棉动作流程
# unloading = 0# 卸棉流程"""
  __slots__ = ['cotton_box_control','cotton_unloading','Head_control','Engine_power','Target_Fan_gear','Door_control','flag']
  _slot_types = ['int8','int8','int8','int8','int8','int8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cotton_box_control,cotton_unloading,Head_control,Engine_power,Target_Fan_gear,Door_control,flag

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehOperatingData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cotton_box_control is None:
        self.cotton_box_control = 0
      if self.cotton_unloading is None:
        self.cotton_unloading = 0
      if self.Head_control is None:
        self.Head_control = 0
      if self.Engine_power is None:
        self.Engine_power = 0
      if self.Target_Fan_gear is None:
        self.Target_Fan_gear = 0
      if self.Door_control is None:
        self.Door_control = 0
      if self.flag is None:
        self.flag = 0
    else:
      self.cotton_box_control = 0
      self.cotton_unloading = 0
      self.Head_control = 0
      self.Engine_power = 0
      self.Target_Fan_gear = 0
      self.Door_control = 0
      self.flag = 0

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
      buff.write(_get_struct_7b().pack(_x.cotton_box_control, _x.cotton_unloading, _x.Head_control, _x.Engine_power, _x.Target_Fan_gear, _x.Door_control, _x.flag))
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
      end += 7
      (_x.cotton_box_control, _x.cotton_unloading, _x.Head_control, _x.Engine_power, _x.Target_Fan_gear, _x.Door_control, _x.flag,) = _get_struct_7b().unpack(str[start:end])
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
      buff.write(_get_struct_7b().pack(_x.cotton_box_control, _x.cotton_unloading, _x.Head_control, _x.Engine_power, _x.Target_Fan_gear, _x.Door_control, _x.flag))
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
      end += 7
      (_x.cotton_box_control, _x.cotton_unloading, _x.Head_control, _x.Engine_power, _x.Target_Fan_gear, _x.Door_control, _x.flag,) = _get_struct_7b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7b = None
def _get_struct_7b():
    global _struct_7b
    if _struct_7b is None:
        _struct_7b = struct.Struct("<7b")
    return _struct_7b