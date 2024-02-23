;; Auto-generated. Do not edit!


(when (boundp 'lidar::StringStamped)
  (if (not (find-package "LIDAR"))
    (make-package "LIDAR"))
  (shadow 'StringStamped (find-package "LIDAR")))
(unless (find-package "LIDAR::STRINGSTAMPED")
  (make-package "LIDAR::STRINGSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude StringStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar::StringStamped
  :super ros::object
  :slots (_header _content ))

(defmethod lidar::StringStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:content __content) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _content __content)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:content
   (&rest __content)
   (if (keywordp (car __content))
       (send* _content __content)
     (progn
       (if __content (setq _content (car __content)))
       _content)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String _content
    (send _content :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String _content
       (send _content :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String _content
     (send _content :deserialize buf ptr-) (incf ptr- (send _content :serialization-length))
   ;;
   self)
  )

(setf (get lidar::StringStamped :md5sum-) "34daa9da257fe1ca16b28cd316f31f37")
(setf (get lidar::StringStamped :datatype-) "lidar/StringStamped")
(setf (get lidar::StringStamped :definition-)
      "std_msgs/Header header
std_msgs/String content
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
MSG: std_msgs/String
string data

")



(provide :lidar/StringStamped "34daa9da257fe1ca16b28cd316f31f37")


