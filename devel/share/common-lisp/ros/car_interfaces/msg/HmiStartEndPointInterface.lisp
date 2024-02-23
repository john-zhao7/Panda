; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude HmiStartEndPointInterface.msg.html

(cl:defclass <HmiStartEndPointInterface> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (roadid
    :reader roadid
    :initarg :roadid
    :type cl:integer
    :initform 0)
   (stationid
    :reader stationid
    :initarg :stationid
    :type cl:integer
    :initform 0))
)

(cl:defclass HmiStartEndPointInterface (<HmiStartEndPointInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HmiStartEndPointInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HmiStartEndPointInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<HmiStartEndPointInterface> is deprecated: use car_interfaces-msg:HmiStartEndPointInterface instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <HmiStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:flag-val is deprecated.  Use car_interfaces-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'roadid-val :lambda-list '(m))
(cl:defmethod roadid-val ((m <HmiStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:roadid-val is deprecated.  Use car_interfaces-msg:roadid instead.")
  (roadid m))

(cl:ensure-generic-function 'stationid-val :lambda-list '(m))
(cl:defmethod stationid-val ((m <HmiStartEndPointInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:stationid-val is deprecated.  Use car_interfaces-msg:stationid instead.")
  (stationid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HmiStartEndPointInterface>) ostream)
  "Serializes a message object of type '<HmiStartEndPointInterface>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roadid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stationid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HmiStartEndPointInterface>) istream)
  "Deserializes a message object of type '<HmiStartEndPointInterface>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roadid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stationid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HmiStartEndPointInterface>)))
  "Returns string type for a message object of type '<HmiStartEndPointInterface>"
  "car_interfaces/HmiStartEndPointInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HmiStartEndPointInterface)))
  "Returns string type for a message object of type 'HmiStartEndPointInterface"
  "car_interfaces/HmiStartEndPointInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HmiStartEndPointInterface>)))
  "Returns md5sum for a message object of type '<HmiStartEndPointInterface>"
  "764c8e13d4a4b0d9d9bdd7520da5ffd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HmiStartEndPointInterface)))
  "Returns md5sum for a message object of type 'HmiStartEndPointInterface"
  "764c8e13d4a4b0d9d9bdd7520da5ffd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HmiStartEndPointInterface>)))
  "Returns full string definition for message of type '<HmiStartEndPointInterface>"
  (cl:format cl:nil "int8 flag                       #标志位~%int32 roadid                     #界面重启~%int32 stationid 		 #紧急停车按钮~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HmiStartEndPointInterface)))
  "Returns full string definition for message of type 'HmiStartEndPointInterface"
  (cl:format cl:nil "int8 flag                       #标志位~%int32 roadid                     #界面重启~%int32 stationid 		 #紧急停车按钮~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HmiStartEndPointInterface>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HmiStartEndPointInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'HmiStartEndPointInterface
    (cl:cons ':flag (flag msg))
    (cl:cons ':roadid (roadid msg))
    (cl:cons ':stationid (stationid msg))
))
