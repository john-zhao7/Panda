;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::VehOperatingStateInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'VehOperatingStateInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::VEHOPERATINGSTATEINTERFACE")
  (make-package "CAR_INTERFACES::VEHOPERATINGSTATEINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude VehOperatingStateInterface.msg.html


(defclass car_interfaces::VehOperatingStateInterface
  :super ros::object
  :slots (_timestamp _VehOperat_Status _process_time ))

(defmethod car_interfaces::VehOperatingStateInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:VehOperat_Status __VehOperat_Status) 0)
    ((:process_time __process_time) 0.0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _VehOperat_Status (round __VehOperat_Status))
   (setq _process_time (float __process_time))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:VehOperat_Status
   (&optional __VehOperat_Status)
   (if __VehOperat_Status (setq _VehOperat_Status __VehOperat_Status)) _VehOperat_Status)
  (:process_time
   (&optional __process_time)
   (if __process_time (setq _process_time __process_time)) _process_time)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; int8 _VehOperat_Status
    1
    ;; float32 _process_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _VehOperat_Status
       (write-byte _VehOperat_Status s)
     ;; float32 _process_time
       (sys::poke _process_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _VehOperat_Status
     (setq _VehOperat_Status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _VehOperat_Status 127) (setq _VehOperat_Status (- _VehOperat_Status 256)))
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::VehOperatingStateInterface :md5sum-) "04f41a0b98d40a7eebbc487cf38ee657")
(setf (get car_interfaces::VehOperatingStateInterface :datatype-) "car_interfaces/VehOperatingStateInterface")
(setf (get car_interfaces::VehOperatingStateInterface :definition-)
      "float64  timestamp  # 数据帧时间戳
int8 VehOperat_Status #  1 - 人工驾驶;2 - 上电自检; 3 - 车辆起步; 4 - 进入棉田; 5 - 开始采棉; 6-暂停工作; 7- 卸载棉花;8-完工收车
float32  process_time    # 进程处理时间
")



(provide :car_interfaces/VehOperatingStateInterface "04f41a0b98d40a7eebbc487cf38ee657")


