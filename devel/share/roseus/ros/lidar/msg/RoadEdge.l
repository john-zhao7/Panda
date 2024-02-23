;; Auto-generated. Do not edit!


(when (boundp 'lidar::RoadEdge)
  (if (not (find-package "LIDAR"))
    (make-package "LIDAR"))
  (shadow 'RoadEdge (find-package "LIDAR")))
(unless (find-package "LIDAR::ROADEDGE")
  (make-package "LIDAR::ROADEDGE"))

(in-package "ROS")
;;//! \htmlinclude RoadEdge.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar::RoadEdge
  :super ros::object
  :slots (_roadedge_id _curve _end_points _measure_status _confidence ))

(defmethod lidar::RoadEdge
  (:init
   (&key
    ((:roadedge_id __roadedge_id) (instance std_msgs::Int32 :init))
    ((:curve __curve) (instance lidar::Curve :init))
    ((:end_points __end_points) (instance lidar::EndPoints :init))
    ((:measure_status __measure_status) (instance std_msgs::Int32 :init))
    ((:confidence __confidence) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _roadedge_id __roadedge_id)
   (setq _curve __curve)
   (setq _end_points __end_points)
   (setq _measure_status __measure_status)
   (setq _confidence __confidence)
   self)
  (:roadedge_id
   (&rest __roadedge_id)
   (if (keywordp (car __roadedge_id))
       (send* _roadedge_id __roadedge_id)
     (progn
       (if __roadedge_id (setq _roadedge_id (car __roadedge_id)))
       _roadedge_id)))
  (:curve
   (&rest __curve)
   (if (keywordp (car __curve))
       (send* _curve __curve)
     (progn
       (if __curve (setq _curve (car __curve)))
       _curve)))
  (:end_points
   (&rest __end_points)
   (if (keywordp (car __end_points))
       (send* _end_points __end_points)
     (progn
       (if __end_points (setq _end_points (car __end_points)))
       _end_points)))
  (:measure_status
   (&rest __measure_status)
   (if (keywordp (car __measure_status))
       (send* _measure_status __measure_status)
     (progn
       (if __measure_status (setq _measure_status (car __measure_status)))
       _measure_status)))
  (:confidence
   (&rest __confidence)
   (if (keywordp (car __confidence))
       (send* _confidence __confidence)
     (progn
       (if __confidence (setq _confidence (car __confidence)))
       _confidence)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _roadedge_id
    (send _roadedge_id :serialization-length)
    ;; lidar/Curve _curve
    (send _curve :serialization-length)
    ;; lidar/EndPoints _end_points
    (send _end_points :serialization-length)
    ;; std_msgs/Int32 _measure_status
    (send _measure_status :serialization-length)
    ;; std_msgs/Float32 _confidence
    (send _confidence :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _roadedge_id
       (send _roadedge_id :serialize s)
     ;; lidar/Curve _curve
       (send _curve :serialize s)
     ;; lidar/EndPoints _end_points
       (send _end_points :serialize s)
     ;; std_msgs/Int32 _measure_status
       (send _measure_status :serialize s)
     ;; std_msgs/Float32 _confidence
       (send _confidence :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _roadedge_id
     (send _roadedge_id :deserialize buf ptr-) (incf ptr- (send _roadedge_id :serialization-length))
   ;; lidar/Curve _curve
     (send _curve :deserialize buf ptr-) (incf ptr- (send _curve :serialization-length))
   ;; lidar/EndPoints _end_points
     (send _end_points :deserialize buf ptr-) (incf ptr- (send _end_points :serialization-length))
   ;; std_msgs/Int32 _measure_status
     (send _measure_status :deserialize buf ptr-) (incf ptr- (send _measure_status :serialization-length))
   ;; std_msgs/Float32 _confidence
     (send _confidence :deserialize buf ptr-) (incf ptr- (send _confidence :serialization-length))
   ;;
   self)
  )

(setf (get lidar::RoadEdge :md5sum-) "18d874dc862d1be92aa83f7d5c965158")
(setf (get lidar::RoadEdge :datatype-) "lidar/RoadEdge")
(setf (get lidar::RoadEdge :definition-)
      "std_msgs/Int32   roadedge_id  
Curve            curve 
EndPoints        end_points 
std_msgs/Int32   measure_status  
std_msgs/Float32 confidence 

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: lidar/Curve
std_msgs/Float32 x_start 
std_msgs/Float32 x_end 
std_msgs/Float32 a 
std_msgs/Float32 b 
std_msgs/Float32 c 
std_msgs/Float32 d 
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: lidar/EndPoints
Point2f start 
Point2f end 

================================================================================
MSG: lidar/Point2f
std_msgs/Float32 x 
std_msgs/Float32 y 

")



(provide :lidar/RoadEdge "18d874dc862d1be92aa83f7d5c965158")


