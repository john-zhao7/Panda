; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude CarActionInterface.msg.html

(cl:defclass <CarActionInterface> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (operate
    :reader operate
    :initarg :operate
    :type cl:fixnum
    :initform 0)
   (unloading
    :reader unloading
    :initarg :unloading
    :type cl:fixnum
    :initform 0)
   (cotton_box_control
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
    :initform 0))
)

(cl:defclass CarActionInterface (<CarActionInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarActionInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarActionInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<CarActionInterface> is deprecated: use car_interfaces-msg:CarActionInterface instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:flag-val is deprecated.  Use car_interfaces-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'operate-val :lambda-list '(m))
(cl:defmethod operate-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:operate-val is deprecated.  Use car_interfaces-msg:operate instead.")
  (operate m))

(cl:ensure-generic-function 'unloading-val :lambda-list '(m))
(cl:defmethod unloading-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:unloading-val is deprecated.  Use car_interfaces-msg:unloading instead.")
  (unloading m))

(cl:ensure-generic-function 'cotton_box_control-val :lambda-list '(m))
(cl:defmethod cotton_box_control-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_box_control-val is deprecated.  Use car_interfaces-msg:cotton_box_control instead.")
  (cotton_box_control m))

(cl:ensure-generic-function 'cotton_unloading-val :lambda-list '(m))
(cl:defmethod cotton_unloading-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:cotton_unloading-val is deprecated.  Use car_interfaces-msg:cotton_unloading instead.")
  (cotton_unloading m))

(cl:ensure-generic-function 'Head_control-val :lambda-list '(m))
(cl:defmethod Head_control-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Head_control-val is deprecated.  Use car_interfaces-msg:Head_control instead.")
  (Head_control m))

(cl:ensure-generic-function 'Engine_power-val :lambda-list '(m))
(cl:defmethod Engine_power-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Engine_power-val is deprecated.  Use car_interfaces-msg:Engine_power instead.")
  (Engine_power m))

(cl:ensure-generic-function 'Target_Fan_gear-val :lambda-list '(m))
(cl:defmethod Target_Fan_gear-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Target_Fan_gear-val is deprecated.  Use car_interfaces-msg:Target_Fan_gear instead.")
  (Target_Fan_gear m))

(cl:ensure-generic-function 'Door_control-val :lambda-list '(m))
(cl:defmethod Door_control-val ((m <CarActionInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:Door_control-val is deprecated.  Use car_interfaces-msg:Door_control instead.")
  (Door_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarActionInterface>) ostream)
  "Serializes a message object of type '<CarActionInterface>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'operate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'unloading)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarActionInterface>) istream)
  "Deserializes a message object of type '<CarActionInterface>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operate) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unloading) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarActionInterface>)))
  "Returns string type for a message object of type '<CarActionInterface>"
  "car_interfaces/CarActionInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarActionInterface)))
  "Returns string type for a message object of type 'CarActionInterface"
  "car_interfaces/CarActionInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarActionInterface>)))
  "Returns md5sum for a message object of type '<CarActionInterface>"
  "ca82fc4562e5f4077985eac24b00c6b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarActionInterface)))
  "Returns md5sum for a message object of type 'CarActionInterface"
  "ca82fc4562e5f4077985eac24b00c6b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarActionInterface>)))
  "Returns full string definition for message of type '<CarActionInterface>"
  (cl:format cl:nil "# topic car_action_data~%int8 flag                       #标志位~%int8 operate #0-不使能 1-使能~%# 采头下降~%# 风机打开 ~%# 中速档~%# 风机采头打开  ~%# 高速档~%~%~%# 卸棉动作（全体）启动按钮~%int8 unloading # 0-不使能 1-使能~%# 棉线倾斜~%# 传送带  停留一段时间（按照装满来说是30s-1min吧）~%~%~%# 其余动作按钮~%int8 cotton_box_control 		 #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 ~%# int8 cotton_picker_enable      	 # 采头风机使能 0-不使能 1-使能 ~%int8 cotton_unloading                    # 卸棉传送带  0-关闭 1-启动~%int8 Head_control    			 # 0-不动作 1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能）~%int8 Engine_power     			 # 0-不动作 1-低速 2-中速 3-高速~%int8 Target_Fan_gear 			 # 采头风机 0-不接通 1-风机 2-采头风机~%int8 Door_control    			 #门控 0-停止 1-开门 2-关门~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarActionInterface)))
  "Returns full string definition for message of type 'CarActionInterface"
  (cl:format cl:nil "# topic car_action_data~%int8 flag                       #标志位~%int8 operate #0-不使能 1-使能~%# 采头下降~%# 风机打开 ~%# 中速档~%# 风机采头打开  ~%# 高速档~%~%~%# 卸棉动作（全体）启动按钮~%int8 unloading # 0-不使能 1-使能~%# 棉线倾斜~%# 传送带  停留一段时间（按照装满来说是30s-1min吧）~%~%~%# 其余动作按钮~%int8 cotton_box_control 		 #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 ~%# int8 cotton_picker_enable      	 # 采头风机使能 0-不使能 1-使能 ~%int8 cotton_unloading                    # 卸棉传送带  0-关闭 1-启动~%int8 Head_control    			 # 0-不动作 1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能）~%int8 Engine_power     			 # 0-不动作 1-低速 2-中速 3-高速~%int8 Target_Fan_gear 			 # 采头风机 0-不接通 1-风机 2-采头风机~%int8 Door_control    			 #门控 0-停止 1-开门 2-关门~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarActionInterface>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarActionInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'CarActionInterface
    (cl:cons ':flag (flag msg))
    (cl:cons ':operate (operate msg))
    (cl:cons ':unloading (unloading msg))
    (cl:cons ':cotton_box_control (cotton_box_control msg))
    (cl:cons ':cotton_unloading (cotton_unloading msg))
    (cl:cons ':Head_control (Head_control msg))
    (cl:cons ':Engine_power (Engine_power msg))
    (cl:cons ':Target_Fan_gear (Target_Fan_gear msg))
    (cl:cons ':Door_control (Door_control msg))
))
