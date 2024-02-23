; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude CameraObstacleInterface.msg.html

(cl:defclass <CameraObstacleInterface> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (number
    :reader number
    :initarg :number
    :type cl:fixnum
    :initform 0)
   (obstacledata
    :reader obstacledata
    :initarg :obstacledata
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (resultimage
    :reader resultimage
    :initarg :resultimage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (process_time
    :reader process_time
    :initarg :process_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass CameraObstacleInterface (<CameraObstacleInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraObstacleInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraObstacleInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<CameraObstacleInterface> is deprecated: use car_interfaces-msg:CameraObstacleInterface instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <CameraObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:timestamp-val is deprecated.  Use car_interfaces-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CameraObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:id-val is deprecated.  Use car_interfaces-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <CameraObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:number-val is deprecated.  Use car_interfaces-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'obstacledata-val :lambda-list '(m))
(cl:defmethod obstacledata-val ((m <CameraObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:obstacledata-val is deprecated.  Use car_interfaces-msg:obstacledata instead.")
  (obstacledata m))

(cl:ensure-generic-function 'resultimage-val :lambda-list '(m))
(cl:defmethod resultimage-val ((m <CameraObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:resultimage-val is deprecated.  Use car_interfaces-msg:resultimage instead.")
  (resultimage m))

(cl:ensure-generic-function 'process_time-val :lambda-list '(m))
(cl:defmethod process_time-val ((m <CameraObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:process_time-val is deprecated.  Use car_interfaces-msg:process_time instead.")
  (process_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraObstacleInterface>) ostream)
  "Serializes a message object of type '<CameraObstacleInterface>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacledata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'obstacledata))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'resultimage) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'process_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraObstacleInterface>) istream)
  "Deserializes a message object of type '<CameraObstacleInterface>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacledata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacledata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'resultimage) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'process_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraObstacleInterface>)))
  "Returns string type for a message object of type '<CameraObstacleInterface>"
  "car_interfaces/CameraObstacleInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraObstacleInterface)))
  "Returns string type for a message object of type 'CameraObstacleInterface"
  "car_interfaces/CameraObstacleInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraObstacleInterface>)))
  "Returns md5sum for a message object of type '<CameraObstacleInterface>"
  "454b71629ff68db2d3a44afe4cb25c2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraObstacleInterface)))
  "Returns md5sum for a message object of type 'CameraObstacleInterface"
  "454b71629ff68db2d3a44afe4cb25c2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraObstacleInterface>)))
  "Returns full string definition for message of type '<CameraObstacleInterface>"
  (cl:format cl:nil "float64  timestamp  #时间戳~%uint8  id  # 摄像机ID~%uint16  number  # 障碍物数量~%float32[]  obstacledata  #障碍物数据~%sensor_msgs/Image  resultimage     # 障碍物检测结果图像~%float32  process_time    # 进程处理时间~%~%~%# 其中obstacledata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组~%# int  category     # 障碍物类别， 0点目标；1小汽车；2卡车/客车；3行人；4摩托车/电动车；5自行车；6宽大目标（如墙面）；7reserved保留； 8traffic light； 9stop sign~%# float  length       # 障碍物长度m，精度为0.01~%# float  width       # 障碍物宽度m，精度为0.01~%# float  height       # 障碍物高度m，精度为0.01~%# float  x     # 障碍物的x坐标[米]，精度为0.01~%# float  y   # 障碍物的y坐标[米]，精度为0.01~%# float  z    # 障碍物的z坐标[米]，精度为0.01~%# float  v=0    # 障碍物径向速度m/s，精度为0.01~%# float  latv=0  # 障碍物的横向速度m/s，精度为0.01~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraObstacleInterface)))
  "Returns full string definition for message of type 'CameraObstacleInterface"
  (cl:format cl:nil "float64  timestamp  #时间戳~%uint8  id  # 摄像机ID~%uint16  number  # 障碍物数量~%float32[]  obstacledata  #障碍物数据~%sensor_msgs/Image  resultimage     # 障碍物检测结果图像~%float32  process_time    # 进程处理时间~%~%~%# 其中obstacledata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组~%# int  category     # 障碍物类别， 0点目标；1小汽车；2卡车/客车；3行人；4摩托车/电动车；5自行车；6宽大目标（如墙面）；7reserved保留； 8traffic light； 9stop sign~%# float  length       # 障碍物长度m，精度为0.01~%# float  width       # 障碍物宽度m，精度为0.01~%# float  height       # 障碍物高度m，精度为0.01~%# float  x     # 障碍物的x坐标[米]，精度为0.01~%# float  y   # 障碍物的y坐标[米]，精度为0.01~%# float  z    # 障碍物的z坐标[米]，精度为0.01~%# float  v=0    # 障碍物径向速度m/s，精度为0.01~%# float  latv=0  # 障碍物的横向速度m/s，精度为0.01~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraObstacleInterface>))
  (cl:+ 0
     8
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacledata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'resultimage))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraObstacleInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraObstacleInterface
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':number (number msg))
    (cl:cons ':obstacledata (obstacledata msg))
    (cl:cons ':resultimage (resultimage msg))
    (cl:cons ':process_time (process_time msg))
))
