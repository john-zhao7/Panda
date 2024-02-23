;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::NetStartEndPointInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'NetStartEndPointInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::NETSTARTENDPOINTINTERFACE")
  (make-package "CAR_INTERFACES::NETSTARTENDPOINTINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude NetStartEndPointInterface.msg.html


(defclass car_interfaces::NetStartEndPointInterface
  :super ros::object
  :slots (_timestamp _pointA_SN _pointB_EN _pointC_SE _pointD_SW _process_time ))

(defmethod car_interfaces::NetStartEndPointInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:pointA_SN __pointA_SN) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pointB_EN __pointB_EN) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pointC_SE __pointC_SE) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pointD_SW __pointD_SW) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:process_time __process_time) 0.0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _pointA_SN __pointA_SN)
   (setq _pointB_EN __pointB_EN)
   (setq _pointC_SE __pointC_SE)
   (setq _pointD_SW __pointD_SW)
   (setq _process_time (float __process_time))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:pointA_SN
   (&optional __pointA_SN)
   (if __pointA_SN (setq _pointA_SN __pointA_SN)) _pointA_SN)
  (:pointB_EN
   (&optional __pointB_EN)
   (if __pointB_EN (setq _pointB_EN __pointB_EN)) _pointB_EN)
  (:pointC_SE
   (&optional __pointC_SE)
   (if __pointC_SE (setq _pointC_SE __pointC_SE)) _pointC_SE)
  (:pointD_SW
   (&optional __pointD_SW)
   (if __pointD_SW (setq _pointD_SW __pointD_SW)) _pointD_SW)
  (:process_time
   (&optional __process_time)
   (if __process_time (setq _process_time __process_time)) _process_time)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; float32[] _pointA_SN
    (* 4    (length _pointA_SN)) 4
    ;; float32[] _pointB_EN
    (* 4    (length _pointB_EN)) 4
    ;; float32[] _pointC_SE
    (* 4    (length _pointC_SE)) 4
    ;; float32[] _pointD_SW
    (* 4    (length _pointD_SW)) 4
    ;; float32 _process_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32[] _pointA_SN
     (write-long (length _pointA_SN) s)
     (dotimes (i (length _pointA_SN))
       (sys::poke (elt _pointA_SN i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pointB_EN
     (write-long (length _pointB_EN) s)
     (dotimes (i (length _pointB_EN))
       (sys::poke (elt _pointB_EN i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pointC_SE
     (write-long (length _pointC_SE) s)
     (dotimes (i (length _pointC_SE))
       (sys::poke (elt _pointC_SE i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pointD_SW
     (write-long (length _pointD_SW) s)
     (dotimes (i (length _pointD_SW))
       (sys::poke (elt _pointD_SW i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _process_time
       (sys::poke _process_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32[] _pointA_SN
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointA_SN (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pointA_SN i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pointB_EN
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointB_EN (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pointB_EN i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pointC_SE
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointC_SE (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pointC_SE i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pointD_SW
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointD_SW (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pointD_SW i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::NetStartEndPointInterface :md5sum-) "61c44c5d3d9ddb9029d88dfec0d60221")
(setf (get car_interfaces::NetStartEndPointInterface :datatype-) "car_interfaces/NetStartEndPointInterface")
(setf (get car_interfaces::NetStartEndPointInterface :definition-)
      "# 路径规划两点网络输入模块
# float64  timestamp  #时间戳
# float32[]  startpoint   #起点位置，先经后纬
# float32[]   endpoint    #终点位置，先经后纬
# float32  process_time    # 进程处理时间
# 路径规划起四点网络输入模块
float64  timestamp  #时间戳
float32[]  pointA_SN   #西北角位置，先经后纬
float32[]  pointB_EN   #东北角位置，先经后纬
float32[]  pointC_SE   #东南角位置，先经后纬
float32[]  pointD_SW   #西南角位置，先经后纬
float32  process_time    # 进程处理时间
")



(provide :car_interfaces/NetStartEndPointInterface "61c44c5d3d9ddb9029d88dfec0d60221")


