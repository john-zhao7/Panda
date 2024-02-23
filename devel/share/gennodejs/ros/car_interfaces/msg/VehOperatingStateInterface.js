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

class VehOperatingStateInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.VehOperat_Status = null;
      this.process_time = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('VehOperat_Status')) {
        this.VehOperat_Status = initObj.VehOperat_Status
      }
      else {
        this.VehOperat_Status = 0;
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
    // Serializes a message object of type VehOperatingStateInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [VehOperat_Status]
    bufferOffset = _serializer.int8(obj.VehOperat_Status, buffer, bufferOffset);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float32(obj.process_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehOperatingStateInterface
    let len;
    let data = new VehOperatingStateInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VehOperat_Status]
    data.VehOperat_Status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/VehOperatingStateInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04f41a0b98d40a7eebbc487cf38ee657';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  timestamp  # 数据帧时间戳
    int8 VehOperat_Status #  1 - 人工驾驶;2 - 上电自检; 3 - 车辆起步; 4 - 进入棉田; 5 - 开始采棉; 6-暂停工作; 7- 卸载棉花;8-完工收车
    float32  process_time    # 进程处理时间
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehOperatingStateInterface(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.VehOperat_Status !== undefined) {
      resolved.VehOperat_Status = msg.VehOperat_Status;
    }
    else {
      resolved.VehOperat_Status = 0
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

module.exports = VehOperatingStateInterface;
