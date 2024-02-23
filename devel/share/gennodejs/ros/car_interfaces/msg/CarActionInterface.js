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

class CarActionInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
      this.operate = null;
      this.unloading = null;
      this.cotton_box_control = null;
      this.cotton_unloading = null;
      this.Head_control = null;
      this.Engine_power = null;
      this.Target_Fan_gear = null;
      this.Door_control = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
      if (initObj.hasOwnProperty('operate')) {
        this.operate = initObj.operate
      }
      else {
        this.operate = 0;
      }
      if (initObj.hasOwnProperty('unloading')) {
        this.unloading = initObj.unloading
      }
      else {
        this.unloading = 0;
      }
      if (initObj.hasOwnProperty('cotton_box_control')) {
        this.cotton_box_control = initObj.cotton_box_control
      }
      else {
        this.cotton_box_control = 0;
      }
      if (initObj.hasOwnProperty('cotton_unloading')) {
        this.cotton_unloading = initObj.cotton_unloading
      }
      else {
        this.cotton_unloading = 0;
      }
      if (initObj.hasOwnProperty('Head_control')) {
        this.Head_control = initObj.Head_control
      }
      else {
        this.Head_control = 0;
      }
      if (initObj.hasOwnProperty('Engine_power')) {
        this.Engine_power = initObj.Engine_power
      }
      else {
        this.Engine_power = 0;
      }
      if (initObj.hasOwnProperty('Target_Fan_gear')) {
        this.Target_Fan_gear = initObj.Target_Fan_gear
      }
      else {
        this.Target_Fan_gear = 0;
      }
      if (initObj.hasOwnProperty('Door_control')) {
        this.Door_control = initObj.Door_control
      }
      else {
        this.Door_control = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarActionInterface
    // Serialize message field [flag]
    bufferOffset = _serializer.int8(obj.flag, buffer, bufferOffset);
    // Serialize message field [operate]
    bufferOffset = _serializer.int8(obj.operate, buffer, bufferOffset);
    // Serialize message field [unloading]
    bufferOffset = _serializer.int8(obj.unloading, buffer, bufferOffset);
    // Serialize message field [cotton_box_control]
    bufferOffset = _serializer.int8(obj.cotton_box_control, buffer, bufferOffset);
    // Serialize message field [cotton_unloading]
    bufferOffset = _serializer.int8(obj.cotton_unloading, buffer, bufferOffset);
    // Serialize message field [Head_control]
    bufferOffset = _serializer.int8(obj.Head_control, buffer, bufferOffset);
    // Serialize message field [Engine_power]
    bufferOffset = _serializer.int8(obj.Engine_power, buffer, bufferOffset);
    // Serialize message field [Target_Fan_gear]
    bufferOffset = _serializer.int8(obj.Target_Fan_gear, buffer, bufferOffset);
    // Serialize message field [Door_control]
    bufferOffset = _serializer.int8(obj.Door_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarActionInterface
    let len;
    let data = new CarActionInterface(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [operate]
    data.operate = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [unloading]
    data.unloading = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cotton_box_control]
    data.cotton_box_control = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cotton_unloading]
    data.cotton_unloading = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Head_control]
    data.Head_control = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Engine_power]
    data.Engine_power = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Target_Fan_gear]
    data.Target_Fan_gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Door_control]
    data.Door_control = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/CarActionInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca82fc4562e5f4077985eac24b00c6b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # topic car_action_data
    int8 flag                       #标志位
    int8 operate #0-不使能 1-使能
    # 采头下降
    # 风机打开 
    # 中速档
    # 风机采头打开  
    # 高速档
    
    
    # 卸棉动作（全体）启动按钮
    int8 unloading # 0-不使能 1-使能
    # 棉线倾斜
    # 传送带  停留一段时间（按照装满来说是30s-1min吧）
    
    
    # 其余动作按钮
    int8 cotton_box_control 		 #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 
    # int8 cotton_picker_enable      	 # 采头风机使能 0-不使能 1-使能 
    int8 cotton_unloading                    # 卸棉传送带  0-关闭 1-启动
    int8 Head_control    			 # 0-不动作 1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能）
    int8 Engine_power     			 # 0-不动作 1-低速 2-中速 3-高速
    int8 Target_Fan_gear 			 # 采头风机 0-不接通 1-风机 2-采头风机
    int8 Door_control    			 #门控 0-停止 1-开门 2-关门
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarActionInterface(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    if (msg.operate !== undefined) {
      resolved.operate = msg.operate;
    }
    else {
      resolved.operate = 0
    }

    if (msg.unloading !== undefined) {
      resolved.unloading = msg.unloading;
    }
    else {
      resolved.unloading = 0
    }

    if (msg.cotton_box_control !== undefined) {
      resolved.cotton_box_control = msg.cotton_box_control;
    }
    else {
      resolved.cotton_box_control = 0
    }

    if (msg.cotton_unloading !== undefined) {
      resolved.cotton_unloading = msg.cotton_unloading;
    }
    else {
      resolved.cotton_unloading = 0
    }

    if (msg.Head_control !== undefined) {
      resolved.Head_control = msg.Head_control;
    }
    else {
      resolved.Head_control = 0
    }

    if (msg.Engine_power !== undefined) {
      resolved.Engine_power = msg.Engine_power;
    }
    else {
      resolved.Engine_power = 0
    }

    if (msg.Target_Fan_gear !== undefined) {
      resolved.Target_Fan_gear = msg.Target_Fan_gear;
    }
    else {
      resolved.Target_Fan_gear = 0
    }

    if (msg.Door_control !== undefined) {
      resolved.Door_control = msg.Door_control;
    }
    else {
      resolved.Door_control = 0
    }

    return resolved;
    }
};

module.exports = CarActionInterface;
