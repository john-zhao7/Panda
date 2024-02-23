;; Auto-generated. Do not edit!


(when (boundp 'lidar::Object)
  (if (not (find-package "LIDAR"))
    (make-package "LIDAR"))
  (shadow 'Object (find-package "LIDAR")))
(unless (find-package "LIDAR::OBJECT")
  (make-package "LIDAR::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar::Object
  :super ros::object
  :slots (_coreinfo _hassupplmentinfo _supplementinfo ))

(defmethod lidar::Object
  (:init
   (&key
    ((:coreinfo __coreinfo) (instance lidar::CoreInfo :init))
    ((:hassupplmentinfo __hassupplmentinfo) (instance std_msgs::Bool :init))
    ((:supplementinfo __supplementinfo) (instance lidar::SupplementInfo :init))
    )
   (send-super :init)
   (setq _coreinfo __coreinfo)
   (setq _hassupplmentinfo __hassupplmentinfo)
   (setq _supplementinfo __supplementinfo)
   self)
  (:coreinfo
   (&rest __coreinfo)
   (if (keywordp (car __coreinfo))
       (send* _coreinfo __coreinfo)
     (progn
       (if __coreinfo (setq _coreinfo (car __coreinfo)))
       _coreinfo)))
  (:hassupplmentinfo
   (&rest __hassupplmentinfo)
   (if (keywordp (car __hassupplmentinfo))
       (send* _hassupplmentinfo __hassupplmentinfo)
     (progn
       (if __hassupplmentinfo (setq _hassupplmentinfo (car __hassupplmentinfo)))
       _hassupplmentinfo)))
  (:supplementinfo
   (&rest __supplementinfo)
   (if (keywordp (car __supplementinfo))
       (send* _supplementinfo __supplementinfo)
     (progn
       (if __supplementinfo (setq _supplementinfo (car __supplementinfo)))
       _supplementinfo)))
  (:serialization-length
   ()
   (+
    ;; lidar/CoreInfo _coreinfo
    (send _coreinfo :serialization-length)
    ;; std_msgs/Bool _hassupplmentinfo
    (send _hassupplmentinfo :serialization-length)
    ;; lidar/SupplementInfo _supplementinfo
    (send _supplementinfo :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidar/CoreInfo _coreinfo
       (send _coreinfo :serialize s)
     ;; std_msgs/Bool _hassupplmentinfo
       (send _hassupplmentinfo :serialize s)
     ;; lidar/SupplementInfo _supplementinfo
       (send _supplementinfo :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidar/CoreInfo _coreinfo
     (send _coreinfo :deserialize buf ptr-) (incf ptr- (send _coreinfo :serialization-length))
   ;; std_msgs/Bool _hassupplmentinfo
     (send _hassupplmentinfo :deserialize buf ptr-) (incf ptr- (send _hassupplmentinfo :serialization-length))
   ;; lidar/SupplementInfo _supplementinfo
     (send _supplementinfo :deserialize buf ptr-) (incf ptr- (send _supplementinfo :serialization-length))
   ;;
   self)
  )

(setf (get lidar::Object :md5sum-) "58769107fb9619969bdc416c42341c77")
(setf (get lidar::Object :datatype-) "lidar/Object")
(setf (get lidar::Object :definition-)
      "CoreInfo coreinfo
std_msgs/Bool  hassupplmentinfo 
SupplementInfo supplementinfo 

================================================================================
MSG: lidar/CoreInfo
std_msgs/Float64 timestamp

std_msgs/Int32 priority_id
std_msgs/Float32 exist_confidence 
Point3f          center 
Point3f          center_cov 
Point3f          size 
Point3f          size_cov 
Point3f          direction 
Point3f          direction_cov         
std_msgs/Int32   type 
std_msgs/Float32 type_confidence 
std_msgs/Int32   attention_type 
std_msgs/Int32   motion_state
std_msgs/Int32   lane_pos
std_msgs/Int32   trakcer_id 
std_msgs/Float64 age 
Point3f          velocity 
Point3f          velocity_cov 
Point3f          acceleration 
Point3f          acceleration_cov 
std_msgs/Float32 angle_velocity 
std_msgs/Float32 angle_velocity_cov 
std_msgs/Float32 angle_acceleration 
std_msgs/Float32 angle_acceleration_cov  
Point3f          anchor 
Point3f          nearest_point 


================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: lidar/Point3f
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 
================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: lidar/SupplementInfo
std_msgs/UInt32     unique_id

Point3f[]           polygon
std_msgs/Int32      left_point_index 
std_msgs/Int32      right_point_index 

std_msgs/Int32[]    cloud_indices

std_msgs/Float32[]  latent_types
std_msgs/Int32      size_type 
std_msgs/Int32      mode 
std_msgs/Bool       in_roi 
std_msgs/Int32      tracking_state
Point3f             geo_center 
Point3f             geo_size 



Point3f[]           trajectory 
Point3f[]           history_velocity
std_msgs/Int32[]    history_type 
std_msgs/Int32      gps_mode 
Point3d             gps_info 

================================================================================
MSG: std_msgs/UInt32
uint32 data
================================================================================
MSG: lidar/Point3d
std_msgs/Float64 x 
std_msgs/Float64 y 
std_msgs/Float64 z 

")



(provide :lidar/Object "58769107fb9619969bdc416c42341c77")


