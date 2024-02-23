// Auto-generated. Do not edit!

// (in-package lidar.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarObject = require('./LidarObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LidarObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Object = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Object')) {
        this.Object = initObj.Object
      }
      else {
        this.Object = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarObjectList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Object]
    // Serialize the length for message field [Object]
    bufferOffset = _serializer.uint32(obj.Object.length, buffer, bufferOffset);
    obj.Object.forEach((val) => {
      bufferOffset = LidarObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarObjectList
    let len;
    let data = new LidarObjectList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Object]
    // Deserialize array length for message field [Object]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Object = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Object[i] = LidarObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 73 * object.Object.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar/LidarObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8c1991d35137676f110b6223f02f5c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    lidar/LidarObject[] Object
    
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: lidar/LidarObject
    
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
    const resolved = new LidarObjectList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Object !== undefined) {
      resolved.Object = new Array(msg.Object.length);
      for (let i = 0; i < resolved.Object.length; ++i) {
        resolved.Object[i] = LidarObject.Resolve(msg.Object[i]);
      }
    }
    else {
      resolved.Object = []
    }

    return resolved;
    }
};

module.exports = LidarObjectList;
