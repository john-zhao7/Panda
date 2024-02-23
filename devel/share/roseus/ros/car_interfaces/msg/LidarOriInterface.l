;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::LidarOriInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'LidarOriInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::LIDARORIINTERFACE")
  (make-package "CAR_INTERFACES::LIDARORIINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude LidarOriInterface.msg.html


(defclass car_interfaces::LidarOriInterface
  :super ros::object
  :slots (_state ))

(defmethod car_interfaces::LidarOriInterface
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get car_interfaces::LidarOriInterface :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get car_interfaces::LidarOriInterface :datatype-) "car_interfaces/LidarOriInterface")
(setf (get car_interfaces::LidarOriInterface :definition-)
      "bool state

")



(provide :car_interfaces/LidarOriInterface "001fde3cab9e313a150416ff09c08ee4")


