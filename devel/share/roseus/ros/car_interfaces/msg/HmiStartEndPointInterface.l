;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::HmiStartEndPointInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'HmiStartEndPointInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::HMISTARTENDPOINTINTERFACE")
  (make-package "CAR_INTERFACES::HMISTARTENDPOINTINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude HmiStartEndPointInterface.msg.html


(defclass car_interfaces::HmiStartEndPointInterface
  :super ros::object
  :slots (_flag _roadid _stationid ))

(defmethod car_interfaces::HmiStartEndPointInterface
  (:init
   (&key
    ((:flag __flag) 0)
    ((:roadid __roadid) 0)
    ((:stationid __stationid) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   (setq _roadid (round __roadid))
   (setq _stationid (round __stationid))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:roadid
   (&optional __roadid)
   (if __roadid (setq _roadid __roadid)) _roadid)
  (:stationid
   (&optional __stationid)
   (if __stationid (setq _stationid __stationid)) _stationid)
  (:serialization-length
   ()
   (+
    ;; int8 _flag
    1
    ;; int32 _roadid
    4
    ;; int32 _stationid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _flag
       (write-byte _flag s)
     ;; int32 _roadid
       (write-long _roadid s)
     ;; int32 _stationid
       (write-long _stationid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _flag 127) (setq _flag (- _flag 256)))
   ;; int32 _roadid
     (setq _roadid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _stationid
     (setq _stationid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::HmiStartEndPointInterface :md5sum-) "764c8e13d4a4b0d9d9bdd7520da5ffd7")
(setf (get car_interfaces::HmiStartEndPointInterface :datatype-) "car_interfaces/HmiStartEndPointInterface")
(setf (get car_interfaces::HmiStartEndPointInterface :definition-)
      "int8 flag                       #标志位
int32 roadid                     #界面重启
int32 stationid 		 #紧急停车按钮

")



(provide :car_interfaces/HmiStartEndPointInterface "764c8e13d4a4b0d9d9bdd7520da5ffd7")


