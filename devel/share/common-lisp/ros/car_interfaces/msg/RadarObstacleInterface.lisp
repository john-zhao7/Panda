; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude RadarObstacleInterface.msg.html

(cl:defclass <RadarObstacleInterface> (roslisp-msg-protocol:ros-message)
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
   (process_time
    :reader process_time
    :initarg :process_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadarObstacleInterface (<RadarObstacleInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarObstacleInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarObstacleInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<RadarObstacleInterface> is deprecated: use car_interfaces-msg:RadarObstacleInterface instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <RadarObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:timestamp-val is deprecated.  Use car_interfaces-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RadarObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:id-val is deprecated.  Use car_interfaces-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RadarObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:number-val is deprecated.  Use car_interfaces-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'obstacledata-val :lambda-list '(m))
(cl:defmethod obstacledata-val ((m <RadarObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:obstacledata-val is deprecated.  Use car_interfaces-msg:obstacledata instead.")
  (obstacledata m))

(cl:ensure-generic-function 'process_time-val :lambda-list '(m))
(cl:defmethod process_time-val ((m <RadarObstacleInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:process_time-val is deprecated.  Use car_interfaces-msg:process_time instead.")
  (process_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarObstacleInterface>) ostream)
  "Serializes a message object of type '<RadarObstacleInterface>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'process_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarObstacleInterface>) istream)
  "Deserializes a message object of type '<RadarObstacleInterface>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'process_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarObstacleInterface>)))
  "Returns string type for a message object of type '<RadarObstacleInterface>"
  "car_interfaces/RadarObstacleInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarObstacleInterface)))
  "Returns string type for a message object of type 'RadarObstacleInterface"
  "car_interfaces/RadarObstacleInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarObstacleInterface>)))
  "Returns md5sum for a message object of type '<RadarObstacleInterface>"
  "d72c4e0d3fc62d79de85a43eb6d4cf59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarObstacleInterface)))
  "Returns md5sum for a message object of type 'RadarObstacleInterface"
  "d72c4e0d3fc62d79de85a43eb6d4cf59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarObstacleInterface>)))
  "Returns full string definition for message of type '<RadarObstacleInterface>"
  (cl:format cl:nil "float64  timestamp  #时间戳~%uint8  id  # 毫米波雷达ID~%uint16  number  #障碍物数量~%float32[]  obstacledata  #障碍物数据~%float32  process_time    # 进程处理时间~%#其中obstacledata格式float32[]为一维数组，储存按照[x  ,y  ,z  ,v  , x ,y ,z ,v ,latv ,……]存储49个长度数据为一组~%# float  length       # 障碍物长度m，精度为0.01~%# float  width       # 障碍物宽度m，精度为0.01~%# float  height       # 障碍物高度m，精度为0.01~%# float  x     # 障碍物的x坐标[米]，精度为0.01~%# float  y   # 障碍物的y坐标[米]，精度为0.01~%# float  z    # 障碍物的z坐标[米]，精度为0.01~%# float  v=0    # 障碍物径向速度m/s，精度为0.01~%# float  latv=0  # 障碍物的横向速度m/s，精度为0.01~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarObstacleInterface)))
  "Returns full string definition for message of type 'RadarObstacleInterface"
  (cl:format cl:nil "float64  timestamp  #时间戳~%uint8  id  # 毫米波雷达ID~%uint16  number  #障碍物数量~%float32[]  obstacledata  #障碍物数据~%float32  process_time    # 进程处理时间~%#其中obstacledata格式float32[]为一维数组，储存按照[x  ,y  ,z  ,v  , x ,y ,z ,v ,latv ,……]存储49个长度数据为一组~%# float  length       # 障碍物长度m，精度为0.01~%# float  width       # 障碍物宽度m，精度为0.01~%# float  height       # 障碍物高度m，精度为0.01~%# float  x     # 障碍物的x坐标[米]，精度为0.01~%# float  y   # 障碍物的y坐标[米]，精度为0.01~%# float  z    # 障碍物的z坐标[米]，精度为0.01~%# float  v=0    # 障碍物径向速度m/s，精度为0.01~%# float  latv=0  # 障碍物的横向速度m/s，精度为0.01~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarObstacleInterface>))
  (cl:+ 0
     8
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacledata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarObstacleInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarObstacleInterface
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':number (number msg))
    (cl:cons ':obstacledata (obstacledata msg))
    (cl:cons ':process_time (process_time msg))
))
