; Auto-generated. Do not edit!


(cl:in-package hmi-msg)


;//! \htmlinclude FaultDiagnosisInterface.msg.html

(cl:defclass <FaultDiagnosisInterface> (roslisp-msg-protocol:ros-message)
  ((lidar_start
    :reader lidar_start
    :initarg :lidar_start
    :type cl:fixnum
    :initform 0)
   (Gps_state_fault
    :reader Gps_state_fault
    :initarg :Gps_state_fault
    :type cl:boolean
    :initform cl:nil)
   (can_state
    :reader can_state
    :initarg :can_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FaultDiagnosisInterface (<FaultDiagnosisInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultDiagnosisInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultDiagnosisInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hmi-msg:<FaultDiagnosisInterface> is deprecated: use hmi-msg:FaultDiagnosisInterface instead.")))

(cl:ensure-generic-function 'lidar_start-val :lambda-list '(m))
(cl:defmethod lidar_start-val ((m <FaultDiagnosisInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:lidar_start-val is deprecated.  Use hmi-msg:lidar_start instead.")
  (lidar_start m))

(cl:ensure-generic-function 'Gps_state_fault-val :lambda-list '(m))
(cl:defmethod Gps_state_fault-val ((m <FaultDiagnosisInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:Gps_state_fault-val is deprecated.  Use hmi-msg:Gps_state_fault instead.")
  (Gps_state_fault m))

(cl:ensure-generic-function 'can_state-val :lambda-list '(m))
(cl:defmethod can_state-val ((m <FaultDiagnosisInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:can_state-val is deprecated.  Use hmi-msg:can_state instead.")
  (can_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultDiagnosisInterface>) ostream)
  "Serializes a message object of type '<FaultDiagnosisInterface>"
  (cl:let* ((signed (cl:slot-value msg 'lidar_start)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Gps_state_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultDiagnosisInterface>) istream)
  "Deserializes a message object of type '<FaultDiagnosisInterface>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidar_start) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'Gps_state_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultDiagnosisInterface>)))
  "Returns string type for a message object of type '<FaultDiagnosisInterface>"
  "hmi/FaultDiagnosisInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultDiagnosisInterface)))
  "Returns string type for a message object of type 'FaultDiagnosisInterface"
  "hmi/FaultDiagnosisInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultDiagnosisInterface>)))
  "Returns md5sum for a message object of type '<FaultDiagnosisInterface>"
  "ecaf07b9d1233a61400449644874e137")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultDiagnosisInterface)))
  "Returns md5sum for a message object of type 'FaultDiagnosisInterface"
  "ecaf07b9d1233a61400449644874e137")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultDiagnosisInterface>)))
  "Returns full string definition for message of type '<FaultDiagnosisInterface>"
  (cl:format cl:nil "int8 lidar_start        #0-未启动 1-启动~%bool Gps_state_fault    #惯导通讯故障 False：异常；True：正常~%bool can_state          #can通信故障False：异常；True：正常~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultDiagnosisInterface)))
  "Returns full string definition for message of type 'FaultDiagnosisInterface"
  (cl:format cl:nil "int8 lidar_start        #0-未启动 1-启动~%bool Gps_state_fault    #惯导通讯故障 False：异常；True：正常~%bool can_state          #can通信故障False：异常；True：正常~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultDiagnosisInterface>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultDiagnosisInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultDiagnosisInterface
    (cl:cons ':lidar_start (lidar_start msg))
    (cl:cons ':Gps_state_fault (Gps_state_fault msg))
    (cl:cons ':can_state (can_state msg))
))
