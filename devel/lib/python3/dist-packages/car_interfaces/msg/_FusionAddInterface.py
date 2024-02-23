# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from car_interfaces/FusionAddInterface.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class FusionAddInterface(genpy.Message):
  _md5sum = "237330b40296f4bbfbedaab80a131550"
  _type = "car_interfaces/FusionAddInterface"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8  id   # 车辆ID
float32  carlength         # 车长m
float32  carwidth         # 车宽m
float32  carheight         # 车高m
float32  eastvelocity         # 东向速度
float32  northvelocity        # 北向速度
float32  skyvelocity         # 天向速度
float32  wx         # 角速度x
float32  wy         # 角速度y
float32  wz         # 角速度z
float32  ax         # 加速度x
float32  ay         # 加速度y
float32  az         # 加速度z

"""
  __slots__ = ['id','carlength','carwidth','carheight','eastvelocity','northvelocity','skyvelocity','wx','wy','wz','ax','ay','az']
  _slot_types = ['uint8','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,carlength,carwidth,carheight,eastvelocity,northvelocity,skyvelocity,wx,wy,wz,ax,ay,az

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FusionAddInterface, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.carlength is None:
        self.carlength = 0.
      if self.carwidth is None:
        self.carwidth = 0.
      if self.carheight is None:
        self.carheight = 0.
      if self.eastvelocity is None:
        self.eastvelocity = 0.
      if self.northvelocity is None:
        self.northvelocity = 0.
      if self.skyvelocity is None:
        self.skyvelocity = 0.
      if self.wx is None:
        self.wx = 0.
      if self.wy is None:
        self.wy = 0.
      if self.wz is None:
        self.wz = 0.
      if self.ax is None:
        self.ax = 0.
      if self.ay is None:
        self.ay = 0.
      if self.az is None:
        self.az = 0.
    else:
      self.id = 0
      self.carlength = 0.
      self.carwidth = 0.
      self.carheight = 0.
      self.eastvelocity = 0.
      self.northvelocity = 0.
      self.skyvelocity = 0.
      self.wx = 0.
      self.wy = 0.
      self.wz = 0.
      self.ax = 0.
      self.ay = 0.
      self.az = 0.

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
      buff.write(_get_struct_B12f().pack(_x.id, _x.carlength, _x.carwidth, _x.carheight, _x.eastvelocity, _x.northvelocity, _x.skyvelocity, _x.wx, _x.wy, _x.wz, _x.ax, _x.ay, _x.az))
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
      end += 49
      (_x.id, _x.carlength, _x.carwidth, _x.carheight, _x.eastvelocity, _x.northvelocity, _x.skyvelocity, _x.wx, _x.wy, _x.wz, _x.ax, _x.ay, _x.az,) = _get_struct_B12f().unpack(str[start:end])
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
      buff.write(_get_struct_B12f().pack(_x.id, _x.carlength, _x.carwidth, _x.carheight, _x.eastvelocity, _x.northvelocity, _x.skyvelocity, _x.wx, _x.wy, _x.wz, _x.ax, _x.ay, _x.az))
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
      end += 49
      (_x.id, _x.carlength, _x.carwidth, _x.carheight, _x.eastvelocity, _x.northvelocity, _x.skyvelocity, _x.wx, _x.wy, _x.wz, _x.ax, _x.ay, _x.az,) = _get_struct_B12f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B12f = None
def _get_struct_B12f():
    global _struct_B12f
    if _struct_B12f is None:
        _struct_B12f = struct.Struct("<B12f")
    return _struct_B12f