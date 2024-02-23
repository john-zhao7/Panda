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

class NodePointsInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stationpoint = null;
      this.incppoint = null;
    }
    else {
      if (initObj.hasOwnProperty('stationpoint')) {
        this.stationpoint = initObj.stationpoint
      }
      else {
        this.stationpoint = [];
      }
      if (initObj.hasOwnProperty('incppoint')) {
        this.incppoint = initObj.incppoint
      }
      else {
        this.incppoint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodePointsInterface
    // Serialize message field [stationpoint]
    bufferOffset = _arraySerializer.float64(obj.stationpoint, buffer, bufferOffset, null);
    // Serialize message field [incppoint]
    bufferOffset = _arraySerializer.float64(obj.incppoint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodePointsInterface
    let len;
    let data = new NodePointsInterface(null);
    // Deserialize message field [stationpoint]
    data.stationpoint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [incppoint]
    data.incppoint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.stationpoint.length;
    length += 8 * object.incppoint.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hmi/NodePointsInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d98513179a031ba600954534b7ca6bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[]  stationpoint   #站点信息集，先经后纬
    float64[]  incppoint      #路口信息集，先经后纬
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodePointsInterface(null);
    if (msg.stationpoint !== undefined) {
      resolved.stationpoint = msg.stationpoint;
    }
    else {
      resolved.stationpoint = []
    }

    if (msg.incppoint !== undefined) {
      resolved.incppoint = msg.incppoint;
    }
    else {
      resolved.incppoint = []
    }

    return resolved;
    }
};

module.exports = NodePointsInterface;
