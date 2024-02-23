// Auto-generated. Do not edit!

// (in-package car_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FusionAddInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.carlength = null;
      this.carwidth = null;
      this.carheight = null;
      this.eastvelocity = null;
      this.northvelocity = null;
      this.skyvelocity = null;
      this.wx = null;
      this.wy = null;
      this.wz = null;
      this.ax = null;
      this.ay = null;
      this.az = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('carlength')) {
        this.carlength = initObj.carlength
      }
      else {
        this.carlength = 0.0;
      }
      if (initObj.hasOwnProperty('carwidth')) {
        this.carwidth = initObj.carwidth
      }
      else {
        this.carwidth = 0.0;
      }
      if (initObj.hasOwnProperty('carheight')) {
        this.carheight = initObj.carheight
      }
      else {
        this.carheight = 0.0;
      }
      if (initObj.hasOwnProperty('eastvelocity')) {
        this.eastvelocity = initObj.eastvelocity
      }
      else {
        this.eastvelocity = 0.0;
      }
      if (initObj.hasOwnProperty('northvelocity')) {
        this.northvelocity = initObj.northvelocity
      }
      else {
        this.northvelocity = 0.0;
      }
      if (initObj.hasOwnProperty('skyvelocity')) {
        this.skyvelocity = initObj.skyvelocity
      }
      else {
        this.skyvelocity = 0.0;
      }
      if (initObj.hasOwnProperty('wx')) {
        this.wx = initObj.wx
      }
      else {
        this.wx = 0.0;
      }
      if (initObj.hasOwnProperty('wy')) {
        this.wy = initObj.wy
      }
      else {
        this.wy = 0.0;
      }
      if (initObj.hasOwnProperty('wz')) {
        this.wz = initObj.wz
      }
      else {
        this.wz = 0.0;
      }
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionAddInterface
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [carlength]
    bufferOffset = _serializer.float32(obj.carlength, buffer, bufferOffset);
    // Serialize message field [carwidth]
    bufferOffset = _serializer.float32(obj.carwidth, buffer, bufferOffset);
    // Serialize message field [carheight]
    bufferOffset = _serializer.float32(obj.carheight, buffer, bufferOffset);
    // Serialize message field [eastvelocity]
    bufferOffset = _serializer.float32(obj.eastvelocity, buffer, bufferOffset);
    // Serialize message field [northvelocity]
    bufferOffset = _serializer.float32(obj.northvelocity, buffer, bufferOffset);
    // Serialize message field [skyvelocity]
    bufferOffset = _serializer.float32(obj.skyvelocity, buffer, bufferOffset);
    // Serialize message field [wx]
    bufferOffset = _serializer.float32(obj.wx, buffer, bufferOffset);
    // Serialize message field [wy]
    bufferOffset = _serializer.float32(obj.wy, buffer, bufferOffset);
    // Serialize message field [wz]
    bufferOffset = _serializer.float32(obj.wz, buffer, bufferOffset);
    // Serialize message field [ax]
    bufferOffset = _serializer.float32(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float32(obj.ay, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float32(obj.az, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionAddInterface
    let len;
    let data = new FusionAddInterface(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [carlength]
    data.carlength = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carwidth]
    data.carwidth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carheight]
    data.carheight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eastvelocity]
    data.eastvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [northvelocity]
    data.northvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [skyvelocity]
    data.skyvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wx]
    data.wx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wy]
    data.wy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wz]
    data.wz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ax]
    data.ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/FusionAddInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '237330b40296f4bbfbedaab80a131550';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8  id   # 车辆ID
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionAddInterface(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.carlength !== undefined) {
      resolved.carlength = msg.carlength;
    }
    else {
      resolved.carlength = 0.0
    }

    if (msg.carwidth !== undefined) {
      resolved.carwidth = msg.carwidth;
    }
    else {
      resolved.carwidth = 0.0
    }

    if (msg.carheight !== undefined) {
      resolved.carheight = msg.carheight;
    }
    else {
      resolved.carheight = 0.0
    }

    if (msg.eastvelocity !== undefined) {
      resolved.eastvelocity = msg.eastvelocity;
    }
    else {
      resolved.eastvelocity = 0.0
    }

    if (msg.northvelocity !== undefined) {
      resolved.northvelocity = msg.northvelocity;
    }
    else {
      resolved.northvelocity = 0.0
    }

    if (msg.skyvelocity !== undefined) {
      resolved.skyvelocity = msg.skyvelocity;
    }
    else {
      resolved.skyvelocity = 0.0
    }

    if (msg.wx !== undefined) {
      resolved.wx = msg.wx;
    }
    else {
      resolved.wx = 0.0
    }

    if (msg.wy !== undefined) {
      resolved.wy = msg.wy;
    }
    else {
      resolved.wy = 0.0
    }

    if (msg.wz !== undefined) {
      resolved.wz = msg.wz;
    }
    else {
      resolved.wz = 0.0
    }

    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    return resolved;
    }
};

module.exports = FusionAddInterface;
