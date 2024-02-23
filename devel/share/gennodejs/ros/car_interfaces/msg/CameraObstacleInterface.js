// Auto-generated. Do not edit!

// (in-package car_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class CameraObstacleInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.id = null;
      this.number = null;
      this.obstacledata = null;
      this.resultimage = null;
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
      if (initObj.hasOwnProperty('resultimage')) {
        this.resultimage = initObj.resultimage
      }
      else {
        this.resultimage = new sensor_msgs.msg.Image();
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
    // Serializes a message object of type CameraObstacleInterface
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [number]
    bufferOffset = _serializer.uint16(obj.number, buffer, bufferOffset);
    // Serialize message field [obstacledata]
    bufferOffset = _arraySerializer.float32(obj.obstacledata, buffer, bufferOffset, null);
    // Serialize message field [resultimage]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.resultimage, buffer, bufferOffset);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float32(obj.process_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraObstacleInterface
    let len;
    let data = new CameraObstacleInterface(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [number]
    data.number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [obstacledata]
    data.obstacledata = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [resultimage]
    data.resultimage = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.obstacledata.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.resultimage);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_interfaces/CameraObstacleInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '454b71629ff68db2d3a44afe4cb25c2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  timestamp  #时间戳
    uint8  id  # 摄像机ID
    uint16  number  # 障碍物数量
    float32[]  obstacledata  #障碍物数据
    sensor_msgs/Image  resultimage     # 障碍物检测结果图像
    float32  process_time    # 进程处理时间
    
    
    # 其中obstacledata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组
    # int  category     # 障碍物类别， 0点目标；1小汽车；2卡车/客车；3行人；4摩托车/电动车；5自行车；6宽大目标（如墙面）；7reserved保留； 8traffic light； 9stop sign
    # float  length       # 障碍物长度m，精度为0.01
    # float  width       # 障碍物宽度m，精度为0.01
    # float  height       # 障碍物高度m，精度为0.01
    # float  x     # 障碍物的x坐标[米]，精度为0.01
    # float  y   # 障碍物的y坐标[米]，精度为0.01
    # float  z    # 障碍物的z坐标[米]，精度为0.01
    # float  v=0    # 障碍物径向速度m/s，精度为0.01
    # float  latv=0  # 障碍物的横向速度m/s，精度为0.01
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraObstacleInterface(null);
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

    if (msg.resultimage !== undefined) {
      resolved.resultimage = sensor_msgs.msg.Image.Resolve(msg.resultimage)
    }
    else {
      resolved.resultimage = new sensor_msgs.msg.Image()
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

module.exports = CameraObstacleInterface;
