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

class RadarObstacleInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.id = null;
      this.number = null;
      this.obstacledata = null;
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
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = 0;
      }
      if (initObj.hasOwnProperty('obstacledata')) {
        this.obstacledata = initObj.obstacledata
      }
      else {
        this.obstacledata = [];
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
    // Serializes a message object of type RadarObstacleInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [number]
    bufferOffset = _serializer.uint16(obj.number, buffer, bufferOffset);
    // Serialize message field [obstacledata]
    bufferOffset = _arraySerializer.float32(obj.obstacledata, buffer, bufferOffset, null);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float32(obj.process_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarObstacleInterface
    let len;
    let data = new RadarObstacleInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [number]
    data.number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [obstacledata]
    data.obstacledata = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.obstacledata.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/RadarObstacleInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd72c4e0d3fc62d79de85a43eb6d4cf59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  timestamp  #时间戳
    uint8  id  # 毫米波雷达ID
    uint16  number  #障碍物数量
    float32[]  obstacledata  #障碍物数据
    float32  process_time    # 进程处理时间
    #其中obstacledata格式float32[]为一维数组，储存按照[x  ,y  ,z  ,v  , x ,y ,z ,v ,latv ,……]存储49个长度数据为一组
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
    const resolved = new RadarObstacleInterface(null);
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

    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = 0
    }

    if (msg.obstacledata !== undefined) {
      resolved.obstacledata = msg.obstacledata;
    }
    else {
      resolved.obstacledata = []
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

module.exports = RadarObstacleInterface;
