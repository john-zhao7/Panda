; Auto-generated. Do not edit!


(cl:in-package hmi-msg)


;//! \htmlinclude CarOriInterface.msg.html

(cl:defclass <CarOriInterface> (roslisp-msg-protocol:ros-message)
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
   (auto_enable
    :reader auto_enable
    :initarg :auto_enable
    :type cl:fixnum
    :initform 0)
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
   (current_angle
    :reader current_angle
    :initarg :current_angle
    :type cl:float
    :initform 0.0)
   (gearpos
    :reader gearpos
    :initarg :gearpos
    :type cl:fixnum
    :initform 0)
   (brake_pressure_request
    :reader brake_pressure_request
    :initarg :brake_pressure_request
    :type cl:float
    :initform 0.0)
   (brake_enable
    :reader brake_enable
    :initarg :brake_enable
    :type cl:fixnum
    :initform 0)
   (current_braking_percentage
    :reader current_braking_percentage
    :initarg :current_braking_percentage
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
   (left_light
    :reader left_light
    :initarg :left_light
    :type cl:fixnum
    :initform 0)
   (right_light
    :reader right_light
    :initarg :right_light
    :type cl:fixnum
    :initform 0)
   (reversing_light
    :reader reversing_light
    :initarg :reversing_light
    :type cl:fixnum
    :initform 0)
   (speaker
    :reader speaker
    :initarg :speaker
    :type cl:fixnum
    :initform 0)
   (start_button
    :reader start_button
    :initarg :start_button
    :type cl:fixnum
    :initform 0)
   (stop_button
    :reader stop_button
    :initarg :stop_button
    :type cl:fixnum
    :initform 0)
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
    :initform 0.0)
   (raw_controlled
    :reader raw_controlled
    :initarg :raw_controlled
    :type cl:float
    :initform 0.0)
   (wait_wirectrl
    :reader wait_wirectrl
    :initarg :wait_wirectrl
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CarOriInterface (<CarOriInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarOriInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarOriInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hmi-msg:<CarOriInterface> is deprecated: use hmi-msg:CarOriInterface instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:timestamp-val is deprecated.  Use hmi-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:id-val is deprecated.  Use hmi-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'auto_enable-val :lambda-list '(m))
(cl:defmethod auto_enable-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:auto_enable-val is deprecated.  Use hmi-msg:auto_enable instead.")
  (auto_enable m))

(cl:ensure-generic-function 'carspeed-val :lambda-list '(m))
(cl:defmethod carspeed-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:carspeed-val is deprecated.  Use hmi-msg:carspeed instead.")
  (carspeed m))

(cl:ensure-generic-function 'steerangle-val :lambda-list '(m))
(cl:defmethod steerangle-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:steerangle-val is deprecated.  Use hmi-msg:steerangle instead.")
  (steerangle m))

(cl:ensure-generic-function 'current_angle-val :lambda-list '(m))
(cl:defmethod current_angle-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:current_angle-val is deprecated.  Use hmi-msg:current_angle instead.")
  (current_angle m))

(cl:ensure-generic-function 'gearpos-val :lambda-list '(m))
(cl:defmethod gearpos-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:gearpos-val is deprecated.  Use hmi-msg:gearpos instead.")
  (gearpos m))

(cl:ensure-generic-function 'brake_pressure_request-val :lambda-list '(m))
(cl:defmethod brake_pressure_request-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:brake_pressure_request-val is deprecated.  Use hmi-msg:brake_pressure_request instead.")
  (brake_pressure_request m))

(cl:ensure-generic-function 'brake_enable-val :lambda-list '(m))
(cl:defmethod brake_enable-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:brake_enable-val is deprecated.  Use hmi-msg:brake_enable instead.")
  (brake_enable m))

(cl:ensure-generic-function 'current_braking_percentage-val :lambda-list '(m))
(cl:defmethod current_braking_percentage-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:current_braking_percentage-val is deprecated.  Use hmi-msg:current_braking_percentage instead.")
  (current_braking_percentage m))

(cl:ensure-generic-function 'soc-val :lambda-list '(m))
(cl:defmethod soc-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:soc-val is deprecated.  Use hmi-msg:soc instead.")
  (soc m))

(cl:ensure-generic-function 'batteryvol-val :lambda-list '(m))
(cl:defmethod batteryvol-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:batteryvol-val is deprecated.  Use hmi-msg:batteryvol instead.")
  (batteryvol m))

(cl:ensure-generic-function 'batterydischargecur-val :lambda-list '(m))
(cl:defmethod batterydischargecur-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:batterydischargecur-val is deprecated.  Use hmi-msg:batterydischargecur instead.")
  (batterydischargecur m))

(cl:ensure-generic-function 'car_run_mode-val :lambda-list '(m))
(cl:defmethod car_run_mode-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:car_run_mode-val is deprecated.  Use hmi-msg:car_run_mode instead.")
  (car_run_mode m))

(cl:ensure-generic-function 'throttle_percentage-val :lambda-list '(m))
(cl:defmethod throttle_percentage-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:throttle_percentage-val is deprecated.  Use hmi-msg:throttle_percentage instead.")
  (throttle_percentage m))

(cl:ensure-generic-function 'left_light-val :lambda-list '(m))
(cl:defmethod left_light-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:left_light-val is deprecated.  Use hmi-msg:left_light instead.")
  (left_light m))

(cl:ensure-generic-function 'right_light-val :lambda-list '(m))
(cl:defmethod right_light-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:right_light-val is deprecated.  Use hmi-msg:right_light instead.")
  (right_light m))

(cl:ensure-generic-function 'reversing_light-val :lambda-list '(m))
(cl:defmethod reversing_light-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:reversing_light-val is deprecated.  Use hmi-msg:reversing_light instead.")
  (reversing_light m))

(cl:ensure-generic-function 'speaker-val :lambda-list '(m))
(cl:defmethod speaker-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:speaker-val is deprecated.  Use hmi-msg:speaker instead.")
  (speaker m))

(cl:ensure-generic-function 'start_button-val :lambda-list '(m))
(cl:defmethod start_button-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:start_button-val is deprecated.  Use hmi-msg:start_button instead.")
  (start_button m))

(cl:ensure-generic-function 'stop_button-val :lambda-list '(m))
(cl:defmethod stop_button-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:stop_button-val is deprecated.  Use hmi-msg:stop_button instead.")
  (stop_button m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:state-val is deprecated.  Use hmi-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:error-val is deprecated.  Use hmi-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'cotton_picker_fan_Enabler_act-val :lambda-list '(m))
(cl:defmethod cotton_picker_fan_Enabler_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:cotton_picker_fan_Enabler_act-val is deprecated.  Use hmi-msg:cotton_picker_fan_Enabler_act instead.")
  (cotton_picker_fan_Enabler_act m))

(cl:ensure-generic-function 'cotton_bin_upper_act-val :lambda-list '(m))
(cl:defmethod cotton_bin_upper_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:cotton_bin_upper_act-val is deprecated.  Use hmi-msg:cotton_bin_upper_act instead.")
  (cotton_bin_upper_act m))

(cl:ensure-generic-function 'cotton_bin_lower_act-val :lambda-list '(m))
(cl:defmethod cotton_bin_lower_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:cotton_bin_lower_act-val is deprecated.  Use hmi-msg:cotton_bin_lower_act instead.")
  (cotton_bin_lower_act m))

(cl:ensure-generic-function 'cotton_bin_tilting_act-val :lambda-list '(m))
(cl:defmethod cotton_bin_tilting_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:cotton_bin_tilting_act-val is deprecated.  Use hmi-msg:cotton_bin_tilting_act instead.")
  (cotton_bin_tilting_act m))

(cl:ensure-generic-function 'cotton_bin_restore_act-val :lambda-list '(m))
(cl:defmethod cotton_bin_restore_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:cotton_bin_restore_act-val is deprecated.  Use hmi-msg:cotton_bin_restore_act instead.")
  (cotton_bin_restore_act m))

(cl:ensure-generic-function 'cotton_unload_act-val :lambda-list '(m))
(cl:defmethod cotton_unload_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:cotton_unload_act-val is deprecated.  Use hmi-msg:cotton_unload_act instead.")
  (cotton_unload_act m))

(cl:ensure-generic-function 'cotton_picker_head_height-val :lambda-list '(m))
(cl:defmethod cotton_picker_head_height-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:cotton_picker_head_height-val is deprecated.  Use hmi-msg:cotton_picker_head_height instead.")
  (cotton_picker_head_height m))

(cl:ensure-generic-function 'Target_primary_gear_act-val :lambda-list '(m))
(cl:defmethod Target_primary_gear_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:Target_primary_gear_act-val is deprecated.  Use hmi-msg:Target_primary_gear_act instead.")
  (Target_primary_gear_act m))

(cl:ensure-generic-function 'Target_EngineSpeedLevel_act-val :lambda-list '(m))
(cl:defmethod Target_EngineSpeedLevel_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:Target_EngineSpeedLevel_act-val is deprecated.  Use hmi-msg:Target_EngineSpeedLevel_act instead.")
  (Target_EngineSpeedLevel_act m))

(cl:ensure-generic-function 'Target_speedlever_percentage_act-val :lambda-list '(m))
(cl:defmethod Target_speedlever_percentage_act-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:Target_speedlever_percentage_act-val is deprecated.  Use hmi-msg:Target_speedlever_percentage_act instead.")
  (Target_speedlever_percentage_act m))

(cl:ensure-generic-function 'process_time-val :lambda-list '(m))
(cl:defmethod process_time-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:process_time-val is deprecated.  Use hmi-msg:process_time instead.")
  (process_time m))

(cl:ensure-generic-function 'raw_controlled-val :lambda-list '(m))
(cl:defmethod raw_controlled-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:raw_controlled-val is deprecated.  Use hmi-msg:raw_controlled instead.")
  (raw_controlled m))

(cl:ensure-generic-function 'wait_wirectrl-val :lambda-list '(m))
(cl:defmethod wait_wirectrl-val ((m <CarOriInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hmi-msg:wait_wirectrl-val is deprecated.  Use hmi-msg:wait_wirectrl instead.")
  (wait_wirectrl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarOriInterface>) ostream)
  "Serializes a message object of type '<CarOriInterface>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_enable)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gearpos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_pressure_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_enable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_braking_percentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'soc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryvol)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batterydischargecur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batterydischargecur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_run_mode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'throttle_percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reversing_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speaker)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_button)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_button)) ostream)
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
  (cl:let* ((signed (cl:slot-value msg 'Target_speedlever_percentage_act)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'process_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'raw_controlled))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wait_wirectrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarOriInterface>) istream)
  "Deserializes a message object of type '<CarOriInterface>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_enable)) (cl:read-byte istream))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gearpos) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_pressure_request) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_enable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_braking_percentage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'soc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryvol)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batterydischargecur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batterydischargecur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_run_mode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'throttle_percentage) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reversing_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speaker)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_button)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_button)) (cl:read-byte istream))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Target_speedlever_percentage_act) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'process_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'raw_controlled) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wait_wirectrl) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarOriInterface>)))
  "Returns string type for a message object of type '<CarOriInterface>"
  "hmi/CarOriInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarOriInterface)))
  "Returns string type for a message object of type 'CarOriInterface"
  "hmi/CarOriInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarOriInterface>)))
  "Returns md5sum for a message object of type '<CarOriInterface>"
  "4bf06e5d0a03ba5caee4a614abe96f39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarOriInterface)))
  "Returns md5sum for a message object of type 'CarOriInterface"
  "4bf06e5d0a03ba5caee4a614abe96f39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarOriInterface>)))
  "Returns full string definition for message of type '<CarOriInterface>"
  (cl:format cl:nil "# warn cyun 8.24 协议和msg的名称最好对应，不然程序写起来比较麻烦~%# 另外，最好是根据协议来写msg，不然直接写msg，有些数据类型是有问题的~%~%float64  timestamp  #时间戳~%uint8  id   # 车辆ID~%uint8 auto_enable #无人驾驶使能 0-不使能   1-使能~%float32  carspeed    # 车辆速度，单位为m/s~%float32  steerangle    # 车辆转角，左转为正，右转为负~%float32 current_angle # 转角？车轮缺~%int8  gearpos    # 车辆档位信号（01：驻车，02：空挡（N），03：前进（D），04：后退（R），05：无效）~%float32  brake_pressure_request    # 制动行程请求（0-125）~%uint8  brake_enable    # 制动使能（0：不使能  1：制动使能）~%uint8  current_braking_percentage  #制动踏板开度： 取值0～125~%uint8  soc    # 电池当前SOC（0-100）~%uint8  batteryvol    # 电池电压（0-55V）~%uint16  batterydischargecur    # 电池放电电流（0-100A）~%uint8  car_run_mode   #车辆运行模式： 0： ACU控制  1：自动驾驶  2： 急停模式~%int16  throttle_percentage  #油门踏板开度： 取值0～100~%uint8  left_light    #左转向灯状态：0：关闭，1：打开~%uint8  right_light    #右转向灯状态：0：关闭，1：打开~%uint8  reversing_light   #倒车灯状态：0：关闭，1：打开~%uint8  speaker     #喇叭状态：0：关闭，1：打开~%uint8  start_button     #启动按钮状态：0：按键无效，1：按键有效~%uint8  stop_button     #急停按钮状态：0：按键无效，1：按键有效~%uint8  state          # 设备状态，0：状态正常，1：电池箱报警；2：电机控制器报警~%uint8  error          # 错误码；电池箱报警：1：单体过压或欠压，2：放电电流异常，3：电压报警，4：电池温度报警，5：电池SOC过低。电机控制器报警：1：转向电机控制器故障，2：驱动电机控制器故障~%float32  cotton_picker_fan_Enabler_act    #  使能采头与风机，1-使能；0-保持不变；~%float32  cotton_bin_upper_act    # 升棉箱实际状态，1-提升；0-保持不变；~%uint8  cotton_bin_lower_act   # 降棉箱实际状态，1-降低；0-保持不变；~%uint8  cotton_bin_tilting_act   #  棉箱倾斜实际状态，1-倾斜；0-保持不变；~%uint8  cotton_bin_restore_act # 棉箱回正实际状态，1-回正；0-保持不变；~%uint8  cotton_unload_act  # 卸棉花实际状态（传送带），1-卸载；0-保持不变；~%float32  cotton_picker_head_height  # 棉花采头高度，单位：m；~%uint8  Target_primary_gear_act   # 01：低速，02：中速；03：高速；~%uint8  Target_EngineSpeedLevel_act   # 01：低速；02：中速；03：高速；~%int16  Target_speedlever_percentage_act   #车速手柄开度（-100%-100%）   取值【-100, 100】，负数为后退，正数为前进。~%float32  process_time    # 进程处理时间~%~%~%float32 raw_controlled~%~%~%int8 wait_wirectrl# 0-等待 1-等待结束 发送给hmi界面~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarOriInterface)))
  "Returns full string definition for message of type 'CarOriInterface"
  (cl:format cl:nil "# warn cyun 8.24 协议和msg的名称最好对应，不然程序写起来比较麻烦~%# 另外，最好是根据协议来写msg，不然直接写msg，有些数据类型是有问题的~%~%float64  timestamp  #时间戳~%uint8  id   # 车辆ID~%uint8 auto_enable #无人驾驶使能 0-不使能   1-使能~%float32  carspeed    # 车辆速度，单位为m/s~%float32  steerangle    # 车辆转角，左转为正，右转为负~%float32 current_angle # 转角？车轮缺~%int8  gearpos    # 车辆档位信号（01：驻车，02：空挡（N），03：前进（D），04：后退（R），05：无效）~%float32  brake_pressure_request    # 制动行程请求（0-125）~%uint8  brake_enable    # 制动使能（0：不使能  1：制动使能）~%uint8  current_braking_percentage  #制动踏板开度： 取值0～125~%uint8  soc    # 电池当前SOC（0-100）~%uint8  batteryvol    # 电池电压（0-55V）~%uint16  batterydischargecur    # 电池放电电流（0-100A）~%uint8  car_run_mode   #车辆运行模式： 0： ACU控制  1：自动驾驶  2： 急停模式~%int16  throttle_percentage  #油门踏板开度： 取值0～100~%uint8  left_light    #左转向灯状态：0：关闭，1：打开~%uint8  right_light    #右转向灯状态：0：关闭，1：打开~%uint8  reversing_light   #倒车灯状态：0：关闭，1：打开~%uint8  speaker     #喇叭状态：0：关闭，1：打开~%uint8  start_button     #启动按钮状态：0：按键无效，1：按键有效~%uint8  stop_button     #急停按钮状态：0：按键无效，1：按键有效~%uint8  state          # 设备状态，0：状态正常，1：电池箱报警；2：电机控制器报警~%uint8  error          # 错误码；电池箱报警：1：单体过压或欠压，2：放电电流异常，3：电压报警，4：电池温度报警，5：电池SOC过低。电机控制器报警：1：转向电机控制器故障，2：驱动电机控制器故障~%float32  cotton_picker_fan_Enabler_act    #  使能采头与风机，1-使能；0-保持不变；~%float32  cotton_bin_upper_act    # 升棉箱实际状态，1-提升；0-保持不变；~%uint8  cotton_bin_lower_act   # 降棉箱实际状态，1-降低；0-保持不变；~%uint8  cotton_bin_tilting_act   #  棉箱倾斜实际状态，1-倾斜；0-保持不变；~%uint8  cotton_bin_restore_act # 棉箱回正实际状态，1-回正；0-保持不变；~%uint8  cotton_unload_act  # 卸棉花实际状态（传送带），1-卸载；0-保持不变；~%float32  cotton_picker_head_height  # 棉花采头高度，单位：m；~%uint8  Target_primary_gear_act   # 01：低速，02：中速；03：高速；~%uint8  Target_EngineSpeedLevel_act   # 01：低速；02：中速；03：高速；~%int16  Target_speedlever_percentage_act   #车速手柄开度（-100%-100%）   取值【-100, 100】，负数为后退，正数为前进。~%float32  process_time    # 进程处理时间~%~%~%float32 raw_controlled~%~%~%int8 wait_wirectrl# 0-等待 1-等待结束 发送给hmi界面~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarOriInterface>))
  (cl:+ 0
     8
     1
     1
     4
     4
     4
     1
     4
     1
     1
     1
     1
     2
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
     4
     4
     1
     1
     1
     1
     4
     1
     1
     2
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarOriInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'CarOriInterface
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':auto_enable (auto_enable msg))
    (cl:cons ':carspeed (carspeed msg))
    (cl:cons ':steerangle (steerangle msg))
    (cl:cons ':current_angle (current_angle msg))
    (cl:cons ':gearpos (gearpos msg))
    (cl:cons ':brake_pressure_request (brake_pressure_request msg))
    (cl:cons ':brake_enable (brake_enable msg))
    (cl:cons ':current_braking_percentage (current_braking_percentage msg))
    (cl:cons ':soc (soc msg))
    (cl:cons ':batteryvol (batteryvol msg))
    (cl:cons ':batterydischargecur (batterydischargecur msg))
    (cl:cons ':car_run_mode (car_run_mode msg))
    (cl:cons ':throttle_percentage (throttle_percentage msg))
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
    (cl:cons ':raw_controlled (raw_controlled msg))
    (cl:cons ':wait_wirectrl (wait_wirectrl msg))
))
