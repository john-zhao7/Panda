; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude VehOperatingStateInterface.msg.html

(cl:defclass <VehOperatingStateInterface> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (VehOperat_Status
    :reader VehOperat_Status
    :initarg :VehOperat_Status
    :type cl:fixnum
    :initform 0)
   (process_time
    :reader process_time
    :initarg :process_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehOperatingStateInterface (<VehOperatingStateInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehOperatingStateInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehOperatingStateInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<VehOperatingStateInterface> is deprecated: use car_interfaces-msg:VehOperatingStateInterface instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <VehOperatingStateInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:timestamp-val is deprecated.  Use car_interfaces-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'VehOperat_Status-val :lambda-list '(m))
(cl:defmethod VehOperat_Status-val ((m <VehOperatingStateInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:VehOperat_Status-val is deprecated.  Use car_interfaces-msg:VehOperat_Status instead.")
  (VehOperat_Status m))

(cl:ensure-generic-function 'process_time-val :lambda-list '(m))
(cl:defmethod process_time-val ((m <VehOperatingStateInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:process_time-val is deprecated.  Use car_interfaces-msg:process_time instead.")
  (process_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehOperatingStateInterface>) ostream)
  "Serializes a message object of type '<VehOperatingStateInterface>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'VehOperat_Status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'process_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehOperatingStateInterface>) istream)
  "Deserializes a message object of type '<VehOperatingStateInterface>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VehOperat_Status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'process_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehOperatingStateInterface>)))
  "Returns string type for a message object of type '<VehOperatingStateInterface>"
  "car_interfaces/VehOperatingStateInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehOperatingStateInterface)))
  "Returns string type for a message object of type 'VehOperatingStateInterface"
  "car_interfaces/VehOperatingStateInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehOperatingStateInterface>)))
  "Returns md5sum for a message object of type '<VehOperatingStateInterface>"
  "04f41a0b98d40a7eebbc487cf38ee657")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehOperatingStateInterface)))
  "Returns md5sum for a message object of type 'VehOperatingStateInterface"
  "04f41a0b98d40a7eebbc487cf38ee657")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehOperatingStateInterface>)))
  "Returns full string definition for message of type '<VehOperatingStateInterface>"
  (cl:format cl:nil "float64  timestamp  # 数据帧时间戳~%int8 VehOperat_Status #  1 - 人工驾驶;2 - 上电自检; 3 - 车辆起步; 4 - 进入棉田; 5 - 开始采棉; 6-暂停工作; 7- 卸载棉花;8-完工收车~%float32  process_time    # 进程处理时间~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehOperatingStateInterface)))
  "Returns full string definition for message of type 'VehOperatingStateInterface"
  (cl:format cl:nil "float64  timestamp  # 数据帧时间戳~%int8 VehOperat_Status #  1 - 人工驾驶;2 - 上电自检; 3 - 车辆起步; 4 - 进入棉田; 5 - 开始采棉; 6-暂停工作; 7- 卸载棉花;8-完工收车~%float32  process_time    # 进程处理时间~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehOperatingStateInterface>))
  (cl:+ 0
     8
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehOperatingStateInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'VehOperatingStateInterface
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':VehOperat_Status (VehOperat_Status msg))
    (cl:cons ':process_time (process_time msg))
))
