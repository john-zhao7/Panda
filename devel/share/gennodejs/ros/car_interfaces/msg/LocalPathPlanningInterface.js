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

class LocalPathPlanningInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.startpoint = null;
      this.endpoint = null;
      this.routedata = null;
      this.routedata_fix = null;
      this.process_time = null;
      this.len_path = null;
      this.plan_over = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('startpoint')) {
        this.startpoint = initObj.startpoint
      }
      else {
        this.startpoint = [];
      }
      if (initObj.hasOwnProperty('endpoint')) {
        this.endpoint = initObj.endpoint
      }
      else {
        this.endpoint = [];
      }
      if (initObj.hasOwnProperty('routedata')) {
        this.routedata = initObj.routedata
      }
      else {
        this.routedata = [];
      }
      if (initObj.hasOwnProperty('routedata_fix')) {
        this.routedata_fix = initObj.routedata_fix
      }
      else {
        this.routedata_fix = [];
      }
      if (initObj.hasOwnProperty('process_time')) {
        this.process_time = initObj.process_time
      }
      else {
        this.process_time = 0.0;
      }
      if (initObj.hasOwnProperty('len_path')) {
        this.len_path = initObj.len_path
      }
      else {
        this.len_path = 0;
      }
      if (initObj.hasOwnProperty('plan_over')) {
        this.plan_over = initObj.plan_over
      }
      else {
        this.plan_over = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalPathPlanningInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [startpoint]
    bufferOffset = _arraySerializer.float32(obj.startpoint, buffer, bufferOffset, null);
    // Serialize message field [endpoint]
    bufferOffset = _arraySerializer.float32(obj.endpoint, buffer, bufferOffset, null);
    // Serialize message field [routedata]
    bufferOffset = _arraySerializer.string(obj.routedata, buffer, bufferOffset, null);
    // Serialize message field [routedata_fix]
    bufferOffset = _arraySerializer.string(obj.routedata_fix, buffer, bufferOffset, null);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float32(obj.process_time, buffer, bufferOffset);
    // Serialize message field [len_path]
    bufferOffset = _serializer.int32(obj.len_path, buffer, bufferOffset);
    // Serialize message field [plan_over]
    bufferOffset = _serializer.int8(obj.plan_over, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalPathPlanningInterface
    let len;
    let data = new LocalPathPlanningInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [startpoint]
    data.startpoint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [endpoint]
    data.endpoint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [routedata]
    data.routedata = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [routedata_fix]
    data.routedata_fix = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [len_path]
    data.len_path = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [plan_over]
    data.plan_over = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.startpoint.length;
    length += 4 * object.endpoint.length;
    object.routedata.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.routedata_fix.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/LocalPathPlanningInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95d098a26eb7d556e883061d346e2f5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # float64  timestamp  #时间戳
    # float32[]  startpoint   #起点位置，先经后纬
    # float32[]   endpoint    #终点位置，先经后纬
    # float32[]   longitude        # 途径点经度
    # float32[]   latitude         # 途径点纬度
    # float32[]   speed         # 途径点速度
    # float32[]   angle         # 途径点速度角度（航向角角度）
    # float32[]   kapa         # 途径点曲率
    # float32  process_time    # 进程处理时间
    
    
    
    float64  timestamp  #时间戳
    
    float32[]  startpoint   #局部路径起点位置
    float32[]   endpoint    #局部路径终点位置
    string[]   routedata   # 局部路径集合（没有修正路径）
    string[]   routedata_fix   # 修正后的局部路径集合（没有修正路径）
    
    float32  process_time    # 进程处理时间
    int32 len_path # 全局路径的长度
    #int8 Global_Path_End_Flag #终点置1，其他0
    int8 plan_over #0-等待规划完成 1-本次规划结束
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalPathPlanningInterface(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.startpoint !== undefined) {
      resolved.startpoint = msg.startpoint;
    }
    else {
      resolved.startpoint = []
    }

    if (msg.endpoint !== undefined) {
      resolved.endpoint = msg.endpoint;
    }
    else {
      resolved.endpoint = []
    }

    if (msg.routedata !== undefined) {
      resolved.routedata = msg.routedata;
    }
    else {
      resolved.routedata = []
    }

    if (msg.routedata_fix !== undefined) {
      resolved.routedata_fix = msg.routedata_fix;
    }
    else {
      resolved.routedata_fix = []
    }

    if (msg.process_time !== undefined) {
      resolved.process_time = msg.process_time;
    }
    else {
      resolved.process_time = 0.0
    }

    if (msg.len_path !== undefined) {
      resolved.len_path = msg.len_path;
    }
    else {
      resolved.len_path = 0
    }

    if (msg.plan_over !== undefined) {
      resolved.plan_over = msg.plan_over;
    }
    else {
      resolved.plan_over = 0
    }

    return resolved;
    }
};

module.exports = LocalPathPlanningInterface;
