;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::RadarObstacleInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'RadarObstacleInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::RADAROBSTACLEINTERFACE")
  (make-package "CAR_INTERFACES::RADAROBSTACLEINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude RadarObstacleInterface.msg.html


(defclass car_interfaces::RadarObstacleInterface
  :super ros::object
  :slots (_timestamp _id _number _obstacledata _process_time ))

(defmethod car_interfaces::RadarObstacleInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:number __number) 0)
    ((:obstacledata __obstacledata) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:process_time __process_time) 0.0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _number (round __number))
   (setq _obstacledata __obstacledata)
   (setq _process_time (float __process_time))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:obstacledata
   (&optional __obstacledata)
   (if __obstacledata (setq _obstacledata __obstacledata)) _obstacledata)
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
    ;; uint16 _number
    2
    ;; float32[] _obstacledata
    (* 4    (length _obstacledata)) 4
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
     ;; uint16 _number
       (write-word _number s)
     ;; float32[] _obstacledata
     (write-long (length _obstacledata) s)
     (dotimes (i (length _obstacledata))
       (sys::poke (elt _obstacledata i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; uint16 _number
     (setq _number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32[] _obstacledata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacledata (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obstacledata i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::RadarObstacleInterface :md5sum-) "d72c4e0d3fc62d79de85a43eb6d4cf59")
(setf (get car_interfaces::RadarObstacleInterface :datatype-) "car_interfaces/RadarObstacleInterface")
(setf (get car_interfaces::RadarObstacleInterface :definition-)
      "float64  timestamp  #时间戳
uint8  id  # 毫米波雷达ID
uint16  number  #障碍物数量
float32[]  obstacledata  #障碍物数据
float32  process_time    # 进程处理时间
#其中obstacledata格式float32[]为一维数组，储存按照[x  ,y  ,z  ,v  , x ,y ,z ,v ,latv ,……]存储49个长度数据为一组
# float  length       # 障碍物长度m，精度为0.01
# float  width       # 障碍物宽度m，精度为0.01
# float  height       # 障碍物高度m，精度为0.01
# float  x     # 障碍物的x坐标[米]，精度为0.01
# float  y   # 障碍物的y坐标[米]，精度为0.01
# float  z    # 障碍物的z坐标[米]，精度为0.01
# float  v=0    # 障碍物径向速度m/s，精度为0.01
# float  latv=0  # 障碍物的横向速度m/s，精度为0.01
")



(provide :car_interfaces/RadarObstacleInterface "d72c4e0d3fc62d79de85a43eb6d4cf59")


