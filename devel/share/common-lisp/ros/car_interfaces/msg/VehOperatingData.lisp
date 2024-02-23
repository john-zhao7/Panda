; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude VehOperatingData.msg.html

(cl:defclass <VehOperatingData> (roslisp-msg-protocol:ros-message)
  ((cotton_box_control
    :reader cotton_box_control
    :initarg :cotton_box_control
    :type cl:fixnum
    :initform 0)
   (cotton_unloading
    :reader cotton_unloading
    :initarg :cotton_unloading
    :type cl:fixnum
    :initform 0)
   (Head_control
    :reader Head_control
    :initarg :Head_control
    :type cl:fixnum
    :initform 0)
   (Engine_power
    :reader Engine_power
    :initarg :Engine_power
    :type cl:fixnum
    :initform 0)
   (Target_Fan_gear
    :reader Target_Fan_gear
    :initarg :Target_Fan_gear
    :type cl:fixnum
    :initform 0)
   (Door_control
    :reader Door_control
    :initarg :Door_control
    :type cl:fixnum
    :initform 0)
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehOperatingData (<VehOperatingData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehOperatingData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehOperatingData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<VehOperatingData> is deprecated: use car_interfaces-msg:VehOperatingData instead.")))

(cl:ensure-generic-function 'cotton_box_control-val :lambda-list '(m))
(cl:defmethod cotton_box_control-val ((m <VehOperatingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_box_control-val is deprecated.  Use car_interfaces-msg:cotton_box_control instead.")
  (cotton_box_control m))

(cl:ensure-generic-function 'cotton_unloading-val :lambda-list '(m))
(cl:defmethod cotton_unloading-val ((m <VehOperatingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_unloading-val is deprecated.  Use car_interfaces-msg:cotton_unloading instead.")
  (cotton_unloading m))

(cl:ensure-generic-function 'Head_control-val :lambda-list '(m))
(cl:defmethod Head_control-val ((m <VehOperatingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Head_control-val is deprecated.  Use car_interfaces-msg:Head_control instead.")
  (Head_control m))

(cl:ensure-generic-function 'Engine_power-val :lambda-list '(m))
(cl:defmethod Engine_power-val ((m <VehOperatingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Engine_power-val is deprecated.  Use car_interfaces-msg:Engine_power instead.")
  (Engine_power m))

(cl:ensure-generic-function 'Target_Fan_gear-val :lambda-list '(m))
(cl:defmethod Target_Fan_gear-val ((m <VehOperatingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Target_Fan_gear-val is deprecated.  Use car_interfaces-msg:Target_Fan_gear instead.")
  (Target_Fan_gear m))

(cl:ensure-generic-function 'Door_control-val :lambda-list '(m))
(cl:defmethod Door_control-val ((m <VehOperatingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Door_control-val is deprecated.  Use car_interfaces-msg:Door_control instead.")
  (Door_control m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <VehOperatingData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:flag-val is deprecated.  Use car_interfaces-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehOperatingData>) ostream)
  "Serializes a message object of type '<VehOperatingData>"
  (cl:let* ((signed (cl:slot-value msg 'cotton_box_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cotton_unloading)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Head_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Engine_power)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Target_Fan_gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Door_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehOperatingData>) istream)
  "Deserializes a message object of type '<VehOperatingData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cotton_box_control) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cotton_unloading) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Head_control) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Engine_power) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Target_Fan_gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Door_control) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehOperatingData>)))
  "Returns string type for a message object of type '<VehOperatingData>"
  "car_interfaces/VehOperatingData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehOperatingData)))
  "Returns string type for a message object of type 'VehOperatingData"
  "car_interfaces/VehOperatingData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehOperatingData>)))
  "Returns md5sum for a message object of type '<VehOperatingData>"
  "6881f1f50cfa4ccbc6e29bdbd978adae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehOperatingData)))
  "Returns md5sum for a message object of type 'VehOperatingData"
  "6881f1f50cfa4ccbc6e29bdbd978adae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehOperatingData>)))
  "Returns full string definition for message of type '<VehOperatingData>"
  (cl:format cl:nil "# float64  timestamp  # 数据帧时间戳~%# float32  cotton_picker_fan_Enabler    #  使能采头与风机，1-使能；0-保持不变；~%# float32  cotton_bin_upper    # 升棉箱指令，1-提升；0-保持不变；~%# uint8  cotton_bin_lower   # 降棉箱指令，1-降低；0-保持不变；~%# uint8  cotton_bin_tilting   #  棉箱倾斜指令（需要持续作用，长按），1-倾斜；0-保持不变；~%# uint8  cotton_bin_restore # 棉箱回正指令（需要持续作用，长按），1-回正；0-保持不变；~%# uint8  cotton_unload  # 卸棉花指令（传送带），1-卸载；0-保持不变；~%# float32  process_time    # 进程处理时间~%~%# int8 operate# 0-不使能 1-使能~%# int8 unloading # 0-不使能 1-使能~%~%~%~%# 10.17 cyun~%int8 cotton_box_control   #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 ~%# int8 cotton_picker_enable       # 采头风机使能 0-不使能 1-使能 ~%int8 cotton_unloading         # 卸棉传送带  0-关闭 1-启动~%# auto_enable= 1           #enable_single;~%# speed_range= 0                  ~%# throttle_opening=0  #-100~~100       ~%int8 Head_control    #1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能） ~%int8 Engine_power     # 1-低速 2-中速 3-高速               ~%int8 Target_Fan_gear  # 采头风机 0-不接通 1-风机 2-采头风机~%# Reserve_1=0       # 驻车信号 0-驻车 1-取消~%# Target_steering_angle = 0 #方向盘转角~%# brake_enable=0  #刹车使能~%# brake_pressure_request=0 #刹车行程~%# Reserve_2=0~%# Target_turn_light=0~%int8 Door_control    #门控 0-停止 1-开门 2-关门~%# Reserve_3=0~%~%int8 flag # 发送到线控成功~%~%# operate = 0 # 采棉动作流程~%# unloading = 0# 卸棉流程~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehOperatingData)))
  "Returns full string definition for message of type 'VehOperatingData"
  (cl:format cl:nil "# float64  timestamp  # 数据帧时间戳~%# float32  cotton_picker_fan_Enabler    #  使能采头与风机，1-使能；0-保持不变；~%# float32  cotton_bin_upper    # 升棉箱指令，1-提升；0-保持不变；~%# uint8  cotton_bin_lower   # 降棉箱指令，1-降低；0-保持不变；~%# uint8  cotton_bin_tilting   #  棉箱倾斜指令（需要持续作用，长按），1-倾斜；0-保持不变；~%# uint8  cotton_bin_restore # 棉箱回正指令（需要持续作用，长按），1-回正；0-保持不变；~%# uint8  cotton_unload  # 卸棉花指令（传送带），1-卸载；0-保持不变；~%# float32  process_time    # 进程处理时间~%~%# int8 operate# 0-不使能 1-使能~%# int8 unloading # 0-不使能 1-使能~%~%~%~%# 10.17 cyun~%int8 cotton_box_control   #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 ~%# int8 cotton_picker_enable       # 采头风机使能 0-不使能 1-使能 ~%int8 cotton_unloading         # 卸棉传送带  0-关闭 1-启动~%# auto_enable= 1           #enable_single;~%# speed_range= 0                  ~%# throttle_opening=0  #-100~~100       ~%int8 Head_control    #1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能） ~%int8 Engine_power     # 1-低速 2-中速 3-高速               ~%int8 Target_Fan_gear  # 采头风机 0-不接通 1-风机 2-采头风机~%# Reserve_1=0       # 驻车信号 0-驻车 1-取消~%# Target_steering_angle = 0 #方向盘转角~%# brake_enable=0  #刹车使能~%# brake_pressure_request=0 #刹车行程~%# Reserve_2=0~%# Target_turn_light=0~%int8 Door_control    #门控 0-停止 1-开门 2-关门~%# Reserve_3=0~%~%int8 flag # 发送到线控成功~%~%# operate = 0 # 采棉动作流程~%# unloading = 0# 卸棉流程~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehOperatingData>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehOperatingData>))
  "Converts a ROS message object to a list"
  (cl:list 'VehOperatingData
    (cl:cons ':cotton_box_control (cotton_box_control msg))
    (cl:cons ':cotton_unloading (cotton_unloading msg))
    (cl:cons ':Head_control (Head_control msg))
    (cl:cons ':Engine_power (Engine_power msg))
    (cl:cons ':Target_Fan_gear (Target_Fan_gear msg))
    (cl:cons ':Door_control (Door_control msg))
    (cl:cons ':flag (flag msg))
))
