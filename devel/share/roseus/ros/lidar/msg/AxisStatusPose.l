;; Auto-generated. Do not edit!


(when (boundp 'lidar::AxisStatusPose)
  (if (not (find-package "LIDAR"))
    (make-package "LIDAR"))
  (shadow 'AxisStatusPose (find-package "LIDAR")))
(unless (find-package "LIDAR::AXISSTATUSPOSE")
  (make-package "LIDAR::AXISSTATUSPOSE"))

(in-package "ROS")
;;//! \htmlinclude AxisStatusPose.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar::AxisStatusPose
  :super ros::object
  :slots (_status _pose ))

(defmethod lidar::AxisStatusPose
  (:init
   (&key
    ((:status __status) (instance std_msgs::Int32 :init))
    ((:pose __pose) (instance lidar::Pose :init))
    )
   (send-super :init)
   (setq _status __status)
   (setq _pose __pose)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _status
    (send _status :serialization-length)
    ;; lidar/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _status
       (send _status :serialize s)
     ;; lidar/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; lidar/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get lidar::AxisStatusPose :md5sum-) "1987389e84dad24c41bcd78726580d20")
(setf (get lidar::AxisStatusPose :datatype-) "lidar/AxisStatusPose")
(setf (get lidar::AxisStatusPose :definition-)
      "std_msgs/Int32 status 
Pose           pose 
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: lidar/Pose
std_msgs/Float32 x 
std_msgs/Float32 y 
std_msgs/Float32 z 

std_msgs/Float32 roll 
std_msgs/Float32 pitch
std_msgs/Float32 yaw

std_msgs/Int32 status 

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :lidar/AxisStatusPose "1987389e84dad24c41bcd78726580d20")


