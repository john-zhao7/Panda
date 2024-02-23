;; Auto-generated. Do not edit!


(when (boundp 'hmi::FaultDiagnosisInterface)
  (if (not (find-package "HMI"))
    (make-package "HMI"))
  (shadow 'FaultDiagnosisInterface (find-package "HMI")))
(unless (find-package "HMI::FAULTDIAGNOSISINTERFACE")
  (make-package "HMI::FAULTDIAGNOSISINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude FaultDiagnosisInterface.msg.html


(defclass hmi::FaultDiagnosisInterface
  :super ros::object
  :slots (_lidar_start _Gps_state_fault _can_state ))

(defmethod hmi::FaultDiagnosisInterface
  (:init
   (&key
    ((:lidar_start __lidar_start) 0)
    ((:Gps_state_fault __Gps_state_fault) nil)
    ((:can_state __can_state) nil)
    )
   (send-super :init)
   (setq _lidar_start (round __lidar_start))
   (setq _Gps_state_fault __Gps_state_fault)
   (setq _can_state __can_state)
   self)
  (:lidar_start
   (&optional __lidar_start)
   (if __lidar_start (setq _lidar_start __lidar_start)) _lidar_start)
  (:Gps_state_fault
   (&optional (__Gps_state_fault :null))
   (if (not (eq __Gps_state_fault :null)) (setq _Gps_state_fault __Gps_state_fault)) _Gps_state_fault)
  (:can_state
   (&optional (__can_state :null))
   (if (not (eq __can_state :null)) (setq _can_state __can_state)) _can_state)
  (:serialization-length
   ()
   (+
    ;; int8 _lidar_start
    1
    ;; bool _Gps_state_fault
    1
    ;; bool _can_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _lidar_start
       (write-byte _lidar_start s)
     ;; bool _Gps_state_fault
       (if _Gps_state_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_state
       (if _can_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _lidar_start
     (setq _lidar_start (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lidar_start 127) (setq _lidar_start (- _lidar_start 256)))
   ;; bool _Gps_state_fault
     (setq _Gps_state_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_state
     (setq _can_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hmi::FaultDiagnosisInterface :md5sum-) "ecaf07b9d1233a61400449644874e137")
(setf (get hmi::FaultDiagnosisInterface :datatype-) "hmi/FaultDiagnosisInterface")
(setf (get hmi::FaultDiagnosisInterface :definition-)
      "int8 lidar_start        #0-未启动 1-启动
bool Gps_state_fault    #惯导通讯故障 False：异常；True：正常
bool can_state          #can通信故障False：异常；True：正常


")



(provide :hmi/FaultDiagnosisInterface "ecaf07b9d1233a61400449644874e137")


