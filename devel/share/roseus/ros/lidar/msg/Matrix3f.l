;; Auto-generated. Do not edit!


(when (boundp 'lidar::Matrix3f)
  (if (not (find-package "LIDAR"))
    (make-package "LIDAR"))
  (shadow 'Matrix3f (find-package "LIDAR")))
(unless (find-package "LIDAR::MATRIX3F")
  (make-package "LIDAR::MATRIX3F"))

(in-package "ROS")
;;//! \htmlinclude Matrix3f.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar::Matrix3f
  :super ros::object
  :slots (_matrix3x3 ))

(defmethod lidar::Matrix3f
  (:init
   (&key
    ((:matrix3x3 __matrix3x3) ())
    )
   (send-super :init)
   (setq _matrix3x3 __matrix3x3)
   self)
  (:matrix3x3
   (&rest __matrix3x3)
   (if (keywordp (car __matrix3x3))
       (send* _matrix3x3 __matrix3x3)
     (progn
       (if __matrix3x3 (setq _matrix3x3 (car __matrix3x3)))
       _matrix3x3)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32[] _matrix3x3
    (apply #'+ (send-all _matrix3x3 :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32[] _matrix3x3
     (write-long (length _matrix3x3) s)
     (dolist (elem _matrix3x3)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32[] _matrix3x3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix3x3 (let (r) (dotimes (i n) (push (instance std_msgs::Float32 :init) r)) r))
     (dolist (elem- _matrix3x3)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lidar::Matrix3f :md5sum-) "f92b4745b327860ddb3bbad95d45b5bf")
(setf (get lidar::Matrix3f :datatype-) "lidar/Matrix3f")
(setf (get lidar::Matrix3f :definition-)
      "std_msgs/Float32[] matrix3x3 
================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :lidar/Matrix3f "f92b4745b327860ddb3bbad95d45b5bf")


