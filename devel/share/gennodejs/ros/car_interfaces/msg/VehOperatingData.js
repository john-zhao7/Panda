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

class VehOperatingData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cotton_box_control = null;
      this.cotton_unloading = null;
      this.Head_control = null;
      this.Engine_power = null;
      this.Target_Fan_gear = null;
      this.Door_control = null;
      this.flag = null;
    }
    else {
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
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehOperatingData
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
    // Serialize message field [flag]
    bufferOffset = _serializer.int8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehOperatingData
    let len;
    let data = new VehOperatingData(null);
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
    // Deserialize message field [flag]
    data.flag = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/VehOperatingData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6881f1f50cfa4ccbc6e29bdbd978adae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # float64  timestamp  # 数据帧时间戳
    # float32  cotton_picker_fan_Enabler    #  使能采头与风机，1-使能；0-保持不变；
    # float32  cotton_bin_upper    # 升棉箱指令，1-提升；0-保持不变；
    # uint8  cotton_bin_lower   # 降棉箱指令，1-降低；0-保持不变；
    # uint8  cotton_bin_tilting   #  棉箱倾斜指令（需要持续作用，长按），1-倾斜；0-保持不变；
    # uint8  cotton_bin_restore # 棉箱回正指令（需要持续作用，长按），1-回正；0-保持不变；
    # uint8  cotton_unload  # 卸棉花指令（传送带），1-卸载；0-保持不变；
    # float32  process_time    # 进程处理时间
    
    # int8 operate# 0-不使能 1-使能
    # int8 unloading # 0-不使能 1-使能
    
    
    
    # 10.17 cyun
    int8 cotton_box_control   #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 
    # int8 cotton_picker_enable       # 采头风机使能 0-不使能 1-使能 
    int8 cotton_unloading         # 卸棉传送带  0-关闭 1-启动
    # auto_enable= 1           #enable_single;
    # speed_range= 0                  
    # throttle_opening=0  #-100~100       
    int8 Head_control    #1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能） 
    int8 Engine_power     # 1-低速 2-中速 3-高速               
    int8 Target_Fan_gear  # 采头风机 0-不接通 1-风机 2-采头风机
    # Reserve_1=0       # 驻车信号 0-驻车 1-取消
    # Target_steering_angle = 0 #方向盘转角
    # brake_enable=0  #刹车使能
    # brake_pressure_request=0 #刹车行程
    # Reserve_2=0
    # Target_turn_light=0
    int8 Door_control    #门控 0-停止 1-开门 2-关门
    # Reserve_3=0
    
    int8 flag # 发送到线控成功
    
    # operate = 0 # 采棉动作流程
    # unloading = 0# 卸棉流程
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehOperatingData(null);
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

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

module.exports = VehOperatingData;
