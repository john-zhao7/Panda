# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lidar/Matrix3f.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Matrix3f(genpy.Message):
  _md5sum = "f92b4745b327860ddb3bbad95d45b5bf"
  _type = "lidar/Matrix3f"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Float32[] matrix3x3 
================================================================================
MSG: std_msgs/Float32
float32 data"""
  __slots__ = ['matrix3x3']
  _slot_types = ['std_msgs/Float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       matrix3x3

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Matrix3f, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.matrix3x3 is None:
        self.matrix3x3 = []
    else:
      self.matrix3x3 = []

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
      length = len(self.matrix3x3)
      buff.write(_struct_I.pack(length))
      for val1 in self.matrix3x3:
        _x = val1.data
        buff.write(_get_struct_f().pack(_x))
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
      if self.matrix3x3 is None:
        self.matrix3x3 = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.matrix3x3 = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _get_struct_f().unpack(str[start:end])
        self.matrix3x3.append(val1)
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
      length = len(self.matrix3x3)
      buff.write(_struct_I.pack(length))
      for val1 in self.matrix3x3:
        _x = val1.data
        buff.write(_get_struct_f().pack(_x))
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
      if self.matrix3x3 is None:
        self.matrix3x3 = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.matrix3x3 = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _get_struct_f().unpack(str[start:end])
        self.matrix3x3.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f