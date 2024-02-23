;; Auto-generated. Do not edit!


(when (boundp 'lidar::Point3d)
  (if (not (find-package "LIDAR"))
    (make-package "LIDAR"))
  (shadow 'Point3d (find-package "LIDAR")))
(unless (find-package "LIDAR::POINT3D")
  (make-package "LIDAR::POINT3D"))

(in-package "ROS")
;;//! \htmlinclude Point3d.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar::Point3d
  :super ros::object
  :slots (_x _y _z ))

(defmethod lidar::Point3d
  (:init
   (&key
    ((:x __x) (instance std_msgs::Float64 :init))
    ((:y __y) (instance std_msgs::Float64 :init))
    ((:z __z) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   self)
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:z
   (&rest __z)
   (if (keywordp (car __z))
       (send* _z __z)
     (progn
       (if __z (setq _z (car __z)))
       _z)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _x
    (send _x :serialization-length)
    ;; std_msgs/Float64 _y
    (send _y :serialization-length)
    ;; std_msgs/Float64 _z
    (send _z :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _x
       (send _x :serialize s)
     ;; std_msgs/Float64 _y
       (send _y :serialize s)
     ;; std_msgs/Float64 _z
       (send _z :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Float64 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;; std_msgs/Float64 _z
     (send _z :deserialize buf ptr-) (incf ptr- (send _z :serialization-length))
   ;;
   self)
  )

(setf (get lidar::Point3d :md5sum-) "c5166234939ddbad7844e2026f79c5fa")
(setf (get lidar::Point3d :datatype-) "lidar/Point3d")
(setf (get lidar::Point3d :definition-)
      "std_msgs/Float64 x 
std_msgs/Float64 y 
std_msgs/Float64 z 

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :lidar/Point3d "c5166234939ddbad7844e2026f79c5fa")


