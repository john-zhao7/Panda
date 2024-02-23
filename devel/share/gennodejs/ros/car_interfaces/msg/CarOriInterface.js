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

class CarOriInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.id = null;
      this.auto_enable = null;
      this.carspeed = null;
      this.steerangle = null;
      this.current_angle = null;
      this.gearpos = null;
      this.brake_pressure_request = null;
      this.brake_enable = null;
      this.current_braking_percentage = null;
      this.soc = null;
      this.batteryvol = null;
      this.batterydischargecur = null;
      this.car_run_mode = null;
      this.throttle_percentage = null;
      this.left_light = null;
      this.right_light = null;
      this.reversing_light = null;
      this.speaker = null;
      this.start_button = null;
      this.stop_button = null;
      this.state = null;
      this.error = null;
      this.cotton_picker_fan_Enabler_act = null;
      this.cotton_bin_upper_act = null;
      this.cotton_bin_lower_act = null;
      this.cotton_bin_tilting_act = null;
      this.cotton_bin_restore_act = null;
      this.cotton_unload_act = null;
      this.cotton_picker_head_height = null;
      this.Target_primary_gear_act = null;
      this.Target_EngineSpeedLevel_act = null;
      this.Target_speedlever_percentage_act = null;
      this.process_time = null;
      this.raw_controlled = null;
      this.wait_wirectrl = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('auto_enable')) {
        this.auto_enable = initObj.auto_enable
      }
      else {
        this.auto_enable = 0;
      }
      if (initObj.hasOwnProperty('carspeed')) {
        this.carspeed = initObj.carspeed
      }
      else {
        this.carspeed = 0.0;
      }
      if (initObj.hasOwnProperty('steerangle')) {
        this.steerangle = initObj.steerangle
      }
      else {
        this.steerangle = 0.0;
      }
      if (initObj.hasOwnProperty('current_angle')) {
        this.current_angle = initObj.current_angle
      }
      else {
        this.current_angle = 0.0;
      }
      if (initObj.hasOwnProperty('gearpos')) {
        this.gearpos = initObj.gearpos
      }
      else {
        this.gearpos = 0;
      }
      if (initObj.hasOwnProperty('brake_pressure_request')) {
        this.brake_pressure_request = initObj.brake_pressure_request
      }
      else {
        this.brake_pressure_request = 0.0;
      }
      if (initObj.hasOwnProperty('brake_enable')) {
        this.brake_enable = initObj.brake_enable
      }
      else {
        this.brake_enable = 0;
      }
      if (initObj.hasOwnProperty('current_braking_percentage')) {
        this.current_braking_percentage = initObj.current_braking_percentage
      }
      else {
        this.current_braking_percentage = 0;
      }
      if (initObj.hasOwnProperty('soc')) {
        this.soc = initObj.soc
      }
      else {
        this.soc = 0;
      }
      if (initObj.hasOwnProperty('batteryvol')) {
        this.batteryvol = initObj.batteryvol
      }
      else {
        this.batteryvol = 0;
      }
      if (initObj.hasOwnProperty('batterydischargecur')) {
        this.batterydischargecur = initObj.batterydischargecur
      }
      else {
        this.batterydischargecur = 0;
      }
      if (initObj.hasOwnProperty('car_run_mode')) {
        this.car_run_mode = initObj.car_run_mode
      }
      else {
        this.car_run_mode = 0;
      }
      if (initObj.hasOwnProperty('throttle_percentage')) {
        this.throttle_percentage = initObj.throttle_percentage
      }
      else {
        this.throttle_percentage = 0;
      }
      if (initObj.hasOwnProperty('left_light')) {
        this.left_light = initObj.left_light
      }
      else {
        this.left_light = 0;
      }
      if (initObj.hasOwnProperty('right_light')) {
        this.right_light = initObj.right_light
      }
      else {
        this.right_light = 0;
      }
      if (initObj.hasOwnProperty('reversing_light')) {
        this.reversing_light = initObj.reversing_light
      }
      else {
        this.reversing_light = 0;
      }
      if (initObj.hasOwnProperty('speaker')) {
        this.speaker = initObj.speaker
      }
      else {
        this.speaker = 0;
      }
      if (initObj.hasOwnProperty('start_button')) {
        this.start_button = initObj.start_button
      }
      else {
        this.start_button = 0;
      }
      if (initObj.hasOwnProperty('stop_button')) {
        this.stop_button = initObj.stop_button
      }
      else {
        this.stop_button = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
      if (initObj.hasOwnProperty('cotton_picker_fan_Enabler_act')) {
        this.cotton_picker_fan_Enabler_act = initObj.cotton_picker_fan_Enabler_act
      }
      else {
        this.cotton_picker_fan_Enabler_act = 0.0;
      }
      if (initObj.hasOwnProperty('cotton_bin_upper_act')) {
        this.cotton_bin_upper_act = initObj.cotton_bin_upper_act
      }
      else {
        this.cotton_bin_upper_act = 0.0;
      }
      if (initObj.hasOwnProperty('cotton_bin_lower_act')) {
        this.cotton_bin_lower_act = initObj.cotton_bin_lower_act
      }
      else {
        this.cotton_bin_lower_act = 0;
      }
      if (initObj.hasOwnProperty('cotton_bin_tilting_act')) {
        this.cotton_bin_tilting_act = initObj.cotton_bin_tilting_act
      }
      else {
        this.cotton_bin_tilting_act = 0;
      }
      if (initObj.hasOwnProperty('cotton_bin_restore_act')) {
        this.cotton_bin_restore_act = initObj.cotton_bin_restore_act
      }
      else {
        this.cotton_bin_restore_act = 0;
      }
      if (initObj.hasOwnProperty('cotton_unload_act')) {
        this.cotton_unload_act = initObj.cotton_unload_act
      }
      else {
        this.cotton_unload_act = 0;
      }
      if (initObj.hasOwnProperty('cotton_picker_head_height')) {
        this.cotton_picker_head_height = initObj.cotton_picker_head_height
      }
      else {
        this.cotton_picker_head_height = 0.0;
      }
      if (initObj.hasOwnProperty('Target_primary_gear_act')) {
        this.Target_primary_gear_act = initObj.Target_primary_gear_act
      }
      else {
        this.Target_primary_gear_act = 0;
      }
      if (initObj.hasOwnProperty('Target_EngineSpeedLevel_act')) {
        this.Target_EngineSpeedLevel_act = initObj.Target_EngineSpeedLevel_act
      }
      else {
        this.Target_EngineSpeedLevel_act = 0;
      }
      if (initObj.hasOwnProperty('Target_speedlever_percentage_act')) {
        this.Target_speedlever_percentage_act = initObj.Target_speedlever_percentage_act
      }
      else {
        this.Target_speedlever_percentage_act = 0;
      }
      if (initObj.hasOwnProperty('process_time')) {
        this.process_time = initObj.process_time
      }
      else {
        this.process_time = 0.0;
      }
      if (initObj.hasOwnProperty('raw_controlled')) {
        this.raw_controlled = initObj.raw_controlled
      }
      else {
        this.raw_controlled = 0.0;
      }
      if (initObj.hasOwnProperty('wait_wirectrl')) {
        this.wait_wirectrl = initObj.wait_wirectrl
      }
      else {
        this.wait_wirectrl = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarOriInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [auto_enable]
    bufferOffset = _serializer.uint8(obj.auto_enable, buffer, bufferOffset);
    // Serialize message field [carspeed]
    bufferOffset = _serializer.float32(obj.carspeed, buffer, bufferOffset);
    // Serialize message field [steerangle]
    bufferOffset = _serializer.float32(obj.steerangle, buffer, bufferOffset);
    // Serialize message field [current_angle]
    bufferOffset = _serializer.float32(obj.current_angle, buffer, bufferOffset);
    // Serialize message field [gearpos]
    bufferOffset = _serializer.int8(obj.gearpos, buffer, bufferOffset);
    // Serialize message field [brake_pressure_request]
    bufferOffset = _serializer.float32(obj.brake_pressure_request, buffer, bufferOffset);
    // Serialize message field [brake_enable]
    bufferOffset = _serializer.uint8(obj.brake_enable, buffer, bufferOffset);
    // Serialize message field [current_braking_percentage]
    bufferOffset = _serializer.uint8(obj.current_braking_percentage, buffer, bufferOffset);
    // Serialize message field [soc]
    bufferOffset = _serializer.uint8(obj.soc, buffer, bufferOffset);
    // Serialize message field [batteryvol]
    bufferOffset = _serializer.uint8(obj.batteryvol, buffer, bufferOffset);
    // Serialize message field [batterydischargecur]
    bufferOffset = _serializer.uint16(obj.batterydischargecur, buffer, bufferOffset);
    // Serialize message field [car_run_mode]
    bufferOffset = _serializer.uint8(obj.car_run_mode, buffer, bufferOffset);
    // Serialize message field [throttle_percentage]
    bufferOffset = _serializer.int16(obj.throttle_percentage, buffer, bufferOffset);
    // Serialize message field [left_light]
    bufferOffset = _serializer.uint8(obj.left_light, buffer, bufferOffset);
    // Serialize message field [right_light]
    bufferOffset = _serializer.uint8(obj.right_light, buffer, bufferOffset);
    // Serialize message field [reversing_light]
    bufferOffset = _serializer.uint8(obj.reversing_light, buffer, bufferOffset);
    // Serialize message field [speaker]
    bufferOffset = _serializer.uint8(obj.speaker, buffer, bufferOffset);
    // Serialize message field [start_button]
    bufferOffset = _serializer.uint8(obj.start_button, buffer, bufferOffset);
    // Serialize message field [stop_button]
    bufferOffset = _serializer.uint8(obj.stop_button, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.uint8(obj.error, buffer, bufferOffset);
    // Serialize message field [cotton_picker_fan_Enabler_act]
    bufferOffset = _serializer.float32(obj.cotton_picker_fan_Enabler_act, buffer, bufferOffset);
    // Serialize message field [cotton_bin_upper_act]
    bufferOffset = _serializer.float32(obj.cotton_bin_upper_act, buffer, bufferOffset);
    // Serialize message field [cotton_bin_lower_act]
    bufferOffset = _serializer.uint8(obj.cotton_bin_lower_act, buffer, bufferOffset);
    // Serialize message field [cotton_bin_tilting_act]
    bufferOffset = _serializer.uint8(obj.cotton_bin_tilting_act, buffer, bufferOffset);
    // Serialize message field [cotton_bin_restore_act]
    bufferOffset = _serializer.uint8(obj.cotton_bin_restore_act, buffer, bufferOffset);
    // Serialize message field [cotton_unload_act]
    bufferOffset = _serializer.uint8(obj.cotton_unload_act, buffer, bufferOffset);
    // Serialize message field [cotton_picker_head_height]
    bufferOffset = _serializer.float32(obj.cotton_picker_head_height, buffer, bufferOffset);
    // Serialize message field [Target_primary_gear_act]
    bufferOffset = _serializer.uint8(obj.Target_primary_gear_act, buffer, bufferOffset);
    // Serialize message field [Target_EngineSpeedLevel_act]
    bufferOffset = _serializer.uint8(obj.Target_EngineSpeedLevel_act, buffer, bufferOffset);
    // Serialize message field [Target_speedlever_percentage_act]
    bufferOffset = _serializer.int16(obj.Target_speedlever_percentage_act, buffer, bufferOffset);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float32(obj.process_time, buffer, bufferOffset);
    // Serialize message field [raw_controlled]
    bufferOffset = _serializer.float32(obj.raw_controlled, buffer, bufferOffset);
    // Serialize message field [wait_wirectrl]
    bufferOffset = _serializer.int8(obj.wait_wirectrl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarOriInterface
    let len;
    let data = new CarOriInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auto_enable]
    data.auto_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [carspeed]
    data.carspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerangle]
    data.steerangle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angle]
    data.current_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gearpos]
    data.gearpos = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [brake_pressure_request]
    data.brake_pressure_request = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_enable]
    data.brake_enable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_braking_percentage]
    data.current_braking_percentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [soc]
    data.soc = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryvol]
    data.batteryvol = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batterydischargecur]
    data.batterydischargecur = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [car_run_mode]
    data.car_run_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle_percentage]
    data.throttle_percentage = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left_light]
    data.left_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_light]
    data.right_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reversing_light]
    data.reversing_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speaker]
    data.speaker = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_button]
    data.start_button = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stop_button]
    data.stop_button = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cotton_picker_fan_Enabler_act]
    data.cotton_picker_fan_Enabler_act = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cotton_bin_upper_act]
    data.cotton_bin_upper_act = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cotton_bin_lower_act]
    data.cotton_bin_lower_act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cotton_bin_tilting_act]
    data.cotton_bin_tilting_act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cotton_bin_restore_act]
    data.cotton_bin_restore_act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cotton_unload_act]
    data.cotton_unload_act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cotton_picker_head_height]
    data.cotton_picker_head_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Target_primary_gear_act]
    data.Target_primary_gear_act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Target_EngineSpeedLevel_act]
    data.Target_EngineSpeedLevel_act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Target_speedlever_percentage_act]
    data.Target_speedlever_percentage_act = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [raw_controlled]
    data.raw_controlled = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wait_wirectrl]
    data.wait_wirectrl = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/CarOriInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bf06e5d0a03ba5caee4a614abe96f39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # warn cyun 8.24 协议和msg的名称最好对应，不然程序写起来比较麻烦
    # 另外，最好是根据协议来写msg，不然直接写msg，有些数据类型是有问题的
    
    float64  timestamp  #时间戳
    uint8  id   # 车辆ID
    uint8 auto_enable #无人驾驶使能 0-不使能   1-使能
    float32  carspeed    # 车辆速度，单位为m/s
    float32  steerangle    # 车辆转角，左转为正，右转为负
    float32 current_angle # 转角？车轮缺
    int8  gearpos    # 车辆档位信号（01：驻车，02：空挡（N），03：前进（D），04：后退（R），05：无效）
    float32  brake_pressure_request    # 制动行程请求（0-125）
    uint8  brake_enable    # 制动使能（0：不使能  1：制动使能）
    uint8  current_braking_percentage  #制动踏板开度： 取值0～125
    uint8  soc    # 电池当前SOC（0-100）
    uint8  batteryvol    # 电池电压（0-55V）
    uint16  batterydischargecur    # 电池放电电流（0-100A）
    uint8  car_run_mode   #车辆运行模式： 0： ACU控制  1：自动驾驶  2： 急停模式
    int16  throttle_percentage  #油门踏板开度： 取值0～100
    uint8  left_light    #左转向灯状态：0：关闭，1：打开
    uint8  right_light    #右转向灯状态：0：关闭，1：打开
    uint8  reversing_light   #倒车灯状态：0：关闭，1：打开
    uint8  speaker     #喇叭状态：0：关闭，1：打开
    uint8  start_button     #启动按钮状态：0：按键无效，1：按键有效
    uint8  stop_button     #急停按钮状态：0：按键无效，1：按键有效
    uint8  state          # 设备状态，0：状态正常，1：电池箱报警；2：电机控制器报警
    uint8  error          # 错误码；电池箱报警：1：单体过压或欠压，2：放电电流异常，3：电压报警，4：电池温度报警，5：电池SOC过低。电机控制器报警：1：转向电机控制器故障，2：驱动电机控制器故障
    float32  cotton_picker_fan_Enabler_act    #  使能采头与风机，1-使能；0-保持不变；
    float32  cotton_bin_upper_act    # 升棉箱实际状态，1-提升；0-保持不变；
    uint8  cotton_bin_lower_act   # 降棉箱实际状态，1-降低；0-保持不变；
    uint8  cotton_bin_tilting_act   #  棉箱倾斜实际状态，1-倾斜；0-保持不变；
    uint8  cotton_bin_restore_act # 棉箱回正实际状态，1-回正；0-保持不变；
    uint8  cotton_unload_act  # 卸棉花实际状态（传送带），1-卸载；0-保持不变；
    float32  cotton_picker_head_height  # 棉花采头高度，单位：m；
    uint8  Target_primary_gear_act   # 01：低速，02：中速；03：高速；
    uint8  Target_EngineSpeedLevel_act   # 01：低速；02：中速；03：高速；
    int16  Target_speedlever_percentage_act   #车速手柄开度（-100%-100%）   取值【-100, 100】，负数为后退，正数为前进。
    float32  process_time    # 进程处理时间
    
    
    float32 raw_controlled
    
    
    int8 wait_wirectrl# 0-等待 1-等待结束 发送给hmi界面
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarOriInterface(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.auto_enable !== undefined) {
      resolved.auto_enable = msg.auto_enable;
    }
    else {
      resolved.auto_enable = 0
    }

    if (msg.carspeed !== undefined) {
      resolved.carspeed = msg.carspeed;
    }
    else {
      resolved.carspeed = 0.0
    }

    if (msg.steerangle !== undefined) {
      resolved.steerangle = msg.steerangle;
    }
    else {
      resolved.steerangle = 0.0
    }

    if (msg.current_angle !== undefined) {
      resolved.current_angle = msg.current_angle;
    }
    else {
      resolved.current_angle = 0.0
    }

    if (msg.gearpos !== undefined) {
      resolved.gearpos = msg.gearpos;
    }
    else {
      resolved.gearpos = 0
    }

    if (msg.brake_pressure_request !== undefined) {
      resolved.brake_pressure_request = msg.brake_pressure_request;
    }
    else {
      resolved.brake_pressure_request = 0.0
    }

    if (msg.brake_enable !== undefined) {
      resolved.brake_enable = msg.brake_enable;
    }
    else {
      resolved.brake_enable = 0
    }

    if (msg.current_braking_percentage !== undefined) {
      resolved.current_braking_percentage = msg.current_braking_percentage;
    }
    else {
      resolved.current_braking_percentage = 0
    }

    if (msg.soc !== undefined) {
      resolved.soc = msg.soc;
    }
    else {
      resolved.soc = 0
    }

    if (msg.batteryvol !== undefined) {
      resolved.batteryvol = msg.batteryvol;
    }
    else {
      resolved.batteryvol = 0
    }

    if (msg.batterydischargecur !== undefined) {
      resolved.batterydischargecur = msg.batterydischargecur;
    }
    else {
      resolved.batterydischargecur = 0
    }

    if (msg.car_run_mode !== undefined) {
      resolved.car_run_mode = msg.car_run_mode;
    }
    else {
      resolved.car_run_mode = 0
    }

    if (msg.throttle_percentage !== undefined) {
      resolved.throttle_percentage = msg.throttle_percentage;
    }
    else {
      resolved.throttle_percentage = 0
    }

    if (msg.left_light !== undefined) {
      resolved.left_light = msg.left_light;
    }
    else {
      resolved.left_light = 0
    }

    if (msg.right_light !== undefined) {
      resolved.right_light = msg.right_light;
    }
    else {
      resolved.right_light = 0
    }

    if (msg.reversing_light !== undefined) {
      resolved.reversing_light = msg.reversing_light;
    }
    else {
      resolved.reversing_light = 0
    }

    if (msg.speaker !== undefined) {
      resolved.speaker = msg.speaker;
    }
    else {
      resolved.speaker = 0
    }

    if (msg.start_button !== undefined) {
      resolved.start_button = msg.start_button;
    }
    else {
      resolved.start_button = 0
    }

    if (msg.stop_button !== undefined) {
      resolved.stop_button = msg.stop_button;
    }
    else {
      resolved.stop_button = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    if (msg.cotton_picker_fan_Enabler_act !== undefined) {
      resolved.cotton_picker_fan_Enabler_act = msg.cotton_picker_fan_Enabler_act;
    }
    else {
      resolved.cotton_picker_fan_Enabler_act = 0.0
    }

    if (msg.cotton_bin_upper_act !== undefined) {
      resolved.cotton_bin_upper_act = msg.cotton_bin_upper_act;
    }
    else {
      resolved.cotton_bin_upper_act = 0.0
    }

    if (msg.cotton_bin_lower_act !== undefined) {
      resolved.cotton_bin_lower_act = msg.cotton_bin_lower_act;
    }
    else {
      resolved.cotton_bin_lower_act = 0
    }

    if (msg.cotton_bin_tilting_act !== undefined) {
      resolved.cotton_bin_tilting_act = msg.cotton_bin_tilting_act;
    }
    else {
      resolved.cotton_bin_tilting_act = 0
    }

    if (msg.cotton_bin_restore_act !== undefined) {
      resolved.cotton_bin_restore_act = msg.cotton_bin_restore_act;
    }
    else {
      resolved.cotton_bin_restore_act = 0
    }

    if (msg.cotton_unload_act !== undefined) {
      resolved.cotton_unload_act = msg.cotton_unload_act;
    }
    else {
      resolved.cotton_unload_act = 0
    }

    if (msg.cotton_picker_head_height !== undefined) {
      resolved.cotton_picker_head_height = msg.cotton_picker_head_height;
    }
    else {
      resolved.cotton_picker_head_height = 0.0
    }

    if (msg.Target_primary_gear_act !== undefined) {
      resolved.Target_primary_gear_act = msg.Target_primary_gear_act;
    }
    else {
      resolved.Target_primary_gear_act = 0
    }

    if (msg.Target_EngineSpeedLevel_act !== undefined) {
      resolved.Target_EngineSpeedLevel_act = msg.Target_EngineSpeedLevel_act;
    }
    else {
      resolved.Target_EngineSpeedLevel_act = 0
    }

    if (msg.Target_speedlever_percentage_act !== undefined) {
      resolved.Target_speedlever_percentage_act = msg.Target_speedlever_percentage_act;
    }
    else {
      resolved.Target_speedlever_percentage_act = 0
    }

    if (msg.process_time !== undefined) {
      resolved.process_time = msg.process_time;
    }
    else {
      resolved.process_time = 0.0
    }

    if (msg.raw_controlled !== undefined) {
      resolved.raw_controlled = msg.raw_controlled;
    }
    else {
      resolved.raw_controlled = 0.0
    }

    if (msg.wait_wirectrl !== undefined) {
      resolved.wait_wirectrl = msg.wait_wirectrl;
    }
    else {
      resolved.wait_wirectrl = 0
    }

    return resolved;
    }
};

module.exports = CarOriInterface;
