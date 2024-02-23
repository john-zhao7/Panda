;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::RadarStateInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'RadarStateInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::RADARSTATEINTERFACE")
  (make-package "CAR_INTERFACES::RADARSTATEINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude RadarStateInterface.msg.html


(defclass car_interfaces::RadarStateInterface
  :super ros::object
  :slots (_timestamp _id _state _error ))

(defmethod car_interfaces::RadarStateInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:state __state) 0)
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _state (round __state))
   (setq _error (round __error))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; uint8 _id
    1
    ;; uint8 _state
    1
    ;; uint8 _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get car_interfaces::RadarStateInterface :md5sum-) "734c36f80e5d087b16b7faf91834343f")
(setf (get car_interfaces::RadarStateInterface :datatype-) "car_interfaces/RadarStateInterface")
(setf (get car_interfaces::RadarStateInterface :definition-)
      "float64  timestamp  #时间戳
uint8  id   # 毫米波雷达ID
uint8  state          # 设备状态，0：状态正常，1：状态异常
uint8  error          # 错误码；1:通信错误，2:内部错误，3:阻塞错误，4:过热错误
")



(provide :car_interfaces/RadarStateInterface "734c36f80e5d087b16b7faf91834343f")


