; Auto-generated. Do not edit!


(cl:in-package lidar-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((coreinfo
    :reader coreinfo
    :initarg :coreinfo
    :type lidar-msg:CoreInfo
    :initform (cl:make-instance 'lidar-msg:CoreInfo))
   (hassupplmentinfo
    :reader hassupplmentinfo
    :initarg :hassupplmentinfo
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (supplementinfo
    :reader supplementinfo
    :initarg :supplementinfo
    :type lidar-msg:SupplementInfo
    :initform (cl:make-instance 'lidar-msg:SupplementInfo)))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar-msg:<Object> is deprecated: use lidar-msg:Object instead.")))

(cl:ensure-generic-function 'coreinfo-val :lambda-list '(m))
(cl:defmethod coreinfo-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:coreinfo-val is deprecated.  Use lidar-msg:coreinfo instead.")
  (coreinfo m))

(cl:ensure-generic-function 'hassupplmentinfo-val :lambda-list '(m))
(cl:defmethod hassupplmentinfo-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:hassupplmentinfo-val is deprecated.  Use lidar-msg:hassupplmentinfo instead.")
  (hassupplmentinfo m))

(cl:ensure-generic-function 'supplementinfo-val :lambda-list '(m))
(cl:defmethod supplementinfo-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:supplementinfo-val is deprecated.  Use lidar-msg:supplementinfo instead.")
  (supplementinfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coreinfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hassupplmentinfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'supplementinfo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coreinfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hassupplmentinfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'supplementinfo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "lidar/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "lidar/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "58769107fb9619969bdc416c42341c77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "58769107fb9619969bdc416c42341c77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "CoreInfo coreinfo~%std_msgs/Bool  hassupplmentinfo ~%SupplementInfo supplementinfo ~%~%================================================================================~%MSG: lidar/CoreInfo~%std_msgs/Float64 timestamp~%~%std_msgs/Int32 priority_id~%std_msgs/Float32 exist_confidence ~%Point3f          center ~%Point3f          center_cov ~%Point3f          size ~%Point3f          size_cov ~%Point3f          direction ~%Point3f          direction_cov         ~%std_msgs/Int32   type ~%std_msgs/Float32 type_confidence ~%std_msgs/Int32   attention_type ~%std_msgs/Int32   motion_state~%std_msgs/Int32   lane_pos~%std_msgs/Int32   trakcer_id ~%std_msgs/Float64 age ~%Point3f          velocity ~%Point3f          velocity_cov ~%Point3f          acceleration ~%Point3f          acceleration_cov ~%std_msgs/Float32 angle_velocity ~%std_msgs/Float32 angle_velocity_cov ~%std_msgs/Float32 angle_acceleration ~%std_msgs/Float32 angle_acceleration_cov  ~%Point3f          anchor ~%Point3f          nearest_point ~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: lidar/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: lidar/SupplementInfo~%std_msgs/UInt32     unique_id~%~%Point3f[]           polygon~%std_msgs/Int32      left_point_index ~%std_msgs/Int32      right_point_index ~%~%std_msgs/Int32[]    cloud_indices~%~%std_msgs/Float32[]  latent_types~%std_msgs/Int32      size_type ~%std_msgs/Int32      mode ~%std_msgs/Bool       in_roi ~%std_msgs/Int32      tracking_state~%Point3f             geo_center ~%Point3f             geo_size ~%~%~%~%Point3f[]           trajectory ~%Point3f[]           history_velocity~%std_msgs/Int32[]    history_type ~%std_msgs/Int32      gps_mode ~%Point3d             gps_info ~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: lidar/Point3d~%std_msgs/Float64 x ~%std_msgs/Float64 y ~%std_msgs/Float64 z ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "CoreInfo coreinfo~%std_msgs/Bool  hassupplmentinfo ~%SupplementInfo supplementinfo ~%~%================================================================================~%MSG: lidar/CoreInfo~%std_msgs/Float64 timestamp~%~%std_msgs/Int32 priority_id~%std_msgs/Float32 exist_confidence ~%Point3f          center ~%Point3f          center_cov ~%Point3f          size ~%Point3f          size_cov ~%Point3f          direction ~%Point3f          direction_cov         ~%std_msgs/Int32   type ~%std_msgs/Float32 type_confidence ~%std_msgs/Int32   attention_type ~%std_msgs/Int32   motion_state~%std_msgs/Int32   lane_pos~%std_msgs/Int32   trakcer_id ~%std_msgs/Float64 age ~%Point3f          velocity ~%Point3f          velocity_cov ~%Point3f          acceleration ~%Point3f          acceleration_cov ~%std_msgs/Float32 angle_velocity ~%std_msgs/Float32 angle_velocity_cov ~%std_msgs/Float32 angle_acceleration ~%std_msgs/Float32 angle_acceleration_cov  ~%Point3f          anchor ~%Point3f          nearest_point ~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: lidar/Point3f~%std_msgs/Float32 x ~%std_msgs/Float32 y ~%std_msgs/Float32 z ~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: lidar/SupplementInfo~%std_msgs/UInt32     unique_id~%~%Point3f[]           polygon~%std_msgs/Int32      left_point_index ~%std_msgs/Int32      right_point_index ~%~%std_msgs/Int32[]    cloud_indices~%~%std_msgs/Float32[]  latent_types~%std_msgs/Int32      size_type ~%std_msgs/Int32      mode ~%std_msgs/Bool       in_roi ~%std_msgs/Int32      tracking_state~%Point3f             geo_center ~%Point3f             geo_size ~%~%~%~%Point3f[]           trajectory ~%Point3f[]           history_velocity~%std_msgs/Int32[]    history_type ~%std_msgs/Int32      gps_mode ~%Point3d             gps_info ~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%================================================================================~%MSG: lidar/Point3d~%std_msgs/Float64 x ~%std_msgs/Float64 y ~%std_msgs/Float64 z ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coreinfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hassupplmentinfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'supplementinfo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':coreinfo (coreinfo msg))
    (cl:cons ':hassupplmentinfo (hassupplmentinfo msg))
    (cl:cons ':supplementinfo (supplementinfo msg))
))
