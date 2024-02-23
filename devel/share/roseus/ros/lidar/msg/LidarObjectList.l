;; Auto-generated. Do not edit!


(when (boundp 'lidar::LidarObjectList)
  (if (not (find-package "LIDAR"))
    (make-package "LIDAR"))
  (shadow 'LidarObjectList (find-package "LIDAR")))
(unless (find-package "LIDAR::LIDAROBJECTLIST")
  (make-package "LIDAR::LIDAROBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude LidarObjectList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar::LidarObjectList
  :super ros::object
  :slots (_header _Object ))

(defmethod lidar::LidarObjectList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Object __Object) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _Object __Object)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Object
   (&rest __Object)
   (if (keywordp (car __Object))
       (send* _Object __Object)
     (progn
       (if __Object (setq _Object (car __Object)))
       _Object)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lidar/LidarObject[] _Object
    (apply #'+ (send-all _Object :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lidar/LidarObject[] _Object
     (write-long (length _Object) s)
     (dolist (elem _Object)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lidar/LidarObject[] _Object
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Object (let (r) (dotimes (i n) (push (instance lidar::LidarObject :init) r)) r))
     (dolist (elem- _Object)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lidar::LidarObjectList :md5sum-) "c8c1991d35137676f110b6223f02f5c5")
(setf (get lidar::LidarObjectList :datatype-) "lidar/LidarObjectList")
(setf (get lidar::LidarObjectList :definition-)
      "std_msgs/Header header
lidar/LidarObject[] Object



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: lidar/LidarObject

uint8 id
uint8 type
float32 exist_con
float32 vel_x
float32 vel_y
float32 vel_z
float32 dis_x
float32 dis_y
float32 dis_z
float32 acc_x
float32 acc_y
float32 acc_z
float32 object_x
float32 object_y
float32 object_z
float32 core_x
float32 core_y
float32 core_z
uint8 attention_type
uint8   motion_state
float32 age
uint8 tra_id

")



(provide :lidar/LidarObjectList "c8c1991d35137676f110b6223f02f5c5")


