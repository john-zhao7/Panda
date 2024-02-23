;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::LaneRecognitionInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'LaneRecognitionInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::LANERECOGNITIONINTERFACE")
  (make-package "CAR_INTERFACES::LANERECOGNITIONINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude LaneRecognitionInterface.msg.html


(defclass car_interfaces::LaneRecognitionInterface
  :super ros::object
  :slots (_timestamp _id _centeroffset _a0 _a1 _a2 _a3 _process_time ))

(defmethod car_interfaces::LaneRecognitionInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:centeroffset __centeroffset) 0.0)
    ((:a0 __a0) 0.0)
    ((:a1 __a1) 0.0)
    ((:a2 __a2) 0.0)
    ((:a3 __a3) 0.0)
    ((:process_time __process_time) 0.0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _centeroffset (float __centeroffset))
   (setq _a0 (float __a0))
   (setq _a1 (float __a1))
   (setq _a2 (float __a2))
   (setq _a3 (float __a3))
   (setq _process_time (float __process_time))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:centeroffset
   (&optional __centeroffset)
   (if __centeroffset (setq _centeroffset __centeroffset)) _centeroffset)
  (:a0
   (&optional __a0)
   (if __a0 (setq _a0 __a0)) _a0)
  (:a1
   (&optional __a1)
   (if __a1 (setq _a1 __a1)) _a1)
  (:a2
   (&optional __a2)
   (if __a2 (setq _a2 __a2)) _a2)
  (:a3
   (&optional __a3)
   (if __a3 (setq _a3 __a3)) _a3)
  (:process_time
   (&optional __process_time)
   (if __process_time (setq _process_time __process_time)) _process_time)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; uint8 _id
    1
    ;; float32 _centeroffset
    4
    ;; float32 _a0
    4
    ;; float32 _a1
    4
    ;; float32 _a2
    4
    ;; float32 _a3
    4
    ;; float32 _process_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _centeroffset
       (sys::poke _centeroffset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a0
       (sys::poke _a0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a1
       (sys::poke _a1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a2
       (sys::poke _a2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a3
       (sys::poke _a3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _process_time
       (sys::poke _process_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _centeroffset
     (setq _centeroffset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a0
     (setq _a0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a1
     (setq _a1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a2
     (setq _a2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a3
     (setq _a3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::LaneRecognitionInterface :md5sum-) "591a0ed90f206f06a64e5af5b01b3f9e")
(setf (get car_interfaces::LaneRecognitionInterface :datatype-) "car_interfaces/LaneRecognitionInterface")
(setf (get car_interfaces::LaneRecognitionInterface :definition-)
      "float64  timestamp  #时间戳
uint8  id  # 摄像头ID
float32  centeroffset     # 车辆相对于车道中心线偏移的距离，默认0
float32  a0     # 左侧车道中心线的表达式：y = a0+a1*x+ a2*x^2+a3*x^3；
float32  a1     # 左侧车道中心线的表达式：y = a0+a1*x+ a2*x^2+a3*x^3；
float32  a2     # 左侧车道中心线的表达式：y = a0+a1*x+ a2*x^2+a3*x^3；
float32  a3     # 左侧车道中心线的表达式：y = a0+a1*x+ a2*x^2+a3*x^3；sensor_msgs/Image  resultimage     # 融合后的车道线识别图像
float32  process_time    # 进程处理时间



")



(provide :car_interfaces/LaneRecognitionInterface "591a0ed90f206f06a64e5af5b01b3f9e")


