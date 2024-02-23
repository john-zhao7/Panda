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

class FaultDiagnosisInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lidar_start = null;
      this.Gps_state_fault = null;
      this.can_state = null;
    }
    else {
      if (initObj.hasOwnProperty('lidar_start')) {
        this.lidar_start = initObj.lidar_start
      }
      else {
        this.lidar_start = 0;
      }
      if (initObj.hasOwnProperty('Gps_state_fault')) {
        this.Gps_state_fault = initObj.Gps_state_fault
      }
      else {
        this.Gps_state_fault = false;
      }
      if (initObj.hasOwnProperty('can_state')) {
        this.can_state = initObj.can_state
      }
      else {
        this.can_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaultDiagnosisInterface
    // Serialize message field [lidar_start]
    bufferOffset = _serializer.int8(obj.lidar_start, buffer, bufferOffset);
    // Serialize message field [Gps_state_fault]
    bufferOffset = _serializer.bool(obj.Gps_state_fault, buffer, bufferOffset);
    // Serialize message field [can_state]
    bufferOffset = _serializer.bool(obj.can_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaultDiagnosisInterface
    let len;
    let data = new FaultDiagnosisInterface(null);
    // Deserialize message field [lidar_start]
    data.lidar_start = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Gps_state_fault]
    data.Gps_state_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_state]
    data.can_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/FaultDiagnosisInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecaf07b9d1233a61400449644874e137';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 lidar_start        #0-未启动 1-启动
    bool Gps_state_fault    #惯导通讯故障 False：异常；True：正常
    bool can_state          #can通信故障False：异常；True：正常
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaultDiagnosisInterface(null);
    if (msg.lidar_start !== undefined) {
      resolved.lidar_start = msg.lidar_start;
    }
    else {
      resolved.lidar_start = 0
    }

    if (msg.Gps_state_fault !== undefined) {
      resolved.Gps_state_fault = msg.Gps_state_fault;
    }
    else {
      resolved.Gps_state_fault = false
    }

    if (msg.can_state !== undefined) {
      resolved.can_state = msg.can_state;
    }
    else {
      resolved.can_state = false
    }

    return resolved;
    }
};

module.exports = FaultDiagnosisInterface;
