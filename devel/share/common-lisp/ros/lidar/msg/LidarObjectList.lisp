; Auto-generated. Do not edit!


(cl:in-package lidar-msg)


;//! \htmlinclude LidarObjectList.msg.html

(cl:defclass <LidarObjectList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Object
    :reader Object
    :initarg :Object
    :type (cl:vector lidar-msg:LidarObject)
   :initform (cl:make-array 0 :element-type 'lidar-msg:LidarObject :initial-element (cl:make-instance 'lidar-msg:LidarObject))))
)

(cl:defclass LidarObjectList (<LidarObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar-msg:<LidarObjectList> is deprecated: use lidar-msg:LidarObjectList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LidarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:header-val is deprecated.  Use lidar-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Object-val :lambda-list '(m))
(cl:defmethod Object-val ((m <LidarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:Object-val is deprecated.  Use lidar-msg:Object instead.")
  (Object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarObjectList>) ostream)
  "Serializes a message object of type '<LidarObjectList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarObjectList>) istream)
  "Deserializes a message object of type '<LidarObjectList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Object) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Object)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidar-msg:LidarObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarObjectList>)))
  "Returns string type for a message object of type '<LidarObjectList>"
  "lidar/LidarObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarObjectList)))
  "Returns string type for a message object of type 'LidarObjectList"
  "lidar/LidarObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarObjectList>)))
  "Returns md5sum for a message object of type '<LidarObjectList>"
  "c8c1991d35137676f110b6223f02f5c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarObjectList)))
  "Returns md5sum for a message object of type 'LidarObjectList"
  "c8c1991d35137676f110b6223f02f5c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarObjectList>)))
  "Returns full string definition for message of type '<LidarObjectList>"
  (cl:format cl:nil "std_msgs/Header header~%lidar/LidarObject[] Object~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: lidar/LidarObject~%~%uint8 id~%uint8 type~%float32 exist_con~%float32 vel_x~%float32 vel_y~%float32 vel_z~%float32 dis_x~%float32 dis_y~%float32 dis_z~%float32 acc_x~%float32 acc_y~%float32 acc_z~%float32 object_x~%float32 object_y~%float32 object_z~%float32 core_x~%float32 core_y~%float32 core_z~%uint8 attention_type~%uint8   motion_state~%float32 age~%uint8 tra_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarObjectList)))
  "Returns full string definition for message of type 'LidarObjectList"
  (cl:format cl:nil "std_msgs/Header header~%lidar/LidarObject[] Object~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: lidar/LidarObject~%~%uint8 id~%uint8 type~%float32 exist_con~%float32 vel_x~%float32 vel_y~%float32 vel_z~%float32 dis_x~%float32 dis_y~%float32 dis_z~%float32 acc_x~%float32 acc_y~%float32 acc_z~%float32 object_x~%float32 object_y~%float32 object_z~%float32 core_x~%float32 core_y~%float32 core_z~%uint8 attention_type~%uint8   motion_state~%float32 age~%uint8 tra_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarObjectList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Object) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarObjectList
    (cl:cons ':header (header msg))
    (cl:cons ':Object (Object msg))
))
