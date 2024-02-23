; Auto-generated. Do not edit!


(cl:in-package hmi-msg)


;//! \htmlinclude NodePointsInterface.msg.html

(cl:defclass <NodePointsInterface> (roslisp-msg-protocol:ros-message)
  ((stationpoint
    :reader stationpoint
    :initarg :stationpoint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (incppoint
    :reader incppoint
    :initarg :incppoint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NodePointsInterface (<NodePointsInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodePointsInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodePointsInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hmi-msg:<NodePointsInterface> is deprecated: use hmi-msg:NodePointsInterface instead.")))

(cl:ensure-generic-function 'stationpoint-val :lambda-list '(m))
(cl:defmethod stationpoint-val ((m <NodePointsInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:stationpoint-val is deprecated.  Use hmi-msg:stationpoint instead.")
  (stationpoint m))

(cl:ensure-generic-function 'incppoint-val :lambda-list '(m))
(cl:defmethod incppoint-val ((m <NodePointsInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:incppoint-val is deprecated.  Use hmi-msg:incppoint instead.")
  (incppoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodePointsInterface>) ostream)
  "Serializes a message object of type '<NodePointsInterface>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stationpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'stationpoint))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'incppoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'incppoint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodePointsInterface>) istream)
  "Deserializes a message object of type '<NodePointsInterface>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stationpoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stationpoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'incppoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'incppoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodePointsInterface>)))
  "Returns string type for a message object of type '<NodePointsInterface>"
  "hmi/NodePointsInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodePointsInterface)))
  "Returns string type for a message object of type 'NodePointsInterface"
  "hmi/NodePointsInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodePointsInterface>)))
  "Returns md5sum for a message object of type '<NodePointsInterface>"
  "7d98513179a031ba600954534b7ca6bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodePointsInterface)))
  "Returns md5sum for a message object of type 'NodePointsInterface"
  "7d98513179a031ba600954534b7ca6bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodePointsInterface>)))
  "Returns full string definition for message of type '<NodePointsInterface>"
  (cl:format cl:nil "float64[]  stationpoint   #站点信息集，先经后纬~%float64[]  incppoint      #路口信息集，先经后纬~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodePointsInterface)))
  "Returns full string definition for message of type 'NodePointsInterface"
  (cl:format cl:nil "float64[]  stationpoint   #站点信息集，先经后纬~%float64[]  incppoint      #路口信息集，先经后纬~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodePointsInterface>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stationpoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'incppoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodePointsInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'NodePointsInterface
    (cl:cons ':stationpoint (stationpoint msg))
    (cl:cons ':incppoint (incppoint msg))
))
