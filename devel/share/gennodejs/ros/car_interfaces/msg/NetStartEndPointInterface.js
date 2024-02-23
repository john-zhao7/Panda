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

class NetStartEndPointInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.pointA_SN = null;
      this.pointB_EN = null;
      this.pointC_SE = null;
      this.pointD_SW = null;
      this.process_time = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('pointA_SN')) {
        this.pointA_SN = initObj.pointA_SN
      }
      else {
        this.pointA_SN = [];
      }
      if (initObj.hasOwnProperty('pointB_EN')) {
        this.pointB_EN = initObj.pointB_EN
      }
      else {
        this.pointB_EN = [];
      }
      if (initObj.hasOwnProperty('pointC_SE')) {
        this.pointC_SE = initObj.pointC_SE
      }
      else {
        this.pointC_SE = [];
      }
      if (initObj.hasOwnProperty('pointD_SW')) {
        this.pointD_SW = initObj.pointD_SW
      }
      else {
        this.pointD_SW = [];
      }
      if (initObj.hasOwnProperty('process_time')) {
        this.process_time = initObj.process_time
      }
      else {
        this.process_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NetStartEndPointInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [pointA_SN]
    bufferOffset = _arraySerializer.float32(obj.pointA_SN, buffer, bufferOffset, null);
    // Serialize message field [pointB_EN]
    bufferOffset = _arraySerializer.float32(obj.pointB_EN, buffer, bufferOffset, null);
    // Serialize message field [pointC_SE]
    bufferOffset = _arraySerializer.float32(obj.pointC_SE, buffer, bufferOffset, null);
    // Serialize message field [pointD_SW]
    bufferOffset = _arraySerializer.float32(obj.pointD_SW, buffer, bufferOffset, null);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float32(obj.process_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetStartEndPointInterface
    let len;
    let data = new NetStartEndPointInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pointA_SN]
    data.pointA_SN = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pointB_EN]
    data.pointB_EN = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pointC_SE]
    data.pointC_SE = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pointD_SW]
    data.pointD_SW = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pointA_SN.length;
    length += 4 * object.pointB_EN.length;
    length += 4 * object.pointC_SE.length;
    length += 4 * object.pointD_SW.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/NetStartEndPointInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61c44c5d3d9ddb9029d88dfec0d60221';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 路径规划两点网络输入模块
    # float64  timestamp  #时间戳
    # float32[]  startpoint   #起点位置，先经后纬
    # float32[]   endpoint    #终点位置，先经后纬
    # float32  process_time    # 进程处理时间
    # 路径规划起四点网络输入模块
    float64  timestamp  #时间戳
    float32[]  pointA_SN   #西北角位置，先经后纬
    float32[]  pointB_EN   #东北角位置，先经后纬
    float32[]  pointC_SE   #东南角位置，先经后纬
    float32[]  pointD_SW   #西南角位置，先经后纬
    float32  process_time    # 进程处理时间
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NetStartEndPointInterface(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.pointA_SN !== undefined) {
      resolved.pointA_SN = msg.pointA_SN;
    }
    else {
      resolved.pointA_SN = []
    }

    if (msg.pointB_EN !== undefined) {
      resolved.pointB_EN = msg.pointB_EN;
    }
    else {
      resolved.pointB_EN = []
    }

    if (msg.pointC_SE !== undefined) {
      resolved.pointC_SE = msg.pointC_SE;
    }
    else {
      resolved.pointC_SE = []
    }

    if (msg.pointD_SW !== undefined) {
      resolved.pointD_SW = msg.pointD_SW;
    }
    else {
      resolved.pointD_SW = []
    }

    if (msg.process_time !== undefined) {
      resolved.process_time = msg.process_time;
    }
    else {
      resolved.process_time = 0.0
    }

    return resolved;
    }
};

module.exports = NetStartEndPointInterface;
