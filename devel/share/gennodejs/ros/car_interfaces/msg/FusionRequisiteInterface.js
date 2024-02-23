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

class FusionRequisiteInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.id = null;
      this.centeroffset = null;
      this.signnumber = null;
      this.signdata = null;
      this.lightdata = null;
      this.obstacledata = null;
      this.longitude = null;
      this.latitude = null;
      this.height = null;
      this.posX = null;
      this.posY = null;
      this.posZ = null;
      this.yaw = null;
      this.pitch = null;
      this.roll = null;
      this.eastvelocity = null;
      this.northvelocity = null;
      this.skyvelocity = null;
      this.carspeed = null;
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
      if (initObj.hasOwnProperty('posX')) {
        this.posX = initObj.posX
      }
      else {
        this.posX = 0.0;
      }
      if (initObj.hasOwnProperty('posY')) {
        this.posY = initObj.posY
      }
      else {
        this.posY = 0.0;
      }
      if (initObj.hasOwnProperty('posZ')) {
        this.posZ = initObj.posZ
      }
      else {
        this.posZ = 0.0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionRequisiteInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
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
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [posX]
    bufferOffset = _serializer.float64(obj.posX, buffer, bufferOffset);
    // Serialize message field [posY]
    bufferOffset = _serializer.float64(obj.posY, buffer, bufferOffset);
    // Serialize message field [posZ]
    bufferOffset = _serializer.float64(obj.posZ, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [eastvelocity]
    bufferOffset = _serializer.float32(obj.eastvelocity, buffer, bufferOffset);
    // Serialize message field [northvelocity]
    bufferOffset = _serializer.float32(obj.northvelocity, buffer, bufferOffset);
    // Serialize message field [skyvelocity]
    bufferOffset = _serializer.float32(obj.skyvelocity, buffer, bufferOffset);
    // Serialize message field [carspeed]
    bufferOffset = _serializer.float32(obj.carspeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionRequisiteInterface
    let len;
    let data = new FusionRequisiteInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
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
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posX]
    data.posX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posY]
    data.posY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posZ]
    data.posZ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eastvelocity]
    data.eastvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [northvelocity]
    data.northvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [skyvelocity]
    data.skyvelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carspeed]
    data.carspeed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.signdata.length;
    length += 4 * object.lightdata.length;
    length += 4 * object.obstacledata.length;
    return length + 102;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/FusionRequisiteInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '298ab3582625b62ae48e8a406af731df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  timestamp  #时间戳
    uint8  id   # 车辆ID
    float32  centeroffset     # 车道中心线偏移距离，默认0
    uint8  signnumber  #交通标识数量
    float32[]  signdata  #交通标志数据
    float32[]  lightdata  # 红绿灯数据
    float32[]  obstacledata  #障碍物数据
    float64  longitude        # 经度
    float64  latitude         # 纬度
    float64  height         # 高度
    float64 posX                           #定位点UTM坐标x
    float64 posY                           #定位点UTM坐标y
    float64 posZ                           #定位点UTM坐标z
    float32  yaw         # 偏航角（-180,180）
    float32  pitch        # 俯仰角（-90-90）
    float32  roll         # 横滚角（-180-180）
    float32  eastvelocity         # 东向速度
    float32  northvelocity        # 北向速度
    float32  skyvelocity         # 天向速度
    float32  carspeed    # 车辆速度，单位为m/s
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionRequisiteInterface(null);
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

    if (msg.posX !== undefined) {
      resolved.posX = msg.posX;
    }
    else {
      resolved.posX = 0.0
    }

    if (msg.posY !== undefined) {
      resolved.posY = msg.posY;
    }
    else {
      resolved.posY = 0.0
    }

    if (msg.posZ !== undefined) {
      resolved.posZ = msg.posZ;
    }
    else {
      resolved.posZ = 0.0
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

    return resolved;
    }
};

module.exports = FusionRequisiteInterface;
