; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude FusionInterface.msg.html

(cl:defclass <FusionInterface> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (carlength
    :reader carlength
    :initarg :carlength
    :type cl:float
    :initform 0.0)
   (carwidth
    :reader carwidth
    :initarg :carwidth
    :type cl:float
    :initform 0.0)
   (carheight
    :reader carheight
    :initarg :carheight
    :type cl:float
    :initform 0.0)
   (centeroffset
    :reader centeroffset
    :initarg :centeroffset
    :type cl:float
    :initform 0.0)
   (signnumber
    :reader signnumber
    :initarg :signnumber
    :type cl:fixnum
    :initform 0)
   (signdata
    :reader signdata
    :initarg :signdata
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (lightdata
    :reader lightdata
    :initarg :lightdata
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (obstacledata
    :reader obstacledata
    :initarg :obstacledata
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (wx
    :reader wx
    :initarg :wx
    :type cl:float
    :initform 0.0)
   (wy
    :reader wy
    :initarg :wy
    :type cl:float
    :initform 0.0)
   (wz
    :reader wz
    :initarg :wz
    :type cl:float
    :initform 0.0)
   (ax
    :reader ax
    :initarg :ax
    :type cl:float
    :initform 0.0)
   (ay
    :reader ay
    :initarg :ay
    :type cl:float
    :initform 0.0)
   (az
    :reader az
    :initarg :az
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (eastvelocity
    :reader eastvelocity
    :initarg :eastvelocity
    :type cl:float
    :initform 0.0)
   (northvelocity
    :reader northvelocity
    :initarg :northvelocity
    :type cl:float
    :initform 0.0)
   (skyvelocity
    :reader skyvelocity
    :initarg :skyvelocity
    :type cl:float
    :initform 0.0)
   (carspeed
    :reader carspeed
    :initarg :carspeed
    :type cl:float
    :initform 0.0)
   (steerangle
    :reader steerangle
    :initarg :steerangle
    :type cl:float
    :initform 0.0)
   (gearpos
    :reader gearpos
    :initarg :gearpos
    :type cl:fixnum
    :initform 0)
   (braketq
    :reader braketq
    :initarg :braketq
    :type cl:float
    :initform 0.0)
   (parkingstate
    :reader parkingstate
    :initarg :parkingstate
    :type cl:fixnum
    :initform 0)
   (soc
    :reader soc
    :initarg :soc
    :type cl:fixnum
    :initform 0)
   (batteryvol
    :reader batteryvol
    :initarg :batteryvol
    :type cl:fixnum
    :initform 0)
   (batterydischargecur
    :reader batterydischargecur
    :initarg :batterydischargecur
    :type cl:fixnum
    :initform 0)
   (car_run_mode
    :reader car_run_mode
    :initarg :car_run_mode
    :type cl:fixnum
    :initform 0)
   (throttle_percentage
    :reader throttle_percentage
    :initarg :throttle_percentage
    :type cl:fixnum
    :initform 0)
   (braking_percentage
    :reader braking_percentage
    :initarg :braking_percentage
    :type cl:fixnum
    :initform 0)
   (left_light
    :reader left_light
    :initarg :left_light
    :type cl:boolean
    :initform cl:nil)
   (right_light
    :reader right_light
    :initarg :right_light
    :type cl:boolean
    :initform cl:nil)
   (reversing_light
    :reader reversing_light
    :initarg :reversing_light
    :type cl:boolean
    :initform cl:nil)
   (speaker
    :reader speaker
    :initarg :speaker
    :type cl:boolean
    :initform cl:nil)
   (start_button
    :reader start_button
    :initarg :start_button
    :type cl:boolean
    :initform cl:nil)
   (stop_button
    :reader stop_button
    :initarg :stop_button
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0)
   (cotton_picker_fan_Enabler_act
    :reader cotton_picker_fan_Enabler_act
    :initarg :cotton_picker_fan_Enabler_act
    :type cl:float
    :initform 0.0)
   (cotton_bin_upper_act
    :reader cotton_bin_upper_act
    :initarg :cotton_bin_upper_act
    :type cl:float
    :initform 0.0)
   (cotton_bin_lower_act
    :reader cotton_bin_lower_act
    :initarg :cotton_bin_lower_act
    :type cl:fixnum
    :initform 0)
   (cotton_bin_tilting_act
    :reader cotton_bin_tilting_act
    :initarg :cotton_bin_tilting_act
    :type cl:fixnum
    :initform 0)
   (cotton_bin_restore_act
    :reader cotton_bin_restore_act
    :initarg :cotton_bin_restore_act
    :type cl:fixnum
    :initform 0)
   (cotton_unload_act
    :reader cotton_unload_act
    :initarg :cotton_unload_act
    :type cl:fixnum
    :initform 0)
   (cotton_picker_head_height
    :reader cotton_picker_head_height
    :initarg :cotton_picker_head_height
    :type cl:float
    :initform 0.0)
   (Target_primary_gear_act
    :reader Target_primary_gear_act
    :initarg :Target_primary_gear_act
    :type cl:fixnum
    :initform 0)
   (Target_EngineSpeedLevel_act
    :reader Target_EngineSpeedLevel_act
    :initarg :Target_EngineSpeedLevel_act
    :type cl:fixnum
    :initform 0)
   (Target_speedlever_percentage_act
    :reader Target_speedlever_percentage_act
    :initarg :Target_speedlever_percentage_act
    :type cl:fixnum
    :initform 0)
   (process_time
    :reader process_time
    :initarg :process_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass FusionInterface (<FusionInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<FusionInterface> is deprecated: use car_interfaces-msg:FusionInterface instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:timestamp-val is deprecated.  Use car_interfaces-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:id-val is deprecated.  Use car_interfaces-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'carlength-val :lambda-list '(m))
(cl:defmethod carlength-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:carlength-val is deprecated.  Use car_interfaces-msg:carlength instead.")
  (carlength m))

(cl:ensure-generic-function 'carwidth-val :lambda-list '(m))
(cl:defmethod carwidth-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:carwidth-val is deprecated.  Use car_interfaces-msg:carwidth instead.")
  (carwidth m))

(cl:ensure-generic-function 'carheight-val :lambda-list '(m))
(cl:defmethod carheight-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:carheight-val is deprecated.  Use car_interfaces-msg:carheight instead.")
  (carheight m))

(cl:ensure-generic-function 'centeroffset-val :lambda-list '(m))
(cl:defmethod centeroffset-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:centeroffset-val is deprecated.  Use car_interfaces-msg:centeroffset instead.")
  (centeroffset m))

(cl:ensure-generic-function 'signnumber-val :lambda-list '(m))
(cl:defmethod signnumber-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:signnumber-val is deprecated.  Use car_interfaces-msg:signnumber instead.")
  (signnumber m))

(cl:ensure-generic-function 'signdata-val :lambda-list '(m))
(cl:defmethod signdata-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:signdata-val is deprecated.  Use car_interfaces-msg:signdata instead.")
  (signdata m))

(cl:ensure-generic-function 'lightdata-val :lambda-list '(m))
(cl:defmethod lightdata-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:lightdata-val is deprecated.  Use car_interfaces-msg:lightdata instead.")
  (lightdata m))

(cl:ensure-generic-function 'obstacledata-val :lambda-list '(m))
(cl:defmethod obstacledata-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:obstacledata-val is deprecated.  Use car_interfaces-msg:obstacledata instead.")
  (obstacledata m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:yaw-val is deprecated.  Use car_interfaces-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:pitch-val is deprecated.  Use car_interfaces-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:roll-val is deprecated.  Use car_interfaces-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'wx-val :lambda-list '(m))
(cl:defmethod wx-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:wx-val is deprecated.  Use car_interfaces-msg:wx instead.")
  (wx m))

(cl:ensure-generic-function 'wy-val :lambda-list '(m))
(cl:defmethod wy-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:wy-val is deprecated.  Use car_interfaces-msg:wy instead.")
  (wy m))

(cl:ensure-generic-function 'wz-val :lambda-list '(m))
(cl:defmethod wz-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:wz-val is deprecated.  Use car_interfaces-msg:wz instead.")
  (wz m))

(cl:ensure-generic-function 'ax-val :lambda-list '(m))
(cl:defmethod ax-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:ax-val is deprecated.  Use car_interfaces-msg:ax instead.")
  (ax m))

(cl:ensure-generic-function 'ay-val :lambda-list '(m))
(cl:defmethod ay-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:ay-val is deprecated.  Use car_interfaces-msg:ay instead.")
  (ay m))

(cl:ensure-generic-function 'az-val :lambda-list '(m))
(cl:defmethod az-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:az-val is deprecated.  Use car_interfaces-msg:az instead.")
  (az m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:longitude-val is deprecated.  Use car_interfaces-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:latitude-val is deprecated.  Use car_interfaces-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:height-val is deprecated.  Use car_interfaces-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'eastvelocity-val :lambda-list '(m))
(cl:defmethod eastvelocity-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:eastvelocity-val is deprecated.  Use car_interfaces-msg:eastvelocity instead.")
  (eastvelocity m))

(cl:ensure-generic-function 'northvelocity-val :lambda-list '(m))
(cl:defmethod northvelocity-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:northvelocity-val is deprecated.  Use car_interfaces-msg:northvelocity instead.")
  (northvelocity m))

(cl:ensure-generic-function 'skyvelocity-val :lambda-list '(m))
(cl:defmethod skyvelocity-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:skyvelocity-val is deprecated.  Use car_interfaces-msg:skyvelocity instead.")
  (skyvelocity m))

(cl:ensure-generic-function 'carspeed-val :lambda-list '(m))
(cl:defmethod carspeed-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:carspeed-val is deprecated.  Use car_interfaces-msg:carspeed instead.")
  (carspeed m))

(cl:ensure-generic-function 'steerangle-val :lambda-list '(m))
(cl:defmethod steerangle-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:steerangle-val is deprecated.  Use car_interfaces-msg:steerangle instead.")
  (steerangle m))

(cl:ensure-generic-function 'gearpos-val :lambda-list '(m))
(cl:defmethod gearpos-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:gearpos-val is deprecated.  Use car_interfaces-msg:gearpos instead.")
  (gearpos m))

(cl:ensure-generic-function 'braketq-val :lambda-list '(m))
(cl:defmethod braketq-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:braketq-val is deprecated.  Use car_interfaces-msg:braketq instead.")
  (braketq m))

(cl:ensure-generic-function 'parkingstate-val :lambda-list '(m))
(cl:defmethod parkingstate-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:parkingstate-val is deprecated.  Use car_interfaces-msg:parkingstate instead.")
  (parkingstate m))

(cl:ensure-generic-function 'soc-val :lambda-list '(m))
(cl:defmethod soc-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:soc-val is deprecated.  Use car_interfaces-msg:soc instead.")
  (soc m))

(cl:ensure-generic-function 'batteryvol-val :lambda-list '(m))
(cl:defmethod batteryvol-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:batteryvol-val is deprecated.  Use car_interfaces-msg:batteryvol instead.")
  (batteryvol m))

(cl:ensure-generic-function 'batterydischargecur-val :lambda-list '(m))
(cl:defmethod batterydischargecur-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:batterydischargecur-val is deprecated.  Use car_interfaces-msg:batterydischargecur instead.")
  (batterydischargecur m))

(cl:ensure-generic-function 'car_run_mode-val :lambda-list '(m))
(cl:defmethod car_run_mode-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:car_run_mode-val is deprecated.  Use car_interfaces-msg:car_run_mode instead.")
  (car_run_mode m))

(cl:ensure-generic-function 'throttle_percentage-val :lambda-list '(m))
(cl:defmethod throttle_percentage-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:throttle_percentage-val is deprecated.  Use car_interfaces-msg:throttle_percentage instead.")
  (throttle_percentage m))

(cl:ensure-generic-function 'braking_percentage-val :lambda-list '(m))
(cl:defmethod braking_percentage-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:braking_percentage-val is deprecated.  Use car_interfaces-msg:braking_percentage instead.")
  (braking_percentage m))

(cl:ensure-generic-function 'left_light-val :lambda-list '(m))
(cl:defmethod left_light-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:left_light-val is deprecated.  Use car_interfaces-msg:left_light instead.")
  (left_light m))

(cl:ensure-generic-function 'right_light-val :lambda-list '(m))
(cl:defmethod right_light-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:right_light-val is deprecated.  Use car_interfaces-msg:right_light instead.")
  (right_light m))

(cl:ensure-generic-function 'reversing_light-val :lambda-list '(m))
(cl:defmethod reversing_light-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:reversing_light-val is deprecated.  Use car_interfaces-msg:reversing_light instead.")
  (reversing_light m))

(cl:ensure-generic-function 'speaker-val :lambda-list '(m))
(cl:defmethod speaker-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:speaker-val is deprecated.  Use car_interfaces-msg:speaker instead.")
  (speaker m))

(cl:ensure-generic-function 'start_button-val :lambda-list '(m))
(cl:defmethod start_button-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:start_button-val is deprecated.  Use car_interfaces-msg:start_button instead.")
  (start_button m))

(cl:ensure-generic-function 'stop_button-val :lambda-list '(m))
(cl:defmethod stop_button-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:stop_button-val is deprecated.  Use car_interfaces-msg:stop_button instead.")
  (stop_button m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:state-val is deprecated.  Use car_interfaces-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:error-val is deprecated.  Use car_interfaces-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'cotton_picker_fan_Enabler_act-val :lambda-list '(m))
(cl:defmethod cotton_picker_fan_Enabler_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_picker_fan_Enabler_act-val is deprecated.  Use car_interfaces-msg:cotton_picker_fan_Enabler_act instead.")
  (cotton_picker_fan_Enabler_act m))

(cl:ensure-generic-function 'cotton_bin_upper_act-val :lambda-list '(m))
(cl:defmethod cotton_bin_upper_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_bin_upper_act-val is deprecated.  Use car_interfaces-msg:cotton_bin_upper_act instead.")
  (cotton_bin_upper_act m))

(cl:ensure-generic-function 'cotton_bin_lower_act-val :lambda-list '(m))
(cl:defmethod cotton_bin_lower_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_bin_lower_act-val is deprecated.  Use car_interfaces-msg:cotton_bin_lower_act instead.")
  (cotton_bin_lower_act m))

(cl:ensure-generic-function 'cotton_bin_tilting_act-val :lambda-list '(m))
(cl:defmethod cotton_bin_tilting_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_bin_tilting_act-val is deprecated.  Use car_interfaces-msg:cotton_bin_tilting_act instead.")
  (cotton_bin_tilting_act m))

(cl:ensure-generic-function 'cotton_bin_restore_act-val :lambda-list '(m))
(cl:defmethod cotton_bin_restore_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_bin_restore_act-val is deprecated.  Use car_interfaces-msg:cotton_bin_restore_act instead.")
  (cotton_bin_restore_act m))

(cl:ensure-generic-function 'cotton_unload_act-val :lambda-list '(m))
(cl:defmethod cotton_unload_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_unload_act-val is deprecated.  Use car_interfaces-msg:cotton_unload_act instead.")
  (cotton_unload_act m))

(cl:ensure-generic-function 'cotton_picker_head_height-val :lambda-list '(m))
(cl:defmethod cotton_picker_head_height-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_picker_head_height-val is deprecated.  Use car_interfaces-msg:cotton_picker_head_height instead.")
  (cotton_picker_head_height m))

(cl:ensure-generic-function 'Target_primary_gear_act-val :lambda-list '(m))
(cl:defmethod Target_primary_gear_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Target_primary_gear_act-val is deprecated.  Use car_interfaces-msg:Target_primary_gear_act instead.")
  (Target_primary_gear_act m))

(cl:ensure-generic-function 'Target_EngineSpeedLevel_act-val :lambda-list '(m))
(cl:defmethod Target_EngineSpeedLevel_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Target_EngineSpeedLevel_act-val is deprecated.  Use car_interfaces-msg:Target_EngineSpeedLevel_act instead.")
  (Target_EngineSpeedLevel_act m))

(cl:ensure-generic-function 'Target_speedlever_percentage_act-val :lambda-list '(m))
(cl:defmethod Target_speedlever_percentage_act-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Target_speedlever_percentage_act-val is deprecated.  Use car_interfaces-msg:Target_speedlever_percentage_act instead.")
  (Target_speedlever_percentage_act m))

(cl:ensure-generic-function 'process_time-val :lambda-list '(m))
(cl:defmethod process_time-val ((m <FusionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:process_time-val is deprecated.  Use car_interfaces-msg:process_time instead.")
  (process_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionInterface>) ostream)
  "Serializes a message object of type '<FusionInterface>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'carlength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'carwidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'carheight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'centeroffset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signnumber)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signdata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'signdata))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lightdata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'lightdata))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacledata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'obstacledata))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eastvelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'northvelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'skyvelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'carspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gearpos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'braketq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parkingstate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'soc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryvol)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batterydischargecur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batterydischargecur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_run_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_percentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'braking_percentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reversing_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speaker) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cotton_picker_fan_Enabler_act))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cotton_bin_upper_act))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cotton_bin_lower_act)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cotton_bin_tilting_act)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cotton_bin_restore_act)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cotton_unload_act)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cotton_picker_head_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Target_primary_gear_act)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Target_EngineSpeedLevel_act)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Target_speedlever_percentage_act)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'process_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionInterface>) istream)
  "Deserializes a message object of type '<FusionInterface>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carlength) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carwidth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carheight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'centeroffset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signnumber)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signdata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signdata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lightdata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lightdata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacledata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacledata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'az) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eastvelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'northvelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'skyvelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carspeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerangle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gearpos) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'braketq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parkingstate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'soc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryvol)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batterydischargecur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batterydischargecur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_run_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_percentage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'braking_percentage)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reversing_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'speaker) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'start_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stop_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cotton_picker_fan_Enabler_act) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cotton_bin_upper_act) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cotton_bin_lower_act)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cotton_bin_tilting_act)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cotton_bin_restore_act)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cotton_unload_act)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cotton_picker_head_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Target_primary_gear_act)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Target_EngineSpeedLevel_act)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Target_speedlever_percentage_act)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'process_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionInterface>)))
  "Returns string type for a message object of type '<FusionInterface>"
  "car_interfaces/FusionInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionInterface)))
  "Returns string type for a message object of type 'FusionInterface"
  "car_interfaces/FusionInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionInterface>)))
  "Returns md5sum for a message object of type '<FusionInterface>"
  "9bc3fce2c31a43ab376a08df38ba153b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionInterface)))
  "Returns md5sum for a message object of type 'FusionInterface"
  "9bc3fce2c31a43ab376a08df38ba153b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionInterface>)))
  "Returns full string definition for message of type '<FusionInterface>"
  (cl:format cl:nil "float64  timestamp  #时间戳~%uint8  id   # 车辆ID~%float32  carlength         # 车长m~%float32  carwidth         # 车宽m~%float32  carheight         # 车高m~%float32  centeroffset     # 车道中心线偏移距离，默认0~%uint8  signnumber  #交通标识数量~%float32[]  signdata  #交通标志数据~%float32[]  lightdata  # 红绿灯数据~%float32[]  obstacledata  #障碍物数据~%float32  yaw         # 偏航角（0-359.99）~%float32  pitch        # 俯仰角（-90-90）~%float32  roll         # 横滚角（-180-180）~%float32  wx         # 角速度x~%float32  wy         # 角速度y~%float32  wz         # 角速度z~%float32  ax         # 加速度x~%float32  ay         # 加速度y~%float32  az         # 加速度z~%float64  longitude        # 经度~%float64  latitude         # 纬度~%float64  height         # 高度~%float32  eastvelocity         # 东向速度~%float32  northvelocity        # 北向速度~%float32  skyvelocity         # 天向速度~%float32  carspeed    # 车辆速度，单位为m/s~%float32  steerangle    # 车辆转角，左转为正，右转为负~%int8  gearpos    # 车辆档位信号（01：驻车，02：空挡（N），03：前进（D），04：后退（R），05：无效）~%float32  braketq    # 制动量（-50-50nm）~%uint8  parkingstate    # 制动状态（00：驻车状态，01：驻车释放状态）~%uint8  soc    # 电池当前SOC（0-100）~%uint8  batteryvol    # 电池电压（0-55V）~%uint16  batterydischargecur    # 电池放电电流（0-100A）~%uint8  car_run_mode   #车辆运行模式： 0： ACU控制  1：自动驾驶  2： 急停模式~%uint8  throttle_percentage  #油门踏板开度： 取值0～100~%uint8  braking_percentage  #制动踏板开度： 取值0～100~%bool  left_light    #左转向灯状态：0：关闭，1：打开~%bool  right_light    #右转向灯状态：0：关闭，1：打开~%bool  reversing_light   #倒车灯状态：0：关闭，1：打开~%bool  speaker     #喇叭状态：0：关闭，1：打开~%bool  start_button     #启动按钮状态：0：按键无效，1：按键有效~%bool  stop_button     #急停按钮状态：0：按键无效，1：按键有效~%uint8  state          # 设备状态，0：状态正常，1：电池箱报警；2：电机控制器报警~%uint8  error          # 错误码；电池箱报警：1：单体过压或欠压，2：放电电流异常，3：电压报警，4：电池温度报警，5：电池SOC过低。电机控制器报警：1：转向电机控制器故障，2：驱动电机控制器故障~%float32  cotton_picker_fan_Enabler_act    #  使能采头与风机，1-使能；0-保持不变；~%float32  cotton_bin_upper_act    # 升棉箱实际状态，1-提升；0-保持不变；~%uint8  cotton_bin_lower_act   # 降棉箱实际状态，1-降低；0-保持不变；~%uint8  cotton_bin_tilting_act   #  棉箱倾斜实际状态，1-倾斜；0-保持不变；~%uint8  cotton_bin_restore_act # 棉箱回正实际状态，1-回正；0-保持不变；~%uint8  cotton_unload_act  # 卸棉花实际状态（传送带），1-卸载；0-保持不变；~%float32  cotton_picker_head_height  # 棉花采头高度，单位：m；~%uint8  Target_primary_gear_act   # 01：低速，02：中速；03：高速；~%uint8  Target_EngineSpeedLevel_act   # 01：低速；02：中速；03：高速；~%uint8  Target_speedlever_percentage_act   #车速手柄开度（-100%-100%）   取值【-100, 100】，负数为后退，正数为前进。~%float32  process_time     # 进程处理时间~%~%~%#其中signdata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组~%# int  category     # 交通标志类别，需自行定义类别，务必做好记录~%# float  length       # 交通标志长度m，精度为0.01~%# float  width       # 交通标志宽度m，精度为0.01~%# float  height       # 交通标志高度m，精度为0.01~%# float  x     # 交通标志的x坐标[米]，精度为0.01~%# float  y   # 交通标志的y坐标[米]，精度为0.01~%# float  z    # 交通标志的z坐标[米]，精度为0.01~%# float  v=0    # 交通标志径向速度m/s，默认为0，精度为0.01~%# float  latv=0  # 交通标志的横向速度m/s，默认为0，精度为0.01~%~%# 其中lightdata格式float32[]为一维数组，储存按照[x,y,z,leftcolor,straightcolor,rightcolor,……]存储，6个长度数据为一组~%# float  x     # 红绿灯x坐标[米]，精度为0.01~%# float  y     # 红绿灯y坐标[米]，精度为0.01~%# float  z     # 红绿灯z坐标[米]，精度为0.01~%# int   leftcolor   #左转灯状态，01：红，02：黄，03：绿，04：关闭，关闭时代表没有左转灯~%# int   straightcolor   #直行灯状态，01：红，02：黄，03：绿，04：关闭，~%# int   rightcolor   #右转灯状态，01：红，02：黄，03：绿，04：关闭，关闭时代表没有右转灯~%# 一般情况下，如果左转/右转/左右转和直行灯同时存在，无论什么颜色状态，这两个灯都是常亮的。如果信号灯只有直行灯，那用左/右转灯关闭代表当前路口只有直行灯，直行灯绿色时既可以直行也可以左转。~%~%#其中obstacledata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组~%# int  category     # 障碍物类别， 0点目标；1小汽车；2卡车/客车；3行人；4摩托车/电动车；5自行车；6宽大目标（如墙面）；7reserved保留； 8traffic light； 9stop sign~%# float  length       # 障碍物长度m，精度为0.01~%# float  width       # 障碍物宽度m，精度为0.01~%# float  height       # 障碍物高度m，精度为0.01~%# float  x     # 障碍物的x坐标[米]，精度为0.01~%# float  y   # 障碍物的y坐标[米]，精度为0.01~%# float  z    # 障碍物的z坐标[米]，精度为0.01~%# float  v=0    # 障碍物径向速度m/s，精度为0.01~%# float  latv=0  # 障碍物的横向速度m/s，精度为0.01~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionInterface)))
  "Returns full string definition for message of type 'FusionInterface"
  (cl:format cl:nil "float64  timestamp  #时间戳~%uint8  id   # 车辆ID~%float32  carlength         # 车长m~%float32  carwidth         # 车宽m~%float32  carheight         # 车高m~%float32  centeroffset     # 车道中心线偏移距离，默认0~%uint8  signnumber  #交通标识数量~%float32[]  signdata  #交通标志数据~%float32[]  lightdata  # 红绿灯数据~%float32[]  obstacledata  #障碍物数据~%float32  yaw         # 偏航角（0-359.99）~%float32  pitch        # 俯仰角（-90-90）~%float32  roll         # 横滚角（-180-180）~%float32  wx         # 角速度x~%float32  wy         # 角速度y~%float32  wz         # 角速度z~%float32  ax         # 加速度x~%float32  ay         # 加速度y~%float32  az         # 加速度z~%float64  longitude        # 经度~%float64  latitude         # 纬度~%float64  height         # 高度~%float32  eastvelocity         # 东向速度~%float32  northvelocity        # 北向速度~%float32  skyvelocity         # 天向速度~%float32  carspeed    # 车辆速度，单位为m/s~%float32  steerangle    # 车辆转角，左转为正，右转为负~%int8  gearpos    # 车辆档位信号（01：驻车，02：空挡（N），03：前进（D），04：后退（R），05：无效）~%float32  braketq    # 制动量（-50-50nm）~%uint8  parkingstate    # 制动状态（00：驻车状态，01：驻车释放状态）~%uint8  soc    # 电池当前SOC（0-100）~%uint8  batteryvol    # 电池电压（0-55V）~%uint16  batterydischargecur    # 电池放电电流（0-100A）~%uint8  car_run_mode   #车辆运行模式： 0： ACU控制  1：自动驾驶  2： 急停模式~%uint8  throttle_percentage  #油门踏板开度： 取值0～100~%uint8  braking_percentage  #制动踏板开度： 取值0～100~%bool  left_light    #左转向灯状态：0：关闭，1：打开~%bool  right_light    #右转向灯状态：0：关闭，1：打开~%bool  reversing_light   #倒车灯状态：0：关闭，1：打开~%bool  speaker     #喇叭状态：0：关闭，1：打开~%bool  start_button     #启动按钮状态：0：按键无效，1：按键有效~%bool  stop_button     #急停按钮状态：0：按键无效，1：按键有效~%uint8  state          # 设备状态，0：状态正常，1：电池箱报警；2：电机控制器报警~%uint8  error          # 错误码；电池箱报警：1：单体过压或欠压，2：放电电流异常，3：电压报警，4：电池温度报警，5：电池SOC过低。电机控制器报警：1：转向电机控制器故障，2：驱动电机控制器故障~%float32  cotton_picker_fan_Enabler_act    #  使能采头与风机，1-使能；0-保持不变；~%float32  cotton_bin_upper_act    # 升棉箱实际状态，1-提升；0-保持不变；~%uint8  cotton_bin_lower_act   # 降棉箱实际状态，1-降低；0-保持不变；~%uint8  cotton_bin_tilting_act   #  棉箱倾斜实际状态，1-倾斜；0-保持不变；~%uint8  cotton_bin_restore_act # 棉箱回正实际状态，1-回正；0-保持不变；~%uint8  cotton_unload_act  # 卸棉花实际状态（传送带），1-卸载；0-保持不变；~%float32  cotton_picker_head_height  # 棉花采头高度，单位：m；~%uint8  Target_primary_gear_act   # 01：低速，02：中速；03：高速；~%uint8  Target_EngineSpeedLevel_act   # 01：低速；02：中速；03：高速；~%uint8  Target_speedlever_percentage_act   #车速手柄开度（-100%-100%）   取值【-100, 100】，负数为后退，正数为前进。~%float32  process_time     # 进程处理时间~%~%~%#其中signdata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组~%# int  category     # 交通标志类别，需自行定义类别，务必做好记录~%# float  length       # 交通标志长度m，精度为0.01~%# float  width       # 交通标志宽度m，精度为0.01~%# float  height       # 交通标志高度m，精度为0.01~%# float  x     # 交通标志的x坐标[米]，精度为0.01~%# float  y   # 交通标志的y坐标[米]，精度为0.01~%# float  z    # 交通标志的z坐标[米]，精度为0.01~%# float  v=0    # 交通标志径向速度m/s，默认为0，精度为0.01~%# float  latv=0  # 交通标志的横向速度m/s，默认为0，精度为0.01~%~%# 其中lightdata格式float32[]为一维数组，储存按照[x,y,z,leftcolor,straightcolor,rightcolor,……]存储，6个长度数据为一组~%# float  x     # 红绿灯x坐标[米]，精度为0.01~%# float  y     # 红绿灯y坐标[米]，精度为0.01~%# float  z     # 红绿灯z坐标[米]，精度为0.01~%# int   leftcolor   #左转灯状态，01：红，02：黄，03：绿，04：关闭，关闭时代表没有左转灯~%# int   straightcolor   #直行灯状态，01：红，02：黄，03：绿，04：关闭，~%# int   rightcolor   #右转灯状态，01：红，02：黄，03：绿，04：关闭，关闭时代表没有右转灯~%# 一般情况下，如果左转/右转/左右转和直行灯同时存在，无论什么颜色状态，这两个灯都是常亮的。如果信号灯只有直行灯，那用左/右转灯关闭代表当前路口只有直行灯，直行灯绿色时既可以直行也可以左转。~%~%#其中obstacledata格式float32[]为一维数组，储存按照[category ,length ,width ,height , x  ,y  ,z  ,v  ,latv ,category  ,length ,width ,height , x ,y ,z ,v ,latv ,……]存储，9个长度数据为一组~%# int  category     # 障碍物类别， 0点目标；1小汽车；2卡车/客车；3行人；4摩托车/电动车；5自行车；6宽大目标（如墙面）；7reserved保留； 8traffic light； 9stop sign~%# float  length       # 障碍物长度m，精度为0.01~%# float  width       # 障碍物宽度m，精度为0.01~%# float  height       # 障碍物高度m，精度为0.01~%# float  x     # 障碍物的x坐标[米]，精度为0.01~%# float  y   # 障碍物的y坐标[米]，精度为0.01~%# float  z    # 障碍物的z坐标[米]，精度为0.01~%# float  v=0    # 障碍物径向速度m/s，精度为0.01~%# float  latv=0  # 障碍物的横向速度m/s，精度为0.01~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionInterface>))
  (cl:+ 0
     8
     1
     4
     4
     4
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signdata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lightdata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacledata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     8
     8
     8
     4
     4
     4
     4
     4
     1
     4
     1
     1
     1
     2
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
     1
     1
     1
     1
     4
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionInterface
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':carlength (carlength msg))
    (cl:cons ':carwidth (carwidth msg))
    (cl:cons ':carheight (carheight msg))
    (cl:cons ':centeroffset (centeroffset msg))
    (cl:cons ':signnumber (signnumber msg))
    (cl:cons ':signdata (signdata msg))
    (cl:cons ':lightdata (lightdata msg))
    (cl:cons ':obstacledata (obstacledata msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':wx (wx msg))
    (cl:cons ':wy (wy msg))
    (cl:cons ':wz (wz msg))
    (cl:cons ':ax (ax msg))
    (cl:cons ':ay (ay msg))
    (cl:cons ':az (az msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':height (height msg))
    (cl:cons ':eastvelocity (eastvelocity msg))
    (cl:cons ':northvelocity (northvelocity msg))
    (cl:cons ':skyvelocity (skyvelocity msg))
    (cl:cons ':carspeed (carspeed msg))
    (cl:cons ':steerangle (steerangle msg))
    (cl:cons ':gearpos (gearpos msg))
    (cl:cons ':braketq (braketq msg))
    (cl:cons ':parkingstate (parkingstate msg))
    (cl:cons ':soc (soc msg))
    (cl:cons ':batteryvol (batteryvol msg))
    (cl:cons ':batterydischargecur (batterydischargecur msg))
    (cl:cons ':car_run_mode (car_run_mode msg))
    (cl:cons ':throttle_percentage (throttle_percentage msg))
    (cl:cons ':braking_percentage (braking_percentage msg))
    (cl:cons ':left_light (left_light msg))
    (cl:cons ':right_light (right_light msg))
    (cl:cons ':reversing_light (reversing_light msg))
    (cl:cons ':speaker (speaker msg))
    (cl:cons ':start_button (start_button msg))
    (cl:cons ':stop_button (stop_button msg))
    (cl:cons ':state (state msg))
    (cl:cons ':error (error msg))
    (cl:cons ':cotton_picker_fan_Enabler_act (cotton_picker_fan_Enabler_act msg))
    (cl:cons ':cotton_bin_upper_act (cotton_bin_upper_act msg))
    (cl:cons ':cotton_bin_lower_act (cotton_bin_lower_act msg))
    (cl:cons ':cotton_bin_tilting_act (cotton_bin_tilting_act msg))
    (cl:cons ':cotton_bin_restore_act (cotton_bin_restore_act msg))
    (cl:cons ':cotton_unload_act (cotton_unload_act msg))
    (cl:cons ':cotton_picker_head_height (cotton_picker_head_height msg))
    (cl:cons ':Target_primary_gear_act (Target_primary_gear_act msg))
    (cl:cons ':Target_EngineSpeedLevel_act (Target_EngineSpeedLevel_act msg))
    (cl:cons ':Target_speedlever_percentage_act (Target_speedlever_percentage_act msg))
    (cl:cons ':process_time (process_time msg))
))
