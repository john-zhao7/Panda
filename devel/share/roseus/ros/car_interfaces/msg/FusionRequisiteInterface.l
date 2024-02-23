;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::FusionRequisiteInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'FusionRequisiteInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::FUSIONREQUISITEINTERFACE")
  (make-package "CAR_INTERFACES::FUSIONREQUISITEINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude FusionRequisiteInterface.msg.html


(defclass car_interfaces::FusionRequisiteInterface
  :super ros::object
  :slots (_timestamp _id _centeroffset _signnumber _signdata _lightdata _obstacledata _longitude _latitude _height _posX _posY _posZ _yaw _pitch _roll _eastvelocity _northvelocity _skyvelocity _carspeed ))

(defmethod car_interfaces::FusionRequisiteInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:centeroffset __centeroffset) 0.0)
    ((:signnumber __signnumber) 0)
    ((:signdata __signdata) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lightdata __lightdata) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obstacledata __obstacledata) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:height __height) 0.0)
    ((:posX __posX) 0.0)
    ((:posY __posY) 0.0)
    ((:posZ __posZ) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:eastvelocity __eastvelocity) 0.0)
    ((:northvelocity __northvelocity) 0.0)
    ((:skyvelocity __skyvelocity) 0.0)
    ((:carspeed __carspeed) 0.0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _centeroffset (float __centeroffset))
   (setq _signnumber (round __signnumber))
   (setq _signdata __signdata)
   (setq _lightdata __lightdata)
   (setq _obstacledata __obstacledata)
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _height (float __height))
   (setq _posX (float __posX))
   (setq _posY (float __posY))
   (setq _posZ (float __posZ))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _eastvelocity (float __eastvelocity))
   (setq _northvelocity (float __northvelocity))
   (setq _skyvelocity (float __skyvelocity))
   (setq _carspeed (float __carspeed))
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
  (:signnumber
   (&optional __signnumber)
   (if __signnumber (setq _signnumber __signnumber)) _signnumber)
  (:signdata
   (&optional __signdata)
   (if __signdata (setq _signdata __signdata)) _signdata)
  (:lightdata
   (&optional __lightdata)
   (if __lightdata (setq _lightdata __lightdata)) _lightdata)
  (:obstacledata
   (&optional __obstacledata)
   (if __obstacledata (setq _obstacledata __obstacledata)) _obstacledata)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:posX
   (&optional __posX)
   (if __posX (setq _posX __posX)) _posX)
  (:posY
   (&optional __posY)
   (if __posY (setq _posY __posY)) _posY)
  (:posZ
   (&optional __posZ)
   (if __posZ (setq _posZ __posZ)) _posZ)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:eastvelocity
   (&optional __eastvelocity)
   (if __eastvelocity (setq _eastvelocity __eastvelocity)) _eastvelocity)
  (:northvelocity
   (&optional __northvelocity)
   (if __northvelocity (setq _northvelocity __northvelocity)) _northvelocity)
  (:skyvelocity
   (&optional __skyvelocity)
   (if __skyvelocity (setq _skyvelocity __skyvelocity)) _skyvelocity)
  (:carspeed
   (&optional __carspeed)
   (if __carspeed (setq _carspeed __carspeed)) _carspeed)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; uint8 _id
    1
    ;; float32 _centeroffset
    4
    ;; uint8 _signnumber
    1
    ;; float32[] _signdata
    (* 4    (length _signdata)) 4
    ;; float32[] _lightdata
    (* 4    (length _lightdata)) 4
    ;; float32[] _obstacledata
    (* 4    (length _obstacledata)) 4
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; float64 _height
    8
    ;; float64 _posX
    8
    ;; float64 _posY
    8
    ;; float64 _posZ
    8
    ;; float32 _yaw
    4
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; float32 _eastvelocity
    4
    ;; float32 _northvelocity
    4
    ;; float32 _skyvelocity
    4
    ;; float32 _carspeed
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
     ;; uint8 _signnumber
       (write-byte _signnumber s)
     ;; float32[] _signdata
     (write-long (length _signdata) s)
     (dotimes (i (length _signdata))
       (sys::poke (elt _signdata i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _lightdata
     (write-long (length _lightdata) s)
     (dotimes (i (length _lightdata))
       (sys::poke (elt _lightdata i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _obstacledata
     (write-long (length _obstacledata) s)
     (dotimes (i (length _obstacledata))
       (sys::poke (elt _obstacledata i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posX
       (sys::poke _posX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posY
       (sys::poke _posY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posZ
       (sys::poke _posZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eastvelocity
       (sys::poke _eastvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _northvelocity
       (sys::poke _northvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _skyvelocity
       (sys::poke _skyvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _carspeed
       (sys::poke _carspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint8 _signnumber
     (setq _signnumber (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _signdata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signdata (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _signdata i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _lightdata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lightdata (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lightdata i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _obstacledata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacledata (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obstacledata i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posX
     (setq _posX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posY
     (setq _posY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posZ
     (setq _posZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eastvelocity
     (setq _eastvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _northvelocity
     (setq _northvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _skyvelocity
     (setq _skyvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _carspeed
     (setq _carspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::FusionRequisiteInterface :md5sum-) "298ab3582625b62ae48e8a406af731df")
(setf (get car_interfaces::FusionRequisiteInterface :datatype-) "car_interfaces/FusionRequisiteInterface")
(setf (get car_interfaces::FusionRequisiteInterface :definition-)
      "float64  timestamp  #时间戳
uint8  id   # 车辆ID
float32  centeroffset     # 车道中心线偏移距离，默认0
uint8  signnumber  #交通标识数量
float32[]  signdata  #交通标志数据
float32[]  lightdata  # 红绿灯数据
float32[]  obstacledata  #障碍物数据
float64  longitude        # 经度
float64  latitude         # 纬度
float64  height         # 高度
float64 posX                           #定位点UTM坐标x
float64 posY                           #定位点UTM坐标y
float64 posZ                           #定位点UTM坐标z
float32  yaw         # 偏航角（-180,180）
float32  pitch        # 俯仰角（-90-90）
float32  roll         # 横滚角（-180-180）
float32  eastvelocity         # 东向速度
float32  northvelocity        # 北向速度
float32  skyvelocity         # 天向速度
float32  carspeed    # 车辆速度，单位为m/s


")



(provide :car_interfaces/FusionRequisiteInterface "298ab3582625b62ae48e8a406af731df")


