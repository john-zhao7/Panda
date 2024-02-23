// Auto-generated. Do not edit!

// (in-package lidar.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LidarObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.exist_con = null;
      this.vel_x = null;
      this.vel_y = null;
      this.vel_z = null;
      this.dis_x = null;
      this.dis_y = null;
      this.dis_z = null;
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.object_x = null;
      this.object_y = null;
      this.object_z = null;
      this.core_x = null;
      this.core_y = null;
      this.core_z = null;
      this.attention_type = null;
      this.motion_state = null;
      this.age = null;
      this.tra_id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('exist_con')) {
        this.exist_con = initObj.exist_con
      }
      else {
        this.exist_con = 0.0;
      }
      if (initObj.hasOwnProperty('vel_x')) {
        this.vel_x = initObj.vel_x
      }
      else {
        this.vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('vel_y')) {
        this.vel_y = initObj.vel_y
      }
      else {
        this.vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('vel_z')) {
        this.vel_z = initObj.vel_z
      }
      else {
        this.vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('dis_x')) {
        this.dis_x = initObj.dis_x
      }
      else {
        this.dis_x = 0.0;
      }
      if (initObj.hasOwnProperty('dis_y')) {
        this.dis_y = initObj.dis_y
      }
      else {
        this.dis_y = 0.0;
      }
      if (initObj.hasOwnProperty('dis_z')) {
        this.dis_z = initObj.dis_z
      }
      else {
        this.dis_z = 0.0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('object_x')) {
        this.object_x = initObj.object_x
      }
      else {
        this.object_x = 0.0;
      }
      if (initObj.hasOwnProperty('object_y')) {
        this.object_y = initObj.object_y
      }
      else {
        this.object_y = 0.0;
      }
      if (initObj.hasOwnProperty('object_z')) {
        this.object_z = initObj.object_z
      }
      else {
        this.object_z = 0.0;
      }
      if (initObj.hasOwnProperty('core_x')) {
        this.core_x = initObj.core_x
      }
      else {
        this.core_x = 0.0;
      }
      if (initObj.hasOwnProperty('core_y')) {
        this.core_y = initObj.core_y
      }
      else {
        this.core_y = 0.0;
      }
      if (initObj.hasOwnProperty('core_z')) {
        this.core_z = initObj.core_z
      }
      else {
        this.core_z = 0.0;
      }
      if (initObj.hasOwnProperty('attention_type')) {
        this.attention_type = initObj.attention_type
      }
      else {
        this.attention_type = 0;
      }
      if (initObj.hasOwnProperty('motion_state')) {
        this.motion_state = initObj.motion_state
      }
      else {
        this.motion_state = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0.0;
      }
      if (initObj.hasOwnProperty('tra_id')) {
        this.tra_id = initObj.tra_id
      }
      else {
        this.tra_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarObject
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [exist_con]
    bufferOffset = _serializer.float32(obj.exist_con, buffer, bufferOffset);
    // Serialize message field [vel_x]
    bufferOffset = _serializer.float32(obj.vel_x, buffer, bufferOffset);
    // Serialize message field [vel_y]
    bufferOffset = _serializer.float32(obj.vel_y, buffer, bufferOffset);
    // Serialize message field [vel_z]
    bufferOffset = _serializer.float32(obj.vel_z, buffer, bufferOffset);
    // Serialize message field [dis_x]
    bufferOffset = _serializer.float32(obj.dis_x, buffer, bufferOffset);
    // Serialize message field [dis_y]
    bufferOffset = _serializer.float32(obj.dis_y, buffer, bufferOffset);
    // Serialize message field [dis_z]
    bufferOffset = _serializer.float32(obj.dis_z, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float32(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float32(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.float32(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [object_x]
    bufferOffset = _serializer.float32(obj.object_x, buffer, bufferOffset);
    // Serialize message field [object_y]
    bufferOffset = _serializer.float32(obj.object_y, buffer, bufferOffset);
    // Serialize message field [object_z]
    bufferOffset = _serializer.float32(obj.object_z, buffer, bufferOffset);
    // Serialize message field [core_x]
    bufferOffset = _serializer.float32(obj.core_x, buffer, bufferOffset);
    // Serialize message field [core_y]
    bufferOffset = _serializer.float32(obj.core_y, buffer, bufferOffset);
    // Serialize message field [core_z]
    bufferOffset = _serializer.float32(obj.core_z, buffer, bufferOffset);
    // Serialize message field [attention_type]
    bufferOffset = _serializer.uint8(obj.attention_type, buffer, bufferOffset);
    // Serialize message field [motion_state]
    bufferOffset = _serializer.uint8(obj.motion_state, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.float32(obj.age, buffer, bufferOffset);
    // Serialize message field [tra_id]
    bufferOffset = _serializer.uint8(obj.tra_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarObject
    let len;
    let data = new LidarObject(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [exist_con]
    data.exist_con = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_x]
    data.vel_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_y]
    data.vel_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_z]
    data.vel_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_x]
    data.dis_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_y]
    data.dis_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_z]
    data.dis_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [object_x]
    data.object_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [object_y]
    data.object_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [object_z]
    data.object_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [core_x]
    data.core_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [core_y]
    data.core_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [core_z]
    data.core_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [attention_type]
    data.attention_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motion_state]
    data.motion_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tra_id]
    data.tra_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar/LidarObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27ffc99628ee0a3fb5403a184a2873f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 id
    uint8 type
    float32 exist_con
    float32 vel_x
    float32 vel_y
    float32 vel_z
    float32 dis_x
    float32 dis_y
    float32 dis_z
    float32 acc_x
    float32 acc_y
    float32 acc_z
    float32 object_x
    float32 object_y
    float32 object_z
    float32 core_x
    float32 core_y
    float32 core_z
    uint8 attention_type
    uint8   motion_state
    float32 age
    uint8 tra_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarObject(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.exist_con !== undefined) {
      resolved.exist_con = msg.exist_con;
    }
    else {
      resolved.exist_con = 0.0
    }

    if (msg.vel_x !== undefined) {
      resolved.vel_x = msg.vel_x;
    }
    else {
      resolved.vel_x = 0.0
    }

    if (msg.vel_y !== undefined) {
      resolved.vel_y = msg.vel_y;
    }
    else {
      resolved.vel_y = 0.0
    }

    if (msg.vel_z !== undefined) {
      resolved.vel_z = msg.vel_z;
    }
    else {
      resolved.vel_z = 0.0
    }

    if (msg.dis_x !== undefined) {
      resolved.dis_x = msg.dis_x;
    }
    else {
      resolved.dis_x = 0.0
    }

    if (msg.dis_y !== undefined) {
      resolved.dis_y = msg.dis_y;
    }
    else {
      resolved.dis_y = 0.0
    }

    if (msg.dis_z !== undefined) {
      resolved.dis_z = msg.dis_z;
    }
    else {
      resolved.dis_z = 0.0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0.0
    }

    if (msg.object_x !== undefined) {
      resolved.object_x = msg.object_x;
    }
    else {
      resolved.object_x = 0.0
    }

    if (msg.object_y !== undefined) {
      resolved.object_y = msg.object_y;
    }
    else {
      resolved.object_y = 0.0
    }

    if (msg.object_z !== undefined) {
      resolved.object_z = msg.object_z;
    }
    else {
      resolved.object_z = 0.0
    }

    if (msg.core_x !== undefined) {
      resolved.core_x = msg.core_x;
    }
    else {
      resolved.core_x = 0.0
    }

    if (msg.core_y !== undefined) {
      resolved.core_y = msg.core_y;
    }
    else {
      resolved.core_y = 0.0
    }

    if (msg.core_z !== undefined) {
      resolved.core_z = msg.core_z;
    }
    else {
      resolved.core_z = 0.0
    }

    if (msg.attention_type !== undefined) {
      resolved.attention_type = msg.attention_type;
    }
    else {
      resolved.attention_type = 0
    }

    if (msg.motion_state !== undefined) {
      resolved.motion_state = msg.motion_state;
    }
    else {
      resolved.motion_state = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0.0
    }

    if (msg.tra_id !== undefined) {
      resolved.tra_id = msg.tra_id;
    }
    else {
      resolved.tra_id = 0
    }

    return resolved;
    }
};

module.exports = LidarObject;
