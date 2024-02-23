; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude LidarOriInterface.msg.html

(cl:defclass <LidarOriInterface> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LidarOriInterface (<LidarOriInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarOriInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarOriInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<LidarOriInterface> is deprecated: use car_interfaces-msg:LidarOriInterface instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <LidarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:state-val is deprecated.  Use car_interfaces-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarOriInterface>) ostream)
  "Serializes a message object of type '<LidarOriInterface>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarOriInterface>) istream)
  "Deserializes a message object of type '<LidarOriInterface>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarOriInterface>)))
  "Returns string type for a message object of type '<LidarOriInterface>"
  "car_interfaces/LidarOriInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarOriInterface)))
  "Returns string type for a message object of type 'LidarOriInterface"
  "car_interfaces/LidarOriInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarOriInterface>)))
  "Returns md5sum for a message object of type '<LidarOriInterface>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarOriInterface)))
  "Returns md5sum for a message object of type 'LidarOriInterface"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarOriInterface>)))
  "Returns full string definition for message of type '<LidarOriInterface>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarOriInterface)))
  "Returns full string definition for message of type 'LidarOriInterface"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarOriInterface>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarOriInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarOriInterface
    (cl:cons ':state (state msg))
))
