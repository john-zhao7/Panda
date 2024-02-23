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

class FusionInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.id = null;
      this.carlength = null;
      this.carwidth = null;
      this.carheight = null;
      this.centeroffset = null;
      this.signnumber = null;
      this.signdata = null;
      this.lightdata = null;
      this.obstacledata = null;
      this.yaw = null;
      this.pitch = null;
      this.roll = null;
      this.wx = null;
      this.wy = null;
      this.wz = null;
      this.ax = null;
      this.ay = null;
      this.az = null;
      this.longitude = null;
      this.latitude = null;
      this.height = null;
      this.eastvelocity = null;
      this.northvelocity = null;
      this.skyvelocity = null;
      this.carspeed = null;
      this.steerangle = null;
      this.gearpos = null;
      this.braketq = null;
      this.parkingstate = null;
      this.soc = null;
      this.batteryvol = null;
      this.batterydischargecur = null;
      this.car_run_mode = null;
      this.throttle_percentage = null;
      this.braking_percentage = null;
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
      if (initObj.hasOwnProperty('carlength')) {
        this.carlength = initObj.carlength
      }
      else {
        this.carlength = 0.0;
      }
      if (initObj.hasOwnProperty('carwidth')) {
        this.carwidth = initObj.carwidth
      }
      else {
        this.carwidth = 0.0;
      }
      if (initObj.hasOwnProperty('carheight')) {
        this.carheight = initObj.carheight
      }
      else {
        this.carheight = 0.0;
      }
      if (initObj.hasOwnProperty('centeroffset')) {
        this.centeroffset = initObj.centeroffset
      }
      else {
        this.centeroffset = 0.0;
      }
      if (initObj.hasOwnProperty('signnumber')) {
        this.signnumber = initObj.signnumber
      }
      else {
        this.signnumber = 0;
      }
      if (initObj.hasOwnProperty('signdata')) {
        this.signdata = initObj.signdata
      }
      else {
        this.signdata = [];
      }
      if (initObj.hasOwnProperty('lightdata')) {
        this.lightdata = initObj.lightdata
      }
      else {
        this.lightdata = [];
      }
      if (initObj.hasOwnProperty('obstacledata')) {
        this.obstacledata = initObj.obstacledata
      }
      else {
        this.obstacledata = [];
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('wx')) {
        this.wx = initObj.wx
      }
      else {
        this.wx = 0.0;
      }
      if (initObj.hasOwnProperty('wy')) {
        this.wy = initObj.wy
      }
      else {
        this.wy = 0.0;
      }
      if (initObj.hasOwnProperty('wz')) {
        this.wz = initObj.wz
      }
      else {
        this.wz = 0.0;
      }
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('eastvelocity')) {
        this.eastvelocity = initObj.eastvelocity
      }
      else {
        this.eastvelocity = 0.0;
      }
      if (initObj.hasOwnProperty('northvelocity')) {
        this.northvelocity = initObj.northvelocity
      }
      else {
        this.northvelocity = 0.0;
      }
      if (initObj.hasOwnProperty('skyvelocity')) {
        this.skyvelocity = initObj.skyvelocity
      }
      else {
        this.skyvelocity = 0.0;
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
      if (initObj.hasOwnProperty('gearpos')) {
        this.gearpos = initObj.gearpos
      }
      else {
        this.gearpos = 0;
      }
      if (initObj.hasOwnProperty('braketq')) {
        this.braketq = initObj.braketq
      }
      else {
        this.braketq = 0.0;
      }
      if (initObj.hasOwnProperty('parkingstate')) {
        this.parkingstate = initObj.parkingstate
      }
      else {
        this.parkingstate = 0;
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
      if (initObj.hasOwnProperty('braking_percentage')) {
        this.braking_percentage = initObj.braking_percentage
      }
      else {
        this.braking_percentage = 0;
      }
      if (initObj.hasOwnProperty('left_light')) {
        this.left_light = initObj.left_light
      }
      else {
        this.left_light = false;
      }
      if (initObj.hasOwnProperty('right_light')) {
        this.right_light = initObj.right_light
      }
      else {
        this.right_light = false;
      }
      if (initObj.hasOwnProperty('reversing_light')) {
        this.reversing_light = initObj.reversing_light
      }
      else {
        this.reversing_light = false;
      }
      if (initObj.hasOwnProperty('speaker')) {
        this.speaker = initObj.speaker
      }
      else {
        this.speaker = false;
      }
      if (initObj.hasOwnProperty('start_button')) {
        this.start_button = initObj.start_button
      }
      else {
        this.start_button = false;
      }
      if (initObj.hasOwnProperty('stop_button')) {
        this.stop_button = initObj.stop_button
      }
      else {
        this.stop_button = false;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [carlength]
    bufferOffset = _serializer.float32(obj.carlength, buffer, bufferOffset);
    // Serialize message field [carwidth]
    bufferOffset = _serializer.float32(obj.carwidth, buffer, bufferOffset);
    // Serialize message field [carheight]
    bufferOffset = _serializer.float32(obj.carheight, buffer, bufferOffset);
    // Serialize message field [centeroffset]
    bufferOffset = _serializer.float32(obj.centeroffset, buffer, bufferOffset);
    // Serialize message field [signnumber]
    bufferOffset = _serializer.uint8(obj.signnumber, buffer, bufferOffset);
    // Serialize message field [signdata]
    bufferOffset = _arraySerializer.float32(obj.signdata, buffer, bufferOffset, null);
    // Serialize message field [lightdata]
    bufferOffset = _arraySerializer.float32(obj.lightdata, buffer, bufferOffset, null);
    // Serialize message field [obstacledata]
    bufferOffset = _arraySerializer.float32(obj.obstacledata, buffer, bufferOffset, null);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [wx]
    bufferOffset = _serializer.float32(obj.wx, buffer, bufferOffset);
    // Serialize message field [wy]
    bufferOffset = _serializer.float32(obj.wy, buffer, bufferOffset);
    // Serialize message field [wz]
    bufferOffset = _serializer.float32(obj.wz, buffer, bufferOffset);
    // Serialize message field [ax]
    bufferOffset = _serializer.float32(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float32(obj.ay, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float32(obj.az, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [eastvelocity]
    bufferOffset = _serializer.float32(obj.eastvelocity, buffer, bufferOffset);
    // Serialize message field [northvelocity]
    bufferOffset = _serializer.float32(obj.northvelocity, buffer, bufferOffset);
    // Serialize message field [skyvelocity]
    bufferOffset = _serializer.float32(obj.skyvelocity, buffer, bufferOffset);
    // Serialize message field [carspeed]
    bufferOffset = _serializer.float32(obj.carspeed, buffer, bufferOffset);
    // Serialize message field [steerangle]
    bufferOffset = _serializer.float32(obj.steerangle, buffer, bufferOffset);
    // Serialize message field [gearpos]
    bufferOffset = _serializer.int8(obj.gearpos, buffer, bufferOffset);
    // Serialize message field [braketq]
    bufferOffset = _serializer.float32(obj.braketq, buffer, bufferOffset);
    // Serialize message field [parkingstate]
    bufferOffset = _serializer.uint8(obj.parkingstate, buffer, bufferOffset);
    // Serialize message field [soc]
    bufferOffset = _serializer.uint8(obj.soc, buffer, bufferOffset);
    // Serialize message field [batteryvol]
    bufferOffset = _serializer.uint8(obj.batteryvol, buffer, bufferOffset);
    // Serialize message field [batterydischargecur]
    bufferOffset = _serializer.uint16(obj.batterydischargecur, buffer, bufferOffset);
    // Serialize message field [car_run_mode]
    bufferOffset = _serializer.uint8(obj.car_run_mode, buffer, bufferOffset);
    // Serialize message field [throttle_percentage]
    bufferOffset = _serializer.uint8(obj.throttle_percentage, buffer, bufferOffset);
    // Serialize message field [braking_percentage]
    bufferOffset = _serializer.uint8(obj.braking_percentage, buffer, bufferOffset);
    // Serialize message field [left_light]
    bufferOffset = _serializer.bool(obj.left_light, buffer, bufferOffset);
    // Serialize message field [right_light]
    bufferOffset = _serializer.bool(obj.right_light, buffer, bufferOffset);
    // Serialize message field [reversing_light]
    bufferOffset = _serializer.bool(obj.reversing_light, buffer, bufferOffset);
    // Serialize message field [speaker]
    bufferOffset = _serializer.bool(obj.speaker, buffer, bufferOffset);
    // Serialize message field [start_button]
    bufferOffset = _serializer.bool(obj.start_button, buffer, bufferOffset);
    // Serialize message field [stop_button]
    bufferOffset = _serializer.bool(obj.stop_button, buffer, bufferOffset);
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
    bufferOffset = _serializer.uint8(obj.Target_speedlever_percentage_act, buffer, bufferOffset);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float32(obj.process_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionInterface
    let len;
    let data = new FusionInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [carlength]
    data.carlength = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carwidth]
    data.carwidth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carheight]
    data.carheight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [centeroffset]
    data.centeroffset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [signnumber]
    data.signnumber = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [signdata]
    data.signdata = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [lightdata]
    data.lightdata = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [obstacledata]
    data.obstacledata = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wx]
    data.wx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wy]
    data.wy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wz]
    data.wz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ax]
    data.ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [eastvelocity]
    data.eastvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [northvelocity]
    data.northvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [skyvelocity]
    data.skyvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carspeed]
    data.carspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerangle]
    data.steerangle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gearpos]
    data.gearpos = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [braketq]
    data.braketq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [parkingstate]
    data.parkingstate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [soc]
    data.soc = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryvol]
    data.batteryvol = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batterydischargecur]
    data.batterydischargecur = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [car_run_mode]
    data.car_run_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle_percentage]
    data.throttle_percentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [braking_percentage]
    data.braking_percentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_light]
    data.left_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_light]
    data.right_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reversing_light]
    data.reversing_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speaker]
    data.speaker = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [start_button]
    data.start_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stop_button]
    data.stop_button = _deserializer.bool(buffer, bufferOffset);
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
    data.Target_speedlever_percentage_act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.signdata.length;
    length += 4 * object.lightdata.length;
    length += 4 * object.obstacledata.length;
    return length + 162;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/FusionInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bc3fce2c31a43ab376a08df38ba153b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  timestamp  #时间戳
    uint8  id   # 车辆ID
    float32  carlength         # 车长m
    float32  carwidth         # 车宽m
    float32  carheight         # 车高m
    float32  centeroffset     # 车道中心线偏移距离，默认0
    uint8  signnumber  #交通标识数量
    float32[]  signdata  #交通标志数据
    float32[]  lightdata  # 红绿灯数据
    float32[]  obstacledata  #障碍物数据
    float32  yaw         # 偏航角（0-359.99）
    float32  pitch        # 俯仰角（-90-90）
    float32  roll         # 横滚角（-180-180）
    float32  wx         # 角速度x
    float32  wy         # 角速度y
    float32  wz         # 角速度z
    float32  ax         # 加速度x
    float32  ay         # 加速度y
    float32  az         # 加速度z
    float64  longitude        # 经度
    float64  latitude         # 纬度
    float64  height         # 高度
    float32  eastvelocity         # 东向速度
    float32  northvelocity        # 北向速度
    float32  skyvelocity         # 天向速度
    float32  carspeed    # 车辆速度，单位为m/s
    float32  steerangle    # 车辆转角，左转为正，右转为负
    int8  gearpos    # 车辆档位信号（01：驻车，02：空挡（N），03：前进（D），04：后退（R），05：无效）
    float32  braketq    # 制动量（-50-50nm）
    uint8  parkingstate    # 制动状态（00：驻车状态，01：驻车释放状态）
    uint8  soc    # 电池当前SOC（0-100）
    uint8  batteryvol    # 电池电压（0-55V）
    uint16  batterydischargecur    # 电池放电电流（0-100A）
    uint8  car_run_mode   #车辆运行模式： 0： ACU控制  1：自动驾驶  2： 急停模式
    uint8  throttle_percentage  #油门踏板开度： 取值0～100
    uint8  braking_percentage  #制动踏板开度： 取值0～100
    bool  left_light    #左转向灯状态：0：关闭，1：打开
    bool  right_light    #右转向灯状态：0：关闭，1：打开
    bool  reversing_light   #倒车灯状态：0：关闭，1：打开
    bool  speaker     #喇叭状态：0：关闭，1：打开
    bool  start_button     #启动按钮状态：0：按键无效，1：按键有效
    bool  stop_button     #急停按钮状态：0：按键无效，1：按键有效
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
    uint8  Target_speedlever_percentage_act   #车速手柄开度（-100%-100%）   取值【-100, 100】，负数为后退，正数为前进。
    float32  process_time     # 进程处理时间
    
    
    #其中signdata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组
    # int  category     # 交通标志类别，需自行定义类别，务必做好记录
    # float  length       # 交通标志长度m，精度为0.01
    # float  width       # 交通标志宽度m，精度为0.01
    # float  height       # 交通标志高度m，精度为0.01
    # float  x     # 交通标志的x坐标[米]，精度为0.01
    # float  y   # 交通标志的y坐标[米]，精度为0.01
    # float  z    # 交通标志的z坐标[米]，精度为0.01
    # float  v=0    # 交通标志径向速度m/s，默认为0，精度为0.01
    # float  latv=0  # 交通标志的横向速度m/s，默认为0，精度为0.01
    
    # 其中lightdata格式float32[]为一维数组，储存按照[x,y,z,leftcolor,straightcolor,rightcolor,……]存储，6个长度数据为一组
    # float  x     # 红绿灯x坐标[米]，精度为0.01
    # float  y     # 红绿灯y坐标[米]，精度为0.01
    # float  z     # 红绿灯z坐标[米]，精度为0.01
    # int   leftcolor   #左转灯状态，01：红，02：黄，03：绿，04：关闭，关闭时代表没有左转灯
    # int   straightcolor   #直行灯状态，01：红，02：黄，03：绿，04：关闭，
    # int   rightcolor   #右转灯状态，01：红，02：黄，03：绿，04：关闭，关闭时代表没有右转灯
    # 一般情况下，如果左转/右转/左右转和直行灯同时存在，无论什么颜色状态，这两个灯都是常亮的。如果信号灯只有直行灯，那用左/右转灯关闭代表当前路口只有直行灯，直行灯绿色时既可以直行也可以左转。
    
    #其中obstacledata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组
    # int  category     # 障碍物类别， 0点目标；1小汽车；2卡车/客车；3行人；4摩托车/电动车；5自行车；6宽大目标（如墙面）；7reserved保留； 8traffic light； 9stop sign
    # float  length       # 障碍物长度m，精度为0.01
    # float  width       # 障碍物宽度m，精度为0.01
    # float  height       # 障碍物高度m，精度为0.01
    # float  x     # 障碍物的x坐标[米]，精度为0.01
    # float  y   # 障碍物的y坐标[米]，精度为0.01
    # float  z    # 障碍物的z坐标[米]，精度为0.01
    # float  v=0    # 障碍物径向速度m/s，精度为0.01
    # float  latv=0  # 障碍物的横向速度m/s，精度为0.01
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionInterface(null);
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

    if (msg.carlength !== undefined) {
      resolved.carlength = msg.carlength;
    }
    else {
      resolved.carlength = 0.0
    }

    if (msg.carwidth !== undefined) {
      resolved.carwidth = msg.carwidth;
    }
    else {
      resolved.carwidth = 0.0
    }

    if (msg.carheight !== undefined) {
      resolved.carheight = msg.carheight;
    }
    else {
      resolved.carheight = 0.0
    }

    if (msg.centeroffset !== undefined) {
      resolved.centeroffset = msg.centeroffset;
    }
    else {
      resolved.centeroffset = 0.0
    }

    if (msg.signnumber !== undefined) {
      resolved.signnumber = msg.signnumber;
    }
    else {
      resolved.signnumber = 0
    }

    if (msg.signdata !== undefined) {
      resolved.signdata = msg.signdata;
    }
    else {
      resolved.signdata = []
    }

    if (msg.lightdata !== undefined) {
      resolved.lightdata = msg.lightdata;
    }
    else {
      resolved.lightdata = []
    }

    if (msg.obstacledata !== undefined) {
      resolved.obstacledata = msg.obstacledata;
    }
    else {
      resolved.obstacledata = []
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.wx !== undefined) {
      resolved.wx = msg.wx;
    }
    else {
      resolved.wx = 0.0
    }

    if (msg.wy !== undefined) {
      resolved.wy = msg.wy;
    }
    else {
      resolved.wy = 0.0
    }

    if (msg.wz !== undefined) {
      resolved.wz = msg.wz;
    }
    else {
      resolved.wz = 0.0
    }

    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.eastvelocity !== undefined) {
      resolved.eastvelocity = msg.eastvelocity;
    }
    else {
      resolved.eastvelocity = 0.0
    }

    if (msg.northvelocity !== undefined) {
      resolved.northvelocity = msg.northvelocity;
    }
    else {
      resolved.northvelocity = 0.0
    }

    if (msg.skyvelocity !== undefined) {
      resolved.skyvelocity = msg.skyvelocity;
    }
    else {
      resolved.skyvelocity = 0.0
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

    if (msg.gearpos !== undefined) {
      resolved.gearpos = msg.gearpos;
    }
    else {
      resolved.gearpos = 0
    }

    if (msg.braketq !== undefined) {
      resolved.braketq = msg.braketq;
    }
    else {
      resolved.braketq = 0.0
    }

    if (msg.parkingstate !== undefined) {
      resolved.parkingstate = msg.parkingstate;
    }
    else {
      resolved.parkingstate = 0
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

    if (msg.braking_percentage !== undefined) {
      resolved.braking_percentage = msg.braking_percentage;
    }
    else {
      resolved.braking_percentage = 0
    }

    if (msg.left_light !== undefined) {
      resolved.left_light = msg.left_light;
    }
    else {
      resolved.left_light = false
    }

    if (msg.right_light !== undefined) {
      resolved.right_light = msg.right_light;
    }
    else {
      resolved.right_light = false
    }

    if (msg.reversing_light !== undefined) {
      resolved.reversing_light = msg.reversing_light;
    }
    else {
      resolved.reversing_light = false
    }

    if (msg.speaker !== undefined) {
      resolved.speaker = msg.speaker;
    }
    else {
      resolved.speaker = false
    }

    if (msg.start_button !== undefined) {
      resolved.start_button = msg.start_button;
    }
    else {
      resolved.start_button = false
    }

    if (msg.stop_button !== undefined) {
      resolved.stop_button = msg.stop_button;
    }
    else {
      resolved.stop_button = false
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

    return resolved;
    }
};

module.exports = FusionInterface;
