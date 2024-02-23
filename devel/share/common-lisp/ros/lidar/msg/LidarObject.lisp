; Auto-generated. Do not edit!


(cl:in-package lidar-msg)


;//! \htmlinclude LidarObject.msg.html

(cl:defclass <LidarObject> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (exist_con
    :reader exist_con
    :initarg :exist_con
    :type cl:float
    :initform 0.0)
   (vel_x
    :reader vel_x
    :initarg :vel_x
    :type cl:float
    :initform 0.0)
   (vel_y
    :reader vel_y
    :initarg :vel_y
    :type cl:float
    :initform 0.0)
   (vel_z
    :reader vel_z
    :initarg :vel_z
    :type cl:float
    :initform 0.0)
   (dis_x
    :reader dis_x
    :initarg :dis_x
    :type cl:float
    :initform 0.0)
   (dis_y
    :reader dis_y
    :initarg :dis_y
    :type cl:float
    :initform 0.0)
   (dis_z
    :reader dis_z
    :initarg :dis_z
    :type cl:float
    :initform 0.0)
   (acc_x
    :reader acc_x
    :initarg :acc_x
    :type cl:float
    :initform 0.0)
   (acc_y
    :reader acc_y
    :initarg :acc_y
    :type cl:float
    :initform 0.0)
   (acc_z
    :reader acc_z
    :initarg :acc_z
    :type cl:float
    :initform 0.0)
   (object_x
    :reader object_x
    :initarg :object_x
    :type cl:float
    :initform 0.0)
   (object_y
    :reader object_y
    :initarg :object_y
    :type cl:float
    :initform 0.0)
   (object_z
    :reader object_z
    :initarg :object_z
    :type cl:float
    :initform 0.0)
   (core_x
    :reader core_x
    :initarg :core_x
    :type cl:float
    :initform 0.0)
   (core_y
    :reader core_y
    :initarg :core_y
    :type cl:float
    :initform 0.0)
   (core_z
    :reader core_z
    :initarg :core_z
    :type cl:float
    :initform 0.0)
   (attention_type
    :reader attention_type
    :initarg :attention_type
    :type cl:fixnum
    :initform 0)
   (motion_state
    :reader motion_state
    :initarg :motion_state
    :type cl:fixnum
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:float
    :initform 0.0)
   (tra_id
    :reader tra_id
    :initarg :tra_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarObject (<LidarObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar-msg:<LidarObject> is deprecated: use lidar-msg:LidarObject instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:id-val is deprecated.  Use lidar-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:type-val is deprecated.  Use lidar-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'exist_con-val :lambda-list '(m))
(cl:defmethod exist_con-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:exist_con-val is deprecated.  Use lidar-msg:exist_con instead.")
  (exist_con m))

(cl:ensure-generic-function 'vel_x-val :lambda-list '(m))
(cl:defmethod vel_x-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:vel_x-val is deprecated.  Use lidar-msg:vel_x instead.")
  (vel_x m))

(cl:ensure-generic-function 'vel_y-val :lambda-list '(m))
(cl:defmethod vel_y-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:vel_y-val is deprecated.  Use lidar-msg:vel_y instead.")
  (vel_y m))

(cl:ensure-generic-function 'vel_z-val :lambda-list '(m))
(cl:defmethod vel_z-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:vel_z-val is deprecated.  Use lidar-msg:vel_z instead.")
  (vel_z m))

(cl:ensure-generic-function 'dis_x-val :lambda-list '(m))
(cl:defmethod dis_x-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:dis_x-val is deprecated.  Use lidar-msg:dis_x instead.")
  (dis_x m))

(cl:ensure-generic-function 'dis_y-val :lambda-list '(m))
(cl:defmethod dis_y-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:dis_y-val is deprecated.  Use lidar-msg:dis_y instead.")
  (dis_y m))

(cl:ensure-generic-function 'dis_z-val :lambda-list '(m))
(cl:defmethod dis_z-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:dis_z-val is deprecated.  Use lidar-msg:dis_z instead.")
  (dis_z m))

(cl:ensure-generic-function 'acc_x-val :lambda-list '(m))
(cl:defmethod acc_x-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:acc_x-val is deprecated.  Use lidar-msg:acc_x instead.")
  (acc_x m))

(cl:ensure-generic-function 'acc_y-val :lambda-list '(m))
(cl:defmethod acc_y-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:acc_y-val is deprecated.  Use lidar-msg:acc_y instead.")
  (acc_y m))

(cl:ensure-generic-function 'acc_z-val :lambda-list '(m))
(cl:defmethod acc_z-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:acc_z-val is deprecated.  Use lidar-msg:acc_z instead.")
  (acc_z m))

(cl:ensure-generic-function 'object_x-val :lambda-list '(m))
(cl:defmethod object_x-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:object_x-val is deprecated.  Use lidar-msg:object_x instead.")
  (object_x m))

(cl:ensure-generic-function 'object_y-val :lambda-list '(m))
(cl:defmethod object_y-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:object_y-val is deprecated.  Use lidar-msg:object_y instead.")
  (object_y m))

(cl:ensure-generic-function 'object_z-val :lambda-list '(m))
(cl:defmethod object_z-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:object_z-val is deprecated.  Use lidar-msg:object_z instead.")
  (object_z m))

(cl:ensure-generic-function 'core_x-val :lambda-list '(m))
(cl:defmethod core_x-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:core_x-val is deprecated.  Use lidar-msg:core_x instead.")
  (core_x m))

(cl:ensure-generic-function 'core_y-val :lambda-list '(m))
(cl:defmethod core_y-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:core_y-val is deprecated.  Use lidar-msg:core_y instead.")
  (core_y m))

(cl:ensure-generic-function 'core_z-val :lambda-list '(m))
(cl:defmethod core_z-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:core_z-val is deprecated.  Use lidar-msg:core_z instead.")
  (core_z m))

(cl:ensure-generic-function 'attention_type-val :lambda-list '(m))
(cl:defmethod attention_type-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:attention_type-val is deprecated.  Use lidar-msg:attention_type instead.")
  (attention_type m))

(cl:ensure-generic-function 'motion_state-val :lambda-list '(m))
(cl:defmethod motion_state-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:motion_state-val is deprecated.  Use lidar-msg:motion_state instead.")
  (motion_state m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:age-val is deprecated.  Use lidar-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'tra_id-val :lambda-list '(m))
(cl:defmethod tra_id-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar-msg:tra_id-val is deprecated.  Use lidar-msg:tra_id instead.")
  (tra_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarObject>) ostream)
  "Serializes a message object of type '<LidarObject>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'exist_con))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'object_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'object_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'object_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'core_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'core_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'core_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'attention_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tra_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarObject>) istream)
  "Deserializes a message object of type '<LidarObject>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'exist_con) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'core_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'core_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'core_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'attention_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tra_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarObject>)))
  "Returns string type for a message object of type '<LidarObject>"
  "lidar/LidarObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarObject)))
  "Returns string type for a message object of type 'LidarObject"
  "lidar/LidarObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarObject>)))
  "Returns md5sum for a message object of type '<LidarObject>"
  "27ffc99628ee0a3fb5403a184a2873f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarObject)))
  "Returns md5sum for a message object of type 'LidarObject"
  "27ffc99628ee0a3fb5403a184a2873f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarObject>)))
  "Returns full string definition for message of type '<LidarObject>"
  (cl:format cl:nil "~%uint8 id~%uint8 type~%float32 exist_con~%float32 vel_x~%float32 vel_y~%float32 vel_z~%float32 dis_x~%float32 dis_y~%float32 dis_z~%float32 acc_x~%float32 acc_y~%float32 acc_z~%float32 object_x~%float32 object_y~%float32 object_z~%float32 core_x~%float32 core_y~%float32 core_z~%uint8 attention_type~%uint8   motion_state~%float32 age~%uint8 tra_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarObject)))
  "Returns full string definition for message of type 'LidarObject"
  (cl:format cl:nil "~%uint8 id~%uint8 type~%float32 exist_con~%float32 vel_x~%float32 vel_y~%float32 vel_z~%float32 dis_x~%float32 dis_y~%float32 dis_z~%float32 acc_x~%float32 acc_y~%float32 acc_z~%float32 object_x~%float32 object_y~%float32 object_z~%float32 core_x~%float32 core_y~%float32 core_z~%uint8 attention_type~%uint8   motion_state~%float32 age~%uint8 tra_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarObject>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarObject>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarObject
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':exist_con (exist_con msg))
    (cl:cons ':vel_x (vel_x msg))
    (cl:cons ':vel_y (vel_y msg))
    (cl:cons ':vel_z (vel_z msg))
    (cl:cons ':dis_x (dis_x msg))
    (cl:cons ':dis_y (dis_y msg))
    (cl:cons ':dis_z (dis_z msg))
    (cl:cons ':acc_x (acc_x msg))
    (cl:cons ':acc_y (acc_y msg))
    (cl:cons ':acc_z (acc_z msg))
    (cl:cons ':object_x (object_x msg))
    (cl:cons ':object_y (object_y msg))
    (cl:cons ':object_z (object_z msg))
    (cl:cons ':core_x (core_x msg))
    (cl:cons ':core_y (core_y msg))
    (cl:cons ':core_z (core_z msg))
    (cl:cons ':attention_type (attention_type msg))
    (cl:cons ':motion_state (motion_state msg))
    (cl:cons ':age (age msg))
    (cl:cons ':tra_id (tra_id msg))
))
