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

class GlobalPathPlanningInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.startpoint = null;
      this.endpoint = null;
      this.routedata = null;
      this.process_time = null;
      this.Global_Path_Segment_Index = null;
      this.len_path = null;
      this.last_point = null;
      this.plan_over = null;
      this.x_list = null;
      this.y_list = null;
      this.roadid = null;
      this.incppoint = null;
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
      if (initObj.hasOwnProperty('process_time')) {
        this.process_time = initObj.process_time
      }
      else {
        this.process_time = 0.0;
      }
      if (initObj.hasOwnProperty('Global_Path_Segment_Index')) {
        this.Global_Path_Segment_Index = initObj.Global_Path_Segment_Index
      }
      else {
        this.Global_Path_Segment_Index = 0;
      }
      if (initObj.hasOwnProperty('len_path')) {
        this.len_path = initObj.len_path
      }
      else {
        this.len_path = 0;
      }
      if (initObj.hasOwnProperty('last_point')) {
        this.last_point = initObj.last_point
      }
      else {
        this.last_point = [];
      }
      if (initObj.hasOwnProperty('plan_over')) {
        this.plan_over = initObj.plan_over
      }
      else {
        this.plan_over = 0;
      }
      if (initObj.hasOwnProperty('x_list')) {
        this.x_list = initObj.x_list
      }
      else {
        this.x_list = [];
      }
      if (initObj.hasOwnProperty('y_list')) {
        this.y_list = initObj.y_list
      }
      else {
        this.y_list = [];
      }
      if (initObj.hasOwnProperty('roadid')) {
        this.roadid = initObj.roadid
      }
      else {
        this.roadid = '';
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
    // Serializes a message object of type GlobalPathPlanningInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [startpoint]
    bufferOffset = _arraySerializer.float64(obj.startpoint, buffer, bufferOffset, null);
    // Serialize message field [endpoint]
    bufferOffset = _arraySerializer.float64(obj.endpoint, buffer, bufferOffset, null);
    // Serialize message field [routedata]
    bufferOffset = _arraySerializer.string(obj.routedata, buffer, bufferOffset, null);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float32(obj.process_time, buffer, bufferOffset);
    // Serialize message field [Global_Path_Segment_Index]
    bufferOffset = _serializer.int32(obj.Global_Path_Segment_Index, buffer, bufferOffset);
    // Serialize message field [len_path]
    bufferOffset = _serializer.int32(obj.len_path, buffer, bufferOffset);
    // Serialize message field [last_point]
    bufferOffset = _arraySerializer.float32(obj.last_point, buffer, bufferOffset, null);
    // Serialize message field [plan_over]
    bufferOffset = _serializer.int8(obj.plan_over, buffer, bufferOffset);
    // Serialize message field [x_list]
    bufferOffset = _arraySerializer.float64(obj.x_list, buffer, bufferOffset, null);
    // Serialize message field [y_list]
    bufferOffset = _arraySerializer.float64(obj.y_list, buffer, bufferOffset, null);
    // Serialize message field [roadid]
    bufferOffset = _serializer.string(obj.roadid, buffer, bufferOffset);
    // Serialize message field [incppoint]
    bufferOffset = _arraySerializer.float64(obj.incppoint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalPathPlanningInterface
    let len;
    let data = new GlobalPathPlanningInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [startpoint]
    data.startpoint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [endpoint]
    data.endpoint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [routedata]
    data.routedata = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Global_Path_Segment_Index]
    data.Global_Path_Segment_Index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [len_path]
    data.len_path = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [last_point]
    data.last_point = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [plan_over]
    data.plan_over = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [x_list]
    data.x_list = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y_list]
    data.y_list = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [roadid]
    data.roadid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [incppoint]
    data.incppoint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.startpoint.length;
    length += 8 * object.endpoint.length;
    object.routedata.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.last_point.length;
    length += 8 * object.x_list.length;
    length += 8 * object.y_list.length;
    length += _getByteLength(object.roadid);
    length += 8 * object.incppoint.length;
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/GlobalPathPlanningInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cea6e0eb1165b2f9d112cf59800c74ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  timestamp  #时间戳
    float64[]  startpoint   #起点位置
    float64[]   endpoint    #终点位置
    string[]   routedata   #路径集合（所有途径点的集合）
    float32  process_time    # 进程处理时间
    int32 Global_Path_Segment_Index # 从1开始累加
    
    int32 len_path # 全局路径的长度
    
    #int8 Global_Path_End_Flag #终点置1，其他0
    float32[]   last_point
    
    int8 plan_over #0-等待规划完成 1-本次规划结束
    
    float64[] x_list
    float64[] y_list
    
    string roadid #全局路径的地址，主要是给decision的
    float64[]  incppoint  #路口信息集地址
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalPathPlanningInterface(null);
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

    if (msg.process_time !== undefined) {
      resolved.process_time = msg.process_time;
    }
    else {
      resolved.process_time = 0.0
    }

    if (msg.Global_Path_Segment_Index !== undefined) {
      resolved.Global_Path_Segment_Index = msg.Global_Path_Segment_Index;
    }
    else {
      resolved.Global_Path_Segment_Index = 0
    }

    if (msg.len_path !== undefined) {
      resolved.len_path = msg.len_path;
    }
    else {
      resolved.len_path = 0
    }

    if (msg.last_point !== undefined) {
      resolved.last_point = msg.last_point;
    }
    else {
      resolved.last_point = []
    }

    if (msg.plan_over !== undefined) {
      resolved.plan_over = msg.plan_over;
    }
    else {
      resolved.plan_over = 0
    }

    if (msg.x_list !== undefined) {
      resolved.x_list = msg.x_list;
    }
    else {
      resolved.x_list = []
    }

    if (msg.y_list !== undefined) {
      resolved.y_list = msg.y_list;
    }
    else {
      resolved.y_list = []
    }

    if (msg.roadid !== undefined) {
      resolved.roadid = msg.roadid;
    }
    else {
      resolved.roadid = ''
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

module.exports = GlobalPathPlanningInterface;
