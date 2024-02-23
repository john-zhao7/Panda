;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::PathSpeedCtrlInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'PathSpeedCtrlInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::PATHSPEEDCTRLINTERFACE")
  (make-package "CAR_INTERFACES::PATHSPEEDCTRLINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude PathSpeedCtrlInterface.msg.html


(defclass car_interfaces::PathSpeedCtrlInterface
  :super ros::object
  :slots (_timestamp _Target_velocity _Target_steering_angle _Target_gear _Target_primary_gear _Target_EngineSpeedLevel _Target_speedlever_percentage _Target_Torque_Nm _Target_braking_percentage _NearestPoint_Car2Path _Cotton_Bin_Ctrl _CTE _dHead _brake_enable _value_brake _flag _raw_control _kappa ))

(defmethod car_interfaces::PathSpeedCtrlInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:Target_velocity __Target_velocity) 0.0)
    ((:Target_steering_angle __Target_steering_angle) 0.0)
    ((:Target_gear __Target_gear) 0)
    ((:Target_primary_gear __Target_primary_gear) 0)
    ((:Target_EngineSpeedLevel __Target_EngineSpeedLevel) 0)
    ((:Target_speedlever_percentage __Target_speedlever_percentage) 0.0)
    ((:Target_Torque_Nm __Target_Torque_Nm) 0.0)
    ((:Target_braking_percentage __Target_braking_percentage) 0)
    ((:NearestPoint_Car2Path __NearestPoint_Car2Path) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Cotton_Bin_Ctrl __Cotton_Bin_Ctrl) 0)
    ((:CTE __CTE) 0.0)
    ((:dHead __dHead) 0.0)
    ((:brake_enable __brake_enable) 0.0)
    ((:value_brake __value_brake) 0.0)
    ((:flag __flag) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:raw_control __raw_control) 0.0)
    ((:kappa __kappa) 0.0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _Target_velocity (float __Target_velocity))
   (setq _Target_steering_angle (float __Target_steering_angle))
   (setq _Target_gear (round __Target_gear))
   (setq _Target_primary_gear (round __Target_primary_gear))
   (setq _Target_EngineSpeedLevel (round __Target_EngineSpeedLevel))
   (setq _Target_speedlever_percentage (float __Target_speedlever_percentage))
   (setq _Target_Torque_Nm (float __Target_Torque_Nm))
   (setq _Target_braking_percentage (round __Target_braking_percentage))
   (setq _NearestPoint_Car2Path __NearestPoint_Car2Path)
   (setq _Cotton_Bin_Ctrl (round __Cotton_Bin_Ctrl))
   (setq _CTE (float __CTE))
   (setq _dHead (float __dHead))
   (setq _brake_enable (float __brake_enable))
   (setq _value_brake (float __value_brake))
   (setq _flag __flag)
   (setq _raw_control (float __raw_control))
   (setq _kappa (float __kappa))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:Target_velocity
   (&optional __Target_velocity)
   (if __Target_velocity (setq _Target_velocity __Target_velocity)) _Target_velocity)
  (:Target_steering_angle
   (&optional __Target_steering_angle)
   (if __Target_steering_angle (setq _Target_steering_angle __Target_steering_angle)) _Target_steering_angle)
  (:Target_gear
   (&optional __Target_gear)
   (if __Target_gear (setq _Target_gear __Target_gear)) _Target_gear)
  (:Target_primary_gear
   (&optional __Target_primary_gear)
   (if __Target_primary_gear (setq _Target_primary_gear __Target_primary_gear)) _Target_primary_gear)
  (:Target_EngineSpeedLevel
   (&optional __Target_EngineSpeedLevel)
   (if __Target_EngineSpeedLevel (setq _Target_EngineSpeedLevel __Target_EngineSpeedLevel)) _Target_EngineSpeedLevel)
  (:Target_speedlever_percentage
   (&optional __Target_speedlever_percentage)
   (if __Target_speedlever_percentage (setq _Target_speedlever_percentage __Target_speedlever_percentage)) _Target_speedlever_percentage)
  (:Target_Torque_Nm
   (&optional __Target_Torque_Nm)
   (if __Target_Torque_Nm (setq _Target_Torque_Nm __Target_Torque_Nm)) _Target_Torque_Nm)
  (:Target_braking_percentage
   (&optional __Target_braking_percentage)
   (if __Target_braking_percentage (setq _Target_braking_percentage __Target_braking_percentage)) _Target_braking_percentage)
  (:NearestPoint_Car2Path
   (&optional __NearestPoint_Car2Path)
   (if __NearestPoint_Car2Path (setq _NearestPoint_Car2Path __NearestPoint_Car2Path)) _NearestPoint_Car2Path)
  (:Cotton_Bin_Ctrl
   (&optional __Cotton_Bin_Ctrl)
   (if __Cotton_Bin_Ctrl (setq _Cotton_Bin_Ctrl __Cotton_Bin_Ctrl)) _Cotton_Bin_Ctrl)
  (:CTE
   (&optional __CTE)
   (if __CTE (setq _CTE __CTE)) _CTE)
  (:dHead
   (&optional __dHead)
   (if __dHead (setq _dHead __dHead)) _dHead)
  (:brake_enable
   (&optional __brake_enable)
   (if __brake_enable (setq _brake_enable __brake_enable)) _brake_enable)
  (:value_brake
   (&optional __value_brake)
   (if __value_brake (setq _value_brake __value_brake)) _value_brake)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:raw_control
   (&optional __raw_control)
   (if __raw_control (setq _raw_control __raw_control)) _raw_control)
  (:kappa
   (&optional __kappa)
   (if __kappa (setq _kappa __kappa)) _kappa)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; float32 _Target_velocity
    4
    ;; float32 _Target_steering_angle
    4
    ;; uint8 _Target_gear
    1
    ;; uint8 _Target_primary_gear
    1
    ;; uint8 _Target_EngineSpeedLevel
    1
    ;; float32 _Target_speedlever_percentage
    4
    ;; float32 _Target_Torque_Nm
    4
    ;; uint8 _Target_braking_percentage
    1
    ;; float32[] _NearestPoint_Car2Path
    (* 4    (length _NearestPoint_Car2Path)) 4
    ;; int8 _Cotton_Bin_Ctrl
    1
    ;; float32 _CTE
    4
    ;; float32 _dHead
    4
    ;; float32 _brake_enable
    4
    ;; float32 _value_brake
    4
    ;; float32[] _flag
    (* 4    (length _flag)) 4
    ;; float32 _raw_control
    4
    ;; float32 _kappa
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _Target_velocity
       (sys::poke _Target_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Target_steering_angle
       (sys::poke _Target_steering_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _Target_gear
       (write-byte _Target_gear s)
     ;; uint8 _Target_primary_gear
       (write-byte _Target_primary_gear s)
     ;; uint8 _Target_EngineSpeedLevel
       (write-byte _Target_EngineSpeedLevel s)
     ;; float32 _Target_speedlever_percentage
       (sys::poke _Target_speedlever_percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Target_Torque_Nm
       (sys::poke _Target_Torque_Nm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _Target_braking_percentage
       (write-byte _Target_braking_percentage s)
     ;; float32[] _NearestPoint_Car2Path
     (write-long (length _NearestPoint_Car2Path) s)
     (dotimes (i (length _NearestPoint_Car2Path))
       (sys::poke (elt _NearestPoint_Car2Path i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8 _Cotton_Bin_Ctrl
       (write-byte _Cotton_Bin_Ctrl s)
     ;; float32 _CTE
       (sys::poke _CTE (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dHead
       (sys::poke _dHead (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake_enable
       (sys::poke _brake_enable (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _value_brake
       (sys::poke _value_brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _flag
     (write-long (length _flag) s)
     (dotimes (i (length _flag))
       (sys::poke (elt _flag i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _raw_control
       (sys::poke _raw_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kappa
       (sys::poke _kappa (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _Target_velocity
     (setq _Target_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Target_steering_angle
     (setq _Target_steering_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _Target_gear
     (setq _Target_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Target_primary_gear
     (setq _Target_primary_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Target_EngineSpeedLevel
     (setq _Target_EngineSpeedLevel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _Target_speedlever_percentage
     (setq _Target_speedlever_percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Target_Torque_Nm
     (setq _Target_Torque_Nm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _Target_braking_percentage
     (setq _Target_braking_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _NearestPoint_Car2Path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _NearestPoint_Car2Path (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _NearestPoint_Car2Path i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int8 _Cotton_Bin_Ctrl
     (setq _Cotton_Bin_Ctrl (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cotton_Bin_Ctrl 127) (setq _Cotton_Bin_Ctrl (- _Cotton_Bin_Ctrl 256)))
   ;; float32 _CTE
     (setq _CTE (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dHead
     (setq _dHead (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake_enable
     (setq _brake_enable (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _value_brake
     (setq _value_brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _flag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flag (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _flag i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _raw_control
     (setq _raw_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kappa
     (setq _kappa (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::PathSpeedCtrlInterface :md5sum-) "a552e8162979c20b671aaee207815dbe")
(setf (get car_interfaces::PathSpeedCtrlInterface :datatype-) "car_interfaces/PathSpeedCtrlInterface")
(setf (get car_interfaces::PathSpeedCtrlInterface :definition-)
      "float64  timestamp         # 数据帧时间戳
float32  Target_velocity    # 车辆速度m/s
float32  Target_steering_angle    # 车辆转角，方向盘转角 
uint8  Target_gear   # 01：驻车；02：空挡（N）；03：前进（D）；04：后退（R）；05：无效；
uint8  Target_primary_gear   # 01：低速，02：中速；03：高速；
uint8  Target_EngineSpeedLevel   # 01：低速；02：中速；03：高速；
float32  Target_speedlever_percentage   #车速手柄（采棉机）开度（-1000-1000）   对应【-100%, 100%】，负数为后退，正数为前进。
float32  Target_Torque_Nm   #目标驱动扭矩（单位：Nm，没有则给0）。
uint8  Target_braking_percentage   #制动行程请求，最大行程点125，最小行程点为0，单位为个（当前将行程分成125个点）
float32[] NearestPoint_Car2Path  # 反馈当前车辆位置距离规划的局部路径的最近点，包括：
# float   longitude        # 途径点经度（东向坐标，单位为：m）
# float   latitude         # 途径点纬度（北向坐标，单位为：m）
# float   speed         # 途径点速度（单位：m/s）


# add cyun 8.1
int8 Cotton_Bin_Ctrl #棉线动作使能


# add cyun 8.21
float32 CTE
float32 dHead

# add cyun 8.30
float32 brake_enable  #刹车使能
float32 value_brake   #刹车量

# add cyun 8.31
float32[]  flag # 标志位，控制给线控，表明发送成功


float32 raw_control # 


float32 kappa #采棉时转弯，提采头的判断
")



(provide :car_interfaces/PathSpeedCtrlInterface "a552e8162979c20b671aaee207815dbe")

