// Auto-generated. Do not edit!

// (in-package hmi.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HmiStartEndPointInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
      this.roadid = null;
      this.stationid = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
      if (initObj.hasOwnProperty('roadid')) {
        this.roadid = initObj.roadid
      }
      else {
        this.roadid = 0;
      }
      if (initObj.hasOwnProperty('stationid')) {
        this.stationid = initObj.stationid
      }
      else {
        this.stationid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HmiStartEndPointInterface
    // Serialize message field [flag]
    bufferOffset = _serializer.int8(obj.flag, buffer, bufferOffset);
    // Serialize message field [roadid]
    bufferOffset = _serializer.int32(obj.roadid, buffer, bufferOffset);
    // Serialize message field [stationid]
    bufferOffset = _serializer.int32(obj.stationid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HmiStartEndPointInterface
    let len;
    let data = new HmiStartEndPointInterface(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [roadid]
    data.roadid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stationid]
    data.stationid = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hmi/HmiStartEndPointInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '764c8e13d4a4b0d9d9bdd7520da5ffd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 flag                       #标志位
    int32 roadid                     #界面重启
    int32 stationid 		 #紧急停车按钮
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HmiStartEndPointInterface(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    if (msg.roadid !== undefined) {
      resolved.roadid = msg.roadid;
    }
    else {
      resolved.roadid = 0
    }

    if (msg.stationid !== undefined) {
      resolved.stationid = msg.stationid;
    }
    else {
      resolved.stationid = 0
    }

    return resolved;
    }
};

module.exports = HmiStartEndPointInterface;
