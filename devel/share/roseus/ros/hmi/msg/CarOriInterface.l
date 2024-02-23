;; Auto-generated. Do not edit!


(when (boundp 'hmi::CarOriInterface)
  (if (not (find-package "HMI"))
    (make-package "HMI"))
  (shadow 'CarOriInterface (find-package "HMI")))
(unless (find-package "HMI::CARORIINTERFACE")
  (make-package "HMI::CARORIINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude CarOriInterface.msg.html


(defclass hmi::CarOriInterface
  :super ros::object
  :slots (_timestamp _id _auto_enable _carspeed _steerangle _current_angle _gearpos _brake_pressure_request _brake_enable _current_braking_percentage _soc _batteryvol _batterydischargecur _car_run_mode _throttle_percentage _left_light _right_light _reversing_light _speaker _start_button _stop_button _state _error _cotton_picker_fan_Enabler_act _cotton_bin_upper_act _cotton_bin_lower_act _cotton_bin_tilting_act _cotton_bin_restore_act _cotton_unload_act _cotton_picker_head_height _Target_primary_gear_act _Target_EngineSpeedLevel_act _Target_speedlever_percentage_act _process_time _raw_controlled _wait_wirectrl ))

(defmethod hmi::CarOriInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:auto_enable __auto_enable) 0)
    ((:carspeed __carspeed) 0.0)
    ((:steerangle __steerangle) 0.0)
    ((:current_angle __current_angle) 0.0)
    ((:gearpos __gearpos) 0)
    ((:brake_pressure_request __brake_pressure_request) 0.0)
    ((:brake_enable __brake_enable) 0)
    ((:current_braking_percentage __current_braking_percentage) 0)
    ((:soc __soc) 0)
    ((:batteryvol __batteryvol) 0)
    ((:batterydischargecur __batterydischargecur) 0)
    ((:car_run_mode __car_run_mode) 0)
    ((:throttle_percentage __throttle_percentage) 0)
    ((:left_light __left_light) 0)
    ((:right_light __right_light) 0)
    ((:reversing_light __reversing_light) 0)
    ((:speaker __speaker) 0)
    ((:start_button __start_button) 0)
    ((:stop_button __stop_button) 0)
    ((:state __state) 0)
    ((:error __error) 0)
    ((:cotton_picker_fan_Enabler_act __cotton_picker_fan_Enabler_act) 0.0)
    ((:cotton_bin_upper_act __cotton_bin_upper_act) 0.0)
    ((:cotton_bin_lower_act __cotton_bin_lower_act) 0)
    ((:cotton_bin_tilting_act __cotton_bin_tilting_act) 0)
    ((:cotton_bin_restore_act __cotton_bin_restore_act) 0)
    ((:cotton_unload_act __cotton_unload_act) 0)
    ((:cotton_picker_head_height __cotton_picker_head_height) 0.0)
    ((:Target_primary_gear_act __Target_primary_gear_act) 0)
    ((:Target_EngineSpeedLevel_act __Target_EngineSpeedLevel_act) 0)
    ((:Target_speedlever_percentage_act __Target_speedlever_percentage_act) 0)
    ((:process_time __process_time) 0.0)
    ((:raw_controlled __raw_controlled) 0.0)
    ((:wait_wirectrl __wait_wirectrl) 0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _auto_enable (round __auto_enable))
   (setq _carspeed (float __carspeed))
   (setq _steerangle (float __steerangle))
   (setq _current_angle (float __current_angle))
   (setq _gearpos (round __gearpos))
   (setq _brake_pressure_request (float __brake_pressure_request))
   (setq _brake_enable (round __brake_enable))
   (setq _current_braking_percentage (round __current_braking_percentage))
   (setq _soc (round __soc))
   (setq _batteryvol (round __batteryvol))
   (setq _batterydischargecur (round __batterydischargecur))
   (setq _car_run_mode (round __car_run_mode))
   (setq _throttle_percentage (round __throttle_percentage))
   (setq _left_light (round __left_light))
   (setq _right_light (round __right_light))
   (setq _reversing_light (round __reversing_light))
   (setq _speaker (round __speaker))
   (setq _start_button (round __start_button))
   (setq _stop_button (round __stop_button))
   (setq _state (round __state))
   (setq _error (round __error))
   (setq _cotton_picker_fan_Enabler_act (float __cotton_picker_fan_Enabler_act))
   (setq _cotton_bin_upper_act (float __cotton_bin_upper_act))
   (setq _cotton_bin_lower_act (round __cotton_bin_lower_act))
   (setq _cotton_bin_tilting_act (round __cotton_bin_tilting_act))
   (setq _cotton_bin_restore_act (round __cotton_bin_restore_act))
   (setq _cotton_unload_act (round __cotton_unload_act))
   (setq _cotton_picker_head_height (float __cotton_picker_head_height))
   (setq _Target_primary_gear_act (round __Target_primary_gear_act))
   (setq _Target_EngineSpeedLevel_act (round __Target_EngineSpeedLevel_act))
   (setq _Target_speedlever_percentage_act (round __Target_speedlever_percentage_act))
   (setq _process_time (float __process_time))
   (setq _raw_controlled (float __raw_controlled))
   (setq _wait_wirectrl (round __wait_wirectrl))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:auto_enable
   (&optional __auto_enable)
   (if __auto_enable (setq _auto_enable __auto_enable)) _auto_enable)
  (:carspeed
   (&optional __carspeed)
   (if __carspeed (setq _carspeed __carspeed)) _carspeed)
  (:steerangle
   (&optional __steerangle)
   (if __steerangle (setq _steerangle __steerangle)) _steerangle)
  (:current_angle
   (&optional __current_angle)
   (if __current_angle (setq _current_angle __current_angle)) _current_angle)
  (:gearpos
   (&optional __gearpos)
   (if __gearpos (setq _gearpos __gearpos)) _gearpos)
  (:brake_pressure_request
   (&optional __brake_pressure_request)
   (if __brake_pressure_request (setq _brake_pressure_request __brake_pressure_request)) _brake_pressure_request)
  (:brake_enable
   (&optional __brake_enable)
   (if __brake_enable (setq _brake_enable __brake_enable)) _brake_enable)
  (:current_braking_percentage
   (&optional __current_braking_percentage)
   (if __current_braking_percentage (setq _current_braking_percentage __current_braking_percentage)) _current_braking_percentage)
  (:soc
   (&optional __soc)
   (if __soc (setq _soc __soc)) _soc)
  (:batteryvol
   (&optional __batteryvol)
   (if __batteryvol (setq _batteryvol __batteryvol)) _batteryvol)
  (:batterydischargecur
   (&optional __batterydischargecur)
   (if __batterydischargecur (setq _batterydischargecur __batterydischargecur)) _batterydischargecur)
  (:car_run_mode
   (&optional __car_run_mode)
   (if __car_run_mode (setq _car_run_mode __car_run_mode)) _car_run_mode)
  (:throttle_percentage
   (&optional __throttle_percentage)
   (if __throttle_percentage (setq _throttle_percentage __throttle_percentage)) _throttle_percentage)
  (:left_light
   (&optional __left_light)
   (if __left_light (setq _left_light __left_light)) _left_light)
  (:right_light
   (&optional __right_light)
   (if __right_light (setq _right_light __right_light)) _right_light)
  (:reversing_light
   (&optional __reversing_light)
   (if __reversing_light (setq _reversing_light __reversing_light)) _reversing_light)
  (:speaker
   (&optional __speaker)
   (if __speaker (setq _speaker __speaker)) _speaker)
  (:start_button
   (&optional __start_button)
   (if __start_button (setq _start_button __start_button)) _start_button)
  (:stop_button
   (&optional __stop_button)
   (if __stop_button (setq _stop_button __stop_button)) _stop_button)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:cotton_picker_fan_Enabler_act
   (&optional __cotton_picker_fan_Enabler_act)
   (if __cotton_picker_fan_Enabler_act (setq _cotton_picker_fan_Enabler_act __cotton_picker_fan_Enabler_act)) _cotton_picker_fan_Enabler_act)
  (:cotton_bin_upper_act
   (&optional __cotton_bin_upper_act)
   (if __cotton_bin_upper_act (setq _cotton_bin_upper_act __cotton_bin_upper_act)) _cotton_bin_upper_act)
  (:cotton_bin_lower_act
   (&optional __cotton_bin_lower_act)
   (if __cotton_bin_lower_act (setq _cotton_bin_lower_act __cotton_bin_lower_act)) _cotton_bin_lower_act)
  (:cotton_bin_tilting_act
   (&optional __cotton_bin_tilting_act)
   (if __cotton_bin_tilting_act (setq _cotton_bin_tilting_act __cotton_bin_tilting_act)) _cotton_bin_tilting_act)
  (:cotton_bin_restore_act
   (&optional __cotton_bin_restore_act)
   (if __cotton_bin_restore_act (setq _cotton_bin_restore_act __cotton_bin_restore_act)) _cotton_bin_restore_act)
  (:cotton_unload_act
   (&optional __cotton_unload_act)
   (if __cotton_unload_act (setq _cotton_unload_act __cotton_unload_act)) _cotton_unload_act)
  (:cotton_picker_head_height
   (&optional __cotton_picker_head_height)
   (if __cotton_picker_head_height (setq _cotton_picker_head_height __cotton_picker_head_height)) _cotton_picker_head_height)
  (:Target_primary_gear_act
   (&optional __Target_primary_gear_act)
   (if __Target_primary_gear_act (setq _Target_primary_gear_act __Target_primary_gear_act)) _Target_primary_gear_act)
  (:Target_EngineSpeedLevel_act
   (&optional __Target_EngineSpeedLevel_act)
   (if __Target_EngineSpeedLevel_act (setq _Target_EngineSpeedLevel_act __Target_EngineSpeedLevel_act)) _Target_EngineSpeedLevel_act)
  (:Target_speedlever_percentage_act
   (&optional __Target_speedlever_percentage_act)
   (if __Target_speedlever_percentage_act (setq _Target_speedlever_percentage_act __Target_speedlever_percentage_act)) _Target_speedlever_percentage_act)
  (:process_time
   (&optional __process_time)
   (if __process_time (setq _process_time __process_time)) _process_time)
  (:raw_controlled
   (&optional __raw_controlled)
   (if __raw_controlled (setq _raw_controlled __raw_controlled)) _raw_controlled)
  (:wait_wirectrl
   (&optional __wait_wirectrl)
   (if __wait_wirectrl (setq _wait_wirectrl __wait_wirectrl)) _wait_wirectrl)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; uint8 _id
    1
    ;; uint8 _auto_enable
    1
    ;; float32 _carspeed
    4
    ;; float32 _steerangle
    4
    ;; float32 _current_angle
    4
    ;; int8 _gearpos
    1
    ;; float32 _brake_pressure_request
    4
    ;; uint8 _brake_enable
    1
    ;; uint8 _current_braking_percentage
    1
    ;; uint8 _soc
    1
    ;; uint8 _batteryvol
    1
    ;; uint16 _batterydischargecur
    2
    ;; uint8 _car_run_mode
    1
    ;; int16 _throttle_percentage
    2
    ;; uint8 _left_light
    1
    ;; uint8 _right_light
    1
    ;; uint8 _reversing_light
    1
    ;; uint8 _speaker
    1
    ;; uint8 _start_button
    1
    ;; uint8 _stop_button
    1
    ;; uint8 _state
    1
    ;; uint8 _error
    1
    ;; float32 _cotton_picker_fan_Enabler_act
    4
    ;; float32 _cotton_bin_upper_act
    4
    ;; uint8 _cotton_bin_lower_act
    1
    ;; uint8 _cotton_bin_tilting_act
    1
    ;; uint8 _cotton_bin_restore_act
    1
    ;; uint8 _cotton_unload_act
    1
    ;; float32 _cotton_picker_head_height
    4
    ;; uint8 _Target_primary_gear_act
    1
    ;; uint8 _Target_EngineSpeedLevel_act
    1
    ;; int16 _Target_speedlever_percentage_act
    2
    ;; float32 _process_time
    4
    ;; float32 _raw_controlled
    4
    ;; int8 _wait_wirectrl
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
     ;; uint8 _auto_enable
       (write-byte _auto_enable s)
     ;; float32 _carspeed
       (sys::poke _carspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steerangle
       (sys::poke _steerangle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_angle
       (sys::poke _current_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _gearpos
       (write-byte _gearpos s)
     ;; float32 _brake_pressure_request
       (sys::poke _brake_pressure_request (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _brake_enable
       (write-byte _brake_enable s)
     ;; uint8 _current_braking_percentage
       (write-byte _current_braking_percentage s)
     ;; uint8 _soc
       (write-byte _soc s)
     ;; uint8 _batteryvol
       (write-byte _batteryvol s)
     ;; uint16 _batterydischargecur
       (write-word _batterydischargecur s)
     ;; uint8 _car_run_mode
       (write-byte _car_run_mode s)
     ;; int16 _throttle_percentage
       (write-word _throttle_percentage s)
     ;; uint8 _left_light
       (write-byte _left_light s)
     ;; uint8 _right_light
       (write-byte _right_light s)
     ;; uint8 _reversing_light
       (write-byte _reversing_light s)
     ;; uint8 _speaker
       (write-byte _speaker s)
     ;; uint8 _start_button
       (write-byte _start_button s)
     ;; uint8 _stop_button
       (write-byte _stop_button s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint8 _error
       (write-byte _error s)
     ;; float32 _cotton_picker_fan_Enabler_act
       (sys::poke _cotton_picker_fan_Enabler_act (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cotton_bin_upper_act
       (sys::poke _cotton_bin_upper_act (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _cotton_bin_lower_act
       (write-byte _cotton_bin_lower_act s)
     ;; uint8 _cotton_bin_tilting_act
       (write-byte _cotton_bin_tilting_act s)
     ;; uint8 _cotton_bin_restore_act
       (write-byte _cotton_bin_restore_act s)
     ;; uint8 _cotton_unload_act
       (write-byte _cotton_unload_act s)
     ;; float32 _cotton_picker_head_height
       (sys::poke _cotton_picker_head_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _Target_primary_gear_act
       (write-byte _Target_primary_gear_act s)
     ;; uint8 _Target_EngineSpeedLevel_act
       (write-byte _Target_EngineSpeedLevel_act s)
     ;; int16 _Target_speedlever_percentage_act
       (write-word _Target_speedlever_percentage_act s)
     ;; float32 _process_time
       (sys::poke _process_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _raw_controlled
       (sys::poke _raw_controlled (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _wait_wirectrl
       (write-byte _wait_wirectrl s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _auto_enable
     (setq _auto_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _carspeed
     (setq _carspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steerangle
     (setq _steerangle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_angle
     (setq _current_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _gearpos
     (setq _gearpos (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gearpos 127) (setq _gearpos (- _gearpos 256)))
   ;; float32 _brake_pressure_request
     (setq _brake_pressure_request (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _brake_enable
     (setq _brake_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_braking_percentage
     (setq _current_braking_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _soc
     (setq _soc (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batteryvol
     (setq _batteryvol (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _batterydischargecur
     (setq _batterydischargecur (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _car_run_mode
     (setq _car_run_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _throttle_percentage
     (setq _throttle_percentage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _left_light
     (setq _left_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_light
     (setq _right_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reversing_light
     (setq _reversing_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speaker
     (setq _speaker (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _start_button
     (setq _start_button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _stop_button
     (setq _stop_button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _cotton_picker_fan_Enabler_act
     (setq _cotton_picker_fan_Enabler_act (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cotton_bin_upper_act
     (setq _cotton_bin_upper_act (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _cotton_bin_lower_act
     (setq _cotton_bin_lower_act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cotton_bin_tilting_act
     (setq _cotton_bin_tilting_act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cotton_bin_restore_act
     (setq _cotton_bin_restore_act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cotton_unload_act
     (setq _cotton_unload_act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _cotton_picker_head_height
     (setq _cotton_picker_head_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _Target_primary_gear_act
     (setq _Target_primary_gear_act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Target_EngineSpeedLevel_act
     (setq _Target_EngineSpeedLevel_act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _Target_speedlever_percentage_act
     (setq _Target_speedlever_percentage_act (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _raw_controlled
     (setq _raw_controlled (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _wait_wirectrl
     (setq _wait_wirectrl (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _wait_wirectrl 127) (setq _wait_wirectrl (- _wait_wirectrl 256)))
   ;;
   self)
  )

(setf (get hmi::CarOriInterface :md5sum-) "4bf06e5d0a03ba5caee4a614abe96f39")
(setf (get hmi::CarOriInterface :datatype-) "hmi/CarOriInterface")
(setf (get hmi::CarOriInterface :definition-)
      "# warn cyun 8.24 协议和msg的名称最好对应，不然程序写起来比较麻烦
# 另外，最好是根据协议来写msg，不然直接写msg，有些数据类型是有问题的

float64  timestamp  #时间戳
uint8  id   # 车辆ID
uint8 auto_enable #无人驾驶使能 0-不使能   1-使能
float32  carspeed    # 车辆速度，单位为m/s
float32  steerangle    # 车辆转角，左转为正，右转为负
float32 current_angle # 转角？车轮缺
int8  gearpos    # 车辆档位信号（01：驻车，02：空挡（N），03：前进（D），04：后退（R），05：无效）
float32  brake_pressure_request    # 制动行程请求（0-125）
uint8  brake_enable    # 制动使能（0：不使能  1：制动使能）
uint8  current_braking_percentage  #制动踏板开度： 取值0～125
uint8  soc    # 电池当前SOC（0-100）
uint8  batteryvol    # 电池电压（0-55V）
uint16  batterydischargecur    # 电池放电电流（0-100A）
uint8  car_run_mode   #车辆运行模式： 0： ACU控制  1：自动驾驶  2： 急停模式
int16  throttle_percentage  #油门踏板开度： 取值0～100
uint8  left_light    #左转向灯状态：0：关闭，1：打开
uint8  right_light    #右转向灯状态：0：关闭，1：打开
uint8  reversing_light   #倒车灯状态：0：关闭，1：打开
uint8  speaker     #喇叭状态：0：关闭，1：打开
uint8  start_button     #启动按钮状态：0：按键无效，1：按键有效
uint8  stop_button     #急停按钮状态：0：按键无效，1：按键有效
uint8  state          # 设备状态，0：状态正常，1：电池箱报警；2：电机控制器报警
uint8  error          # 错误码；电池箱报警：1：单体过压或欠压，2：放电电流异常，3：电压报警，4：电池温度报警，5：电池SOC过低。电机控制器报警：1：转向电机控制器故障，2：驱动电机控制器故障
float32  cotton_picker_fan_Enabler_act    #  使能采头与风机，1-使能；0-保持不变；
float32  cotton_bin_upper_act    # 升棉箱实际状态，1-提升；0-保持不变；
uint8  cotton_bin_lower_act   # 降棉箱实际状态，1-降低；0-保持不变；
uint8  cotton_bin_tilting_act   #  棉箱倾斜实际状态，1-倾斜；0-保持不变；
uint8  cotton_bin_restore_act # 棉箱回正实际状态，1-回正；0-保持不变；
uint8  cotton_unload_act  # 卸棉花实际状态（传送带），1-卸载；0-保持不变；
float32  cotton_picker_head_height  # 棉花采头高度，单位：m；
uint8  Target_primary_gear_act   # 01：低速，02：中速；03：高速；
uint8  Target_EngineSpeedLevel_act   # 01：低速；02：中速；03：高速；
int16  Target_speedlever_percentage_act   #车速手柄开度（-100%-100%）   取值【-100, 100】，负数为后退，正数为前进。
float32  process_time    # 进程处理时间


float32 raw_controlled


int8 wait_wirectrl# 0-等待 1-等待结束 发送给hmi界面

")



(provide :hmi/CarOriInterface "4bf06e5d0a03ba5caee4a614abe96f39")


