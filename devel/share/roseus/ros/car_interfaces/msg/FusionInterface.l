;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::FusionInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'FusionInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::FUSIONINTERFACE")
  (make-package "CAR_INTERFACES::FUSIONINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude FusionInterface.msg.html


(defclass car_interfaces::FusionInterface
  :super ros::object
  :slots (_timestamp _id _carlength _carwidth _carheight _centeroffset _signnumber _signdata _lightdata _obstacledata _yaw _pitch _roll _wx _wy _wz _ax _ay _az _longitude _latitude _height _eastvelocity _northvelocity _skyvelocity _carspeed _steerangle _gearpos _braketq _parkingstate _soc _batteryvol _batterydischargecur _car_run_mode _throttle_percentage _braking_percentage _left_light _right_light _reversing_light _speaker _start_button _stop_button _state _error _cotton_picker_fan_Enabler_act _cotton_bin_upper_act _cotton_bin_lower_act _cotton_bin_tilting_act _cotton_bin_restore_act _cotton_unload_act _cotton_picker_head_height _Target_primary_gear_act _Target_EngineSpeedLevel_act _Target_speedlever_percentage_act _process_time ))

(defmethod car_interfaces::FusionInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:carlength __carlength) 0.0)
    ((:carwidth __carwidth) 0.0)
    ((:carheight __carheight) 0.0)
    ((:centeroffset __centeroffset) 0.0)
    ((:signnumber __signnumber) 0)
    ((:signdata __signdata) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lightdata __lightdata) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obstacledata __obstacledata) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:wx __wx) 0.0)
    ((:wy __wy) 0.0)
    ((:wz __wz) 0.0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:height __height) 0.0)
    ((:eastvelocity __eastvelocity) 0.0)
    ((:northvelocity __northvelocity) 0.0)
    ((:skyvelocity __skyvelocity) 0.0)
    ((:carspeed __carspeed) 0.0)
    ((:steerangle __steerangle) 0.0)
    ((:gearpos __gearpos) 0)
    ((:braketq __braketq) 0.0)
    ((:parkingstate __parkingstate) 0)
    ((:soc __soc) 0)
    ((:batteryvol __batteryvol) 0)
    ((:batterydischargecur __batterydischargecur) 0)
    ((:car_run_mode __car_run_mode) 0)
    ((:throttle_percentage __throttle_percentage) 0)
    ((:braking_percentage __braking_percentage) 0)
    ((:left_light __left_light) nil)
    ((:right_light __right_light) nil)
    ((:reversing_light __reversing_light) nil)
    ((:speaker __speaker) nil)
    ((:start_button __start_button) nil)
    ((:stop_button __stop_button) nil)
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
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _carlength (float __carlength))
   (setq _carwidth (float __carwidth))
   (setq _carheight (float __carheight))
   (setq _centeroffset (float __centeroffset))
   (setq _signnumber (round __signnumber))
   (setq _signdata __signdata)
   (setq _lightdata __lightdata)
   (setq _obstacledata __obstacledata)
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _wx (float __wx))
   (setq _wy (float __wy))
   (setq _wz (float __wz))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _height (float __height))
   (setq _eastvelocity (float __eastvelocity))
   (setq _northvelocity (float __northvelocity))
   (setq _skyvelocity (float __skyvelocity))
   (setq _carspeed (float __carspeed))
   (setq _steerangle (float __steerangle))
   (setq _gearpos (round __gearpos))
   (setq _braketq (float __braketq))
   (setq _parkingstate (round __parkingstate))
   (setq _soc (round __soc))
   (setq _batteryvol (round __batteryvol))
   (setq _batterydischargecur (round __batterydischargecur))
   (setq _car_run_mode (round __car_run_mode))
   (setq _throttle_percentage (round __throttle_percentage))
   (setq _braking_percentage (round __braking_percentage))
   (setq _left_light __left_light)
   (setq _right_light __right_light)
   (setq _reversing_light __reversing_light)
   (setq _speaker __speaker)
   (setq _start_button __start_button)
   (setq _stop_button __stop_button)
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
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:carlength
   (&optional __carlength)
   (if __carlength (setq _carlength __carlength)) _carlength)
  (:carwidth
   (&optional __carwidth)
   (if __carwidth (setq _carwidth __carwidth)) _carwidth)
  (:carheight
   (&optional __carheight)
   (if __carheight (setq _carheight __carheight)) _carheight)
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
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:wx
   (&optional __wx)
   (if __wx (setq _wx __wx)) _wx)
  (:wy
   (&optional __wy)
   (if __wy (setq _wy __wy)) _wy)
  (:wz
   (&optional __wz)
   (if __wz (setq _wz __wz)) _wz)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
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
  (:steerangle
   (&optional __steerangle)
   (if __steerangle (setq _steerangle __steerangle)) _steerangle)
  (:gearpos
   (&optional __gearpos)
   (if __gearpos (setq _gearpos __gearpos)) _gearpos)
  (:braketq
   (&optional __braketq)
   (if __braketq (setq _braketq __braketq)) _braketq)
  (:parkingstate
   (&optional __parkingstate)
   (if __parkingstate (setq _parkingstate __parkingstate)) _parkingstate)
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
  (:braking_percentage
   (&optional __braking_percentage)
   (if __braking_percentage (setq _braking_percentage __braking_percentage)) _braking_percentage)
  (:left_light
   (&optional (__left_light :null))
   (if (not (eq __left_light :null)) (setq _left_light __left_light)) _left_light)
  (:right_light
   (&optional (__right_light :null))
   (if (not (eq __right_light :null)) (setq _right_light __right_light)) _right_light)
  (:reversing_light
   (&optional (__reversing_light :null))
   (if (not (eq __reversing_light :null)) (setq _reversing_light __reversing_light)) _reversing_light)
  (:speaker
   (&optional (__speaker :null))
   (if (not (eq __speaker :null)) (setq _speaker __speaker)) _speaker)
  (:start_button
   (&optional (__start_button :null))
   (if (not (eq __start_button :null)) (setq _start_button __start_button)) _start_button)
  (:stop_button
   (&optional (__stop_button :null))
   (if (not (eq __stop_button :null)) (setq _stop_button __stop_button)) _stop_button)
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
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; uint8 _id
    1
    ;; float32 _carlength
    4
    ;; float32 _carwidth
    4
    ;; float32 _carheight
    4
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
    ;; float32 _yaw
    4
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; float32 _wx
    4
    ;; float32 _wy
    4
    ;; float32 _wz
    4
    ;; float32 _ax
    4
    ;; float32 _ay
    4
    ;; float32 _az
    4
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; float64 _height
    8
    ;; float32 _eastvelocity
    4
    ;; float32 _northvelocity
    4
    ;; float32 _skyvelocity
    4
    ;; float32 _carspeed
    4
    ;; float32 _steerangle
    4
    ;; int8 _gearpos
    1
    ;; float32 _braketq
    4
    ;; uint8 _parkingstate
    1
    ;; uint8 _soc
    1
    ;; uint8 _batteryvol
    1
    ;; uint16 _batterydischargecur
    2
    ;; uint8 _car_run_mode
    1
    ;; uint8 _throttle_percentage
    1
    ;; uint8 _braking_percentage
    1
    ;; bool _left_light
    1
    ;; bool _right_light
    1
    ;; bool _reversing_light
    1
    ;; bool _speaker
    1
    ;; bool _start_button
    1
    ;; bool _stop_button
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
    ;; uint8 _Target_speedlever_percentage_act
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
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _carlength
       (sys::poke _carlength (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _carwidth
       (sys::poke _carwidth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _carheight
       (sys::poke _carheight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wx
       (sys::poke _wx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wy
       (sys::poke _wy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wz
       (sys::poke _wz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az
       (sys::poke _az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _eastvelocity
       (sys::poke _eastvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _northvelocity
       (sys::poke _northvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _skyvelocity
       (sys::poke _skyvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _carspeed
       (sys::poke _carspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steerangle
       (sys::poke _steerangle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _gearpos
       (write-byte _gearpos s)
     ;; float32 _braketq
       (sys::poke _braketq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _parkingstate
       (write-byte _parkingstate s)
     ;; uint8 _soc
       (write-byte _soc s)
     ;; uint8 _batteryvol
       (write-byte _batteryvol s)
     ;; uint16 _batterydischargecur
       (write-word _batterydischargecur s)
     ;; uint8 _car_run_mode
       (write-byte _car_run_mode s)
     ;; uint8 _throttle_percentage
       (write-byte _throttle_percentage s)
     ;; uint8 _braking_percentage
       (write-byte _braking_percentage s)
     ;; bool _left_light
       (if _left_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_light
       (if _right_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _reversing_light
       (if _reversing_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _speaker
       (if _speaker (write-byte -1 s) (write-byte 0 s))
     ;; bool _start_button
       (if _start_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _stop_button
       (if _stop_button (write-byte -1 s) (write-byte 0 s))
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
     ;; uint8 _Target_speedlever_percentage_act
       (write-byte _Target_speedlever_percentage_act s)
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
   ;; float32 _carlength
     (setq _carlength (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _carwidth
     (setq _carwidth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _carheight
     (setq _carheight (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wx
     (setq _wx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wy
     (setq _wy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wz
     (setq _wz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ax
     (setq _ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ay
     (setq _ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az
     (setq _az (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _eastvelocity
     (setq _eastvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _northvelocity
     (setq _northvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _skyvelocity
     (setq _skyvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _carspeed
     (setq _carspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steerangle
     (setq _steerangle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _gearpos
     (setq _gearpos (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gearpos 127) (setq _gearpos (- _gearpos 256)))
   ;; float32 _braketq
     (setq _braketq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _parkingstate
     (setq _parkingstate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _soc
     (setq _soc (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batteryvol
     (setq _batteryvol (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _batterydischargecur
     (setq _batterydischargecur (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _car_run_mode
     (setq _car_run_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _throttle_percentage
     (setq _throttle_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _braking_percentage
     (setq _braking_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _left_light
     (setq _left_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_light
     (setq _right_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reversing_light
     (setq _reversing_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _speaker
     (setq _speaker (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _start_button
     (setq _start_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stop_button
     (setq _stop_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;; uint8 _Target_speedlever_percentage_act
     (setq _Target_speedlever_percentage_act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::FusionInterface :md5sum-) "9bc3fce2c31a43ab376a08df38ba153b")
(setf (get car_interfaces::FusionInterface :datatype-) "car_interfaces/FusionInterface")
(setf (get car_interfaces::FusionInterface :definition-)
      "float64  timestamp  #时间戳
uint8  id   # 车辆ID
float32  carlength         # 车长m
float32  carwidth         # 车宽m
float32  carheight         # 车高m
float32  centeroffset     # 车道中心线偏移距离，默认0
uint8  signnumber  #交通标识数量
float32[]  signdata  #交通标志数据
float32[]  lightdata  # 红绿灯数据
float32[]  obstacledata  #障碍物数据
float32  yaw         # 偏航角（0-359.99）
float32  pitch        # 俯仰角（-90-90）
float32  roll         # 横滚角（-180-180）
float32  wx         # 角速度x
float32  wy         # 角速度y
float32  wz         # 角速度z
float32  ax         # 加速度x
float32  ay         # 加速度y
float32  az         # 加速度z
float64  longitude        # 经度
float64  latitude         # 纬度
float64  height         # 高度
float32  eastvelocity         # 东向速度
float32  northvelocity        # 北向速度
float32  skyvelocity         # 天向速度
float32  carspeed    # 车辆速度，单位为m/s
float32  steerangle    # 车辆转角，左转为正，右转为负
int8  gearpos    # 车辆档位信号（01：驻车，02：空挡（N），03：前进（D），04：后退（R），05：无效）
float32  braketq    # 制动量（-50-50nm）
uint8  parkingstate    # 制动状态（00：驻车状态，01：驻车释放状态）
uint8  soc    # 电池当前SOC（0-100）
uint8  batteryvol    # 电池电压（0-55V）
uint16  batterydischargecur    # 电池放电电流（0-100A）
uint8  car_run_mode   #车辆运行模式： 0： ACU控制  1：自动驾驶  2： 急停模式
uint8  throttle_percentage  #油门踏板开度： 取值0～100
uint8  braking_percentage  #制动踏板开度： 取值0～100
bool  left_light    #左转向灯状态：0：关闭，1：打开
bool  right_light    #右转向灯状态：0：关闭，1：打开
bool  reversing_light   #倒车灯状态：0：关闭，1：打开
bool  speaker     #喇叭状态：0：关闭，1：打开
bool  start_button     #启动按钮状态：0：按键无效，1：按键有效
bool  stop_button     #急停按钮状态：0：按键无效，1：按键有效
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
uint8  Target_speedlever_percentage_act   #车速手柄开度（-100%-100%）   取值【-100, 100】，负数为后退，正数为前进。
float32  process_time     # 进程处理时间


#其中signdata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组
# int  category     # 交通标志类别，需自行定义类别，务必做好记录
# float  length       # 交通标志长度m，精度为0.01
# float  width       # 交通标志宽度m，精度为0.01
# float  height       # 交通标志高度m，精度为0.01
# float  x     # 交通标志的x坐标[米]，精度为0.01
# float  y   # 交通标志的y坐标[米]，精度为0.01
# float  z    # 交通标志的z坐标[米]，精度为0.01
# float  v=0    # 交通标志径向速度m/s，默认为0，精度为0.01
# float  latv=0  # 交通标志的横向速度m/s，默认为0，精度为0.01

# 其中lightdata格式float32[]为一维数组，储存按照[x,y,z,leftcolor,straightcolor,rightcolor,……]存储，6个长度数据为一组
# float  x     # 红绿灯x坐标[米]，精度为0.01
# float  y     # 红绿灯y坐标[米]，精度为0.01
# float  z     # 红绿灯z坐标[米]，精度为0.01
# int   leftcolor   #左转灯状态，01：红，02：黄，03：绿，04：关闭，关闭时代表没有左转灯
# int   straightcolor   #直行灯状态，01：红，02：黄，03：绿，04：关闭，
# int   rightcolor   #右转灯状态，01：红，02：黄，03：绿，04：关闭，关闭时代表没有右转灯
# 一般情况下，如果左转/右转/左右转和直行灯同时存在，无论什么颜色状态，这两个灯都是常亮的。如果信号灯只有直行灯，那用左/右转灯关闭代表当前路口只有直行灯，直行灯绿色时既可以直行也可以左转。

#其中obstacledata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组
# int  category     # 障碍物类别， 0点目标；1小汽车；2卡车/客车；3行人；4摩托车/电动车；5自行车；6宽大目标（如墙面）；7reserved保留； 8traffic light； 9stop sign
# float  length       # 障碍物长度m，精度为0.01
# float  width       # 障碍物宽度m，精度为0.01
# float  height       # 障碍物高度m，精度为0.01
# float  x     # 障碍物的x坐标[米]，精度为0.01
# float  y   # 障碍物的y坐标[米]，精度为0.01
# float  z    # 障碍物的z坐标[米]，精度为0.01
# float  v=0    # 障碍物径向速度m/s，精度为0.01
# float  latv=0  # 障碍物的横向速度m/s，精度为0.01

")



(provide :car_interfaces/FusionInterface "9bc3fce2c31a43ab376a08df38ba153b")


