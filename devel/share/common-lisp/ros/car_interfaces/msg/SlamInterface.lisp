; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude SlamInterface.msg.html

(cl:defclass <SlamInterface> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass SlamInterface (<SlamInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SlamInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SlamInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<SlamInterface> is deprecated: use car_interfaces-msg:SlamInterface instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SlamInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:data-val is deprecated.  Use car_interfaces-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SlamInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:state-val is deprecated.  Use car_interfaces-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SlamInterface>) ostream)
  "Serializes a message object of type '<SlamInterface>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SlamInterface>) istream)
  "Deserializes a message object of type '<SlamInterface>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SlamInterface>)))
  "Returns string type for a message object of type '<SlamInterface>"
  "car_interfaces/SlamInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SlamInterface)))
  "Returns string type for a message object of type 'SlamInterface"
  "car_interfaces/SlamInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SlamInterface>)))
  "Returns md5sum for a message object of type '<SlamInterface>"
  "a7aa5f5b73ac197e5dd5cd573af2d428")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SlamInterface)))
  "Returns md5sum for a message object of type 'SlamInterface"
  "a7aa5f5b73ac197e5dd5cd573af2d428")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SlamInterface>)))
  "Returns full string definition for message of type '<SlamInterface>"
  (cl:format cl:nil "float32 data~%int64 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SlamInterface)))
  "Returns full string definition for message of type 'SlamInterface"
  (cl:format cl:nil "float32 data~%int64 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SlamInterface>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SlamInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'SlamInterface
    (cl:cons ':data (data msg))
    (cl:cons ':state (state msg))
))
