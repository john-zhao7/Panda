# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hmi/HmiStartEndPointInterface.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class HmiStartEndPointInterface(genpy.Message):
  _md5sum = "764c8e13d4a4b0d9d9bdd7520da5ffd7"
  _type = "hmi/HmiStartEndPointInterface"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 flag                       #标志位
int32 roadid                     #界面重启
int32 stationid 		 #紧急停车按钮
"""
  __slots__ = ['flag','roadid','stationid']
  _slot_types = ['int8','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       flag,roadid,stationid

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HmiStartEndPointInterface, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.flag is None:
        self.flag = 0
      if self.roadid is None:
        self.roadid = 0
      if self.stationid is None:
        self.stationid = 0
    else:
      self.flag = 0
      self.roadid = 0
      self.stationid = 0

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
      buff.write(_get_struct_b2i().pack(_x.flag, _x.roadid, _x.stationid))
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
      end += 9
      (_x.flag, _x.roadid, _x.stationid,) = _get_struct_b2i().unpack(str[start:end])
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
      buff.write(_get_struct_b2i().pack(_x.flag, _x.roadid, _x.stationid))
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
      end += 9
      (_x.flag, _x.roadid, _x.stationid,) = _get_struct_b2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_b2i = None
def _get_struct_b2i():
    global _struct_b2i
    if _struct_b2i is None:
        _struct_b2i = struct.Struct("<b2i")
    return _struct_b2i
