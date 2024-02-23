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

class PathSpeedCtrlInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.Target_velocity = null;
      this.Target_steering_angle = null;
      this.Target_gear = null;
      this.Target_primary_gear = null;
      this.Target_EngineSpeedLevel = null;
      this.Target_speedlever_percentage = null;
      this.Target_Torque_Nm = null;
      this.Target_braking_percentage = null;
      this.NearestPoint_Car2Path = null;
      this.Cotton_Bin_Ctrl = null;
      this.CTE = null;
      this.dHead = null;
      this.brake_enable = null;
      this.value_brake = null;
      this.flag = null;
      this.raw_control = null;
      this.kappa = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('Target_velocity')) {
        this.Target_velocity = initObj.Target_velocity
      }
      else {
        this.Target_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('Target_steering_angle')) {
        this.Target_steering_angle = initObj.Target_steering_angle
      }
      else {
        this.Target_steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('Target_gear')) {
        this.Target_gear = initObj.Target_gear
      }
      else {
        this.Target_gear = 0;
      }
      if (initObj.hasOwnProperty('Target_primary_gear')) {
        this.Target_primary_gear = initObj.Target_primary_gear
      }
      else {
        this.Target_primary_gear = 0;
      }
      if (initObj.hasOwnProperty('Target_EngineSpeedLevel')) {
        this.Target_EngineSpeedLevel = initObj.Target_EngineSpeedLevel
      }
      else {
        this.Target_EngineSpeedLevel = 0;
      }
      if (initObj.hasOwnProperty('Target_speedlever_percentage')) {
        this.Target_speedlever_percentage = initObj.Target_speedlever_percentage
      }
      else {
        this.Target_speedlever_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('Target_Torque_Nm')) {
        this.Target_Torque_Nm = initObj.Target_Torque_Nm
      }
      else {
        this.Target_Torque_Nm = 0.0;
      }
      if (initObj.hasOwnProperty('Target_braking_percentage')) {
        this.Target_braking_percentage = initObj.Target_braking_percentage
      }
      else {
        this.Target_braking_percentage = 0;
      }
      if (initObj.hasOwnProperty('NearestPoint_Car2Path')) {
        this.NearestPoint_Car2Path = initObj.NearestPoint_Car2Path
      }
      else {
        this.NearestPoint_Car2Path = [];
      }
      if (initObj.hasOwnProperty('Cotton_Bin_Ctrl')) {
        this.Cotton_Bin_Ctrl = initObj.Cotton_Bin_Ctrl
      }
      else {
        this.Cotton_Bin_Ctrl = 0;
      }
      if (initObj.hasOwnProperty('CTE')) {
        this.CTE = initObj.CTE
      }
      else {
        this.CTE = 0.0;
      }
      if (initObj.hasOwnProperty('dHead')) {
        this.dHead = initObj.dHead
      }
      else {
        this.dHead = 0.0;
      }
      if (initObj.hasOwnProperty('brake_enable')) {
        this.brake_enable = initObj.brake_enable
      }
      else {
        this.brake_enable = 0.0;
      }
      if (initObj.hasOwnProperty('value_brake')) {
        this.value_brake = initObj.value_brake
      }
      else {
        this.value_brake = 0.0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = [];
      }
      if (initObj.hasOwnProperty('raw_control')) {
        this.raw_control = initObj.raw_control
      }
      else {
        this.raw_control = 0.0;
      }
      if (initObj.hasOwnProperty('kappa')) {
        this.kappa = initObj.kappa
      }
      else {
        this.kappa = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathSpeedCtrlInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [Target_velocity]
    bufferOffset = _serializer.float32(obj.Target_velocity, buffer, bufferOffset);
    // Serialize message field [Target_steering_angle]
    bufferOffset = _serializer.float32(obj.Target_steering_angle, buffer, bufferOffset);
    // Serialize message field [Target_gear]
    bufferOffset = _serializer.uint8(obj.Target_gear, buffer, bufferOffset);
    // Serialize message field [Target_primary_gear]
    bufferOffset = _serializer.uint8(obj.Target_primary_gear, buffer, bufferOffset);
    // Serialize message field [Target_EngineSpeedLevel]
    bufferOffset = _serializer.uint8(obj.Target_EngineSpeedLevel, buffer, bufferOffset);
    // Serialize message field [Target_speedlever_percentage]
    bufferOffset = _serializer.float32(obj.Target_speedlever_percentage, buffer, bufferOffset);
    // Serialize message field [Target_Torque_Nm]
    bufferOffset = _serializer.float32(obj.Target_Torque_Nm, buffer, bufferOffset);
    // Serialize message field [Target_braking_percentage]
    bufferOffset = _serializer.uint8(obj.Target_braking_percentage, buffer, bufferOffset);
    // Serialize message field [NearestPoint_Car2Path]
    bufferOffset = _arraySerializer.float32(obj.NearestPoint_Car2Path, buffer, bufferOffset, null);
    // Serialize message field [Cotton_Bin_Ctrl]
    bufferOffset = _serializer.int8(obj.Cotton_Bin_Ctrl, buffer, bufferOffset);
    // Serialize message field [CTE]
    bufferOffset = _serializer.float32(obj.CTE, buffer, bufferOffset);
    // Serialize message field [dHead]
    bufferOffset = _serializer.float32(obj.dHead, buffer, bufferOffset);
    // Serialize message field [brake_enable]
    bufferOffset = _serializer.float32(obj.brake_enable, buffer, bufferOffset);
    // Serialize message field [value_brake]
    bufferOffset = _serializer.float32(obj.value_brake, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _arraySerializer.float32(obj.flag, buffer, bufferOffset, null);
    // Serialize message field [raw_control]
    bufferOffset = _serializer.float32(obj.raw_control, buffer, bufferOffset);
    // Serialize message field [kappa]
    bufferOffset = _serializer.float32(obj.kappa, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathSpeedCtrlInterface
    let len;
    let data = new PathSpeedCtrlInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Target_velocity]
    data.Target_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Target_steering_angle]
    data.Target_steering_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Target_gear]
    data.Target_gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Target_primary_gear]
    data.Target_primary_gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Target_EngineSpeedLevel]
    data.Target_EngineSpeedLevel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Target_speedlever_percentage]
    data.Target_speedlever_percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Target_Torque_Nm]
    data.Target_Torque_Nm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Target_braking_percentage]
    data.Target_braking_percentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [NearestPoint_Car2Path]
    data.NearestPoint_Car2Path = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [Cotton_Bin_Ctrl]
    data.Cotton_Bin_Ctrl = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CTE]
    data.CTE = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dHead]
    data.dHead = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_enable]
    data.brake_enable = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [value_brake]
    data.value_brake = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [raw_control]
    data.raw_control = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kappa]
    data.kappa = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.NearestPoint_Car2Path.length;
    length += 4 * object.flag.length;
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hmi/PathSpeedCtrlInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a552e8162979c20b671aaee207815dbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  timestamp         # 数据帧时间戳
    float32  Target_velocity    # 车辆速度m/s
    float32  Target_steering_angle    # 车辆转角，方向盘转角 
    uint8  Target_gear   # 01：驻车；02：空挡（N）；03：前进（D）；04：后退（R）；05：无效；
    uint8  Target_primary_gear   # 01：低速，02：中速；03：高速；
    uint8  Target_EngineSpeedLevel   # 01：低速；02：中速；03：高速；
    float32  Target_speedlever_percentage   #车速手柄（采棉机）开度（-1000-1000）   对应【-100%, 100%】，负数为后退，正数为前进。
    float32  Target_Torque_Nm   #目标驱动扭矩（单位：Nm，没有则给0）。
    uint8  Target_braking_percentage   #制动行程请求，最大行程点125，最小行程点为0，单位为个（当前将行程分成125个点）
    float32[] NearestPoint_Car2Path  # 反馈当前车辆位置距离规划的局部路径的最近点，包括：
    # float   longitude        # 途径点经度（东向坐标，单位为：m）
    # float   latitude         # 途径点纬度（北向坐标，单位为：m）
    # float   speed         # 途径点速度（单位：m/s）
    
    
    # add cyun 8.1
    int8 Cotton_Bin_Ctrl #棉线动作使能
    
    
    # add cyun 8.21
    float32 CTE
    float32 dHead
    
    # add cyun 8.30
    float32 brake_enable  #刹车使能
    float32 value_brake   #刹车量
    
    # add cyun 8.31
    float32[]  flag # 标志位，控制给线控，表明发送成功
    
    
    float32 raw_control # 
    
    
    float32 kappa #采棉时转弯，提采头的判断
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathSpeedCtrlInterface(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.Target_velocity !== undefined) {
      resolved.Target_velocity = msg.Target_velocity;
    }
    else {
      resolved.Target_velocity = 0.0
    }

    if (msg.Target_steering_angle !== undefined) {
      resolved.Target_steering_angle = msg.Target_steering_angle;
    }
    else {
      resolved.Target_steering_angle = 0.0
    }

    if (msg.Target_gear !== undefined) {
      resolved.Target_gear = msg.Target_gear;
    }
    else {
      resolved.Target_gear = 0
    }

    if (msg.Target_primary_gear !== undefined) {
      resolved.Target_primary_gear = msg.Target_primary_gear;
    }
    else {
      resolved.Target_primary_gear = 0
    }

    if (msg.Target_EngineSpeedLevel !== undefined) {
      resolved.Target_EngineSpeedLevel = msg.Target_EngineSpeedLevel;
    }
    else {
      resolved.Target_EngineSpeedLevel = 0
    }

    if (msg.Target_speedlever_percentage !== undefined) {
      resolved.Target_speedlever_percentage = msg.Target_speedlever_percentage;
    }
    else {
      resolved.Target_speedlever_percentage = 0.0
    }

    if (msg.Target_Torque_Nm !== undefined) {
      resolved.Target_Torque_Nm = msg.Target_Torque_Nm;
    }
    else {
      resolved.Target_Torque_Nm = 0.0
    }

    if (msg.Target_braking_percentage !== undefined) {
      resolved.Target_braking_percentage = msg.Target_braking_percentage;
    }
    else {
      resolved.Target_braking_percentage = 0
    }

    if (msg.NearestPoint_Car2Path !== undefined) {
      resolved.NearestPoint_Car2Path = msg.NearestPoint_Car2Path;
    }
    else {
      resolved.NearestPoint_Car2Path = []
    }

    if (msg.Cotton_Bin_Ctrl !== undefined) {
      resolved.Cotton_Bin_Ctrl = msg.Cotton_Bin_Ctrl;
    }
    else {
      resolved.Cotton_Bin_Ctrl = 0
    }

    if (msg.CTE !== undefined) {
      resolved.CTE = msg.CTE;
    }
    else {
      resolved.CTE = 0.0
    }

    if (msg.dHead !== undefined) {
      resolved.dHead = msg.dHead;
    }
    else {
      resolved.dHead = 0.0
    }

    if (msg.brake_enable !== undefined) {
      resolved.brake_enable = msg.brake_enable;
    }
    else {
      resolved.brake_enable = 0.0
    }

    if (msg.value_brake !== undefined) {
      resolved.value_brake = msg.value_brake;
    }
    else {
      resolved.value_brake = 0.0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = []
    }

    if (msg.raw_control !== undefined) {
      resolved.raw_control = msg.raw_control;
    }
    else {
      resolved.raw_control = 0.0
    }

    if (msg.kappa !== undefined) {
      resolved.kappa = msg.kappa;
    }
    else {
      resolved.kappa = 0.0
    }

    return resolved;
    }
};

module.exports = PathSpeedCtrlInterface;
