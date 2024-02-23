; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude NetStartEndPointInterface.msg.html

(cl:defclass <NetStartEndPointInterface> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (pointA_SN
    :reader pointA_SN
    :initarg :pointA_SN
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pointB_EN
    :reader pointB_EN
    :initarg :pointB_EN
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pointC_SE
    :reader pointC_SE
    :initarg :pointC_SE
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pointD_SW
    :reader pointD_SW
    :initarg :pointD_SW
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (process_time
    :reader process_time
    :initarg :process_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass NetStartEndPointInterface (<NetStartEndPointInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetStartEndPointInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetStartEndPointInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<NetStartEndPointInterface> is deprecated: use car_interfaces-msg:NetStartEndPointInterface instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <NetStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:timestamp-val is deprecated.  Use car_interfaces-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'pointA_SN-val :lambda-list '(m))
(cl:defmethod pointA_SN-val ((m <NetStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:pointA_SN-val is deprecated.  Use car_interfaces-msg:pointA_SN instead.")
  (pointA_SN m))

(cl:ensure-generic-function 'pointB_EN-val :lambda-list '(m))
(cl:defmethod pointB_EN-val ((m <NetStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:pointB_EN-val is deprecated.  Use car_interfaces-msg:pointB_EN instead.")
  (pointB_EN m))

(cl:ensure-generic-function 'pointC_SE-val :lambda-list '(m))
(cl:defmethod pointC_SE-val ((m <NetStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:pointC_SE-val is deprecated.  Use car_interfaces-msg:pointC_SE instead.")
  (pointC_SE m))

(cl:ensure-generic-function 'pointD_SW-val :lambda-list '(m))
(cl:defmethod pointD_SW-val ((m <NetStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:pointD_SW-val is deprecated.  Use car_interfaces-msg:pointD_SW instead.")
  (pointD_SW m))

(cl:ensure-generic-function 'process_time-val :lambda-list '(m))
(cl:defmethod process_time-val ((m <NetStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:process_time-val is deprecated.  Use car_interfaces-msg:process_time instead.")
  (process_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetStartEndPointInterface>) ostream)
  "Serializes a message object of type '<NetStartEndPointInterface>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointA_SN))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pointA_SN))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointB_EN))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pointB_EN))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointC_SE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pointC_SE))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointD_SW))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pointD_SW))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'process_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetStartEndPointInterface>) istream)
  "Deserializes a message object of type '<NetStartEndPointInterface>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointA_SN) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointA_SN)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointB_EN) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointB_EN)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointC_SE) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointC_SE)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointD_SW) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointD_SW)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetStartEndPointInterface>)))
  "Returns string type for a message object of type '<NetStartEndPointInterface>"
  "car_interfaces/NetStartEndPointInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetStartEndPointInterface)))
  "Returns string type for a message object of type 'NetStartEndPointInterface"
  "car_interfaces/NetStartEndPointInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetStartEndPointInterface>)))
  "Returns md5sum for a message object of type '<NetStartEndPointInterface>"
  "61c44c5d3d9ddb9029d88dfec0d60221")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetStartEndPointInterface)))
  "Returns md5sum for a message object of type 'NetStartEndPointInterface"
  "61c44c5d3d9ddb9029d88dfec0d60221")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetStartEndPointInterface>)))
  "Returns full string definition for message of type '<NetStartEndPointInterface>"
  (cl:format cl:nil "# 路径规划两点网络输入模块~%# float64  timestamp  #时间戳~%# float32[]  startpoint   #起点位置，先经后纬~%# float32[]   endpoint    #终点位置，先经后纬~%# float32  process_time    # 进程处理时间~%# 路径规划起四点网络输入模块~%float64  timestamp  #时间戳~%float32[]  pointA_SN   #西北角位置，先经后纬~%float32[]  pointB_EN   #东北角位置，先经后纬~%float32[]  pointC_SE   #东南角位置，先经后纬~%float32[]  pointD_SW   #西南角位置，先经后纬~%float32  process_time    # 进程处理时间~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetStartEndPointInterface)))
  "Returns full string definition for message of type 'NetStartEndPointInterface"
  (cl:format cl:nil "# 路径规划两点网络输入模块~%# float64  timestamp  #时间戳~%# float32[]  startpoint   #起点位置，先经后纬~%# float32[]   endpoint    #终点位置，先经后纬~%# float32  process_time    # 进程处理时间~%# 路径规划起四点网络输入模块~%float64  timestamp  #时间戳~%float32[]  pointA_SN   #西北角位置，先经后纬~%float32[]  pointB_EN   #东北角位置，先经后纬~%float32[]  pointC_SE   #东南角位置，先经后纬~%float32[]  pointD_SW   #西南角位置，先经后纬~%float32  process_time    # 进程处理时间~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetStartEndPointInterface>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointA_SN) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointB_EN) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointC_SE) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointD_SW) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetStartEndPointInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'NetStartEndPointInterface
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':pointA_SN (pointA_SN msg))
    (cl:cons ':pointB_EN (pointB_EN msg))
    (cl:cons ':pointC_SE (pointC_SE msg))
    (cl:cons ':pointD_SW (pointD_SW msg))
    (cl:cons ':process_time (process_time msg))
))
