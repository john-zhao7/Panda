; Auto-generated. Do not edit!


(cl:in-package car_interfaces-msg)


;//! \htmlinclude LocalPathPlanningInterface.msg.html

(cl:defclass <LocalPathPlanningInterface> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (startpoint
    :reader startpoint
    :initarg :startpoint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (endpoint
    :reader endpoint
    :initarg :endpoint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (routedata
    :reader routedata
    :initarg :routedata
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (routedata_fix
    :reader routedata_fix
    :initarg :routedata_fix
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (process_time
    :reader process_time
    :initarg :process_time
    :type cl:float
    :initform 0.0)
   (len_path
    :reader len_path
    :initarg :len_path
    :type cl:integer
    :initform 0)
   (plan_over
    :reader plan_over
    :initarg :plan_over
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocalPathPlanningInterface (<LocalPathPlanningInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalPathPlanningInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalPathPlanningInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_interfaces-msg:<LocalPathPlanningInterface> is deprecated: use car_interfaces-msg:LocalPathPlanningInterface instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <LocalPathPlanningInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:timestamp-val is deprecated.  Use car_interfaces-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'startpoint-val :lambda-list '(m))
(cl:defmethod startpoint-val ((m <LocalPathPlanningInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:startpoint-val is deprecated.  Use car_interfaces-msg:startpoint instead.")
  (startpoint m))

(cl:ensure-generic-function 'endpoint-val :lambda-list '(m))
(cl:defmethod endpoint-val ((m <LocalPathPlanningInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:endpoint-val is deprecated.  Use car_interfaces-msg:endpoint instead.")
  (endpoint m))

(cl:ensure-generic-function 'routedata-val :lambda-list '(m))
(cl:defmethod routedata-val ((m <LocalPathPlanningInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:routedata-val is deprecated.  Use car_interfaces-msg:routedata instead.")
  (routedata m))

(cl:ensure-generic-function 'routedata_fix-val :lambda-list '(m))
(cl:defmethod routedata_fix-val ((m <LocalPathPlanningInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:routedata_fix-val is deprecated.  Use car_interfaces-msg:routedata_fix instead.")
  (routedata_fix m))

(cl:ensure-generic-function 'process_time-val :lambda-list '(m))
(cl:defmethod process_time-val ((m <LocalPathPlanningInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:process_time-val is deprecated.  Use car_interfaces-msg:process_time instead.")
  (process_time m))

(cl:ensure-generic-function 'len_path-val :lambda-list '(m))
(cl:defmethod len_path-val ((m <LocalPathPlanningInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:len_path-val is deprecated.  Use car_interfaces-msg:len_path instead.")
  (len_path m))

(cl:ensure-generic-function 'plan_over-val :lambda-list '(m))
(cl:defmethod plan_over-val ((m <LocalPathPlanningInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_interfaces-msg:plan_over-val is deprecated.  Use car_interfaces-msg:plan_over instead.")
  (plan_over m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalPathPlanningInterface>) ostream)
  "Serializes a message object of type '<LocalPathPlanningInterface>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'startpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'startpoint))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'endpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'endpoint))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'routedata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'routedata))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'routedata_fix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'routedata_fix))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'process_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'len_path)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'plan_over)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalPathPlanningInterface>) istream)
  "Deserializes a message object of type '<LocalPathPlanningInterface>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'startpoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'startpoint)))
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
  (cl:setf (cl:slot-value msg 'endpoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'endpoint)))
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
  (cl:setf (cl:slot-value msg 'routedata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'routedata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'routedata_fix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'routedata_fix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'process_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'len_path) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plan_over) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalPathPlanningInterface>)))
  "Returns string type for a message object of type '<LocalPathPlanningInterface>"
  "car_interfaces/LocalPathPlanningInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalPathPlanningInterface)))
  "Returns string type for a message object of type 'LocalPathPlanningInterface"
  "car_interfaces/LocalPathPlanningInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalPathPlanningInterface>)))
  "Returns md5sum for a message object of type '<LocalPathPlanningInterface>"
  "95d098a26eb7d556e883061d346e2f5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalPathPlanningInterface)))
  "Returns md5sum for a message object of type 'LocalPathPlanningInterface"
  "95d098a26eb7d556e883061d346e2f5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalPathPlanningInterface>)))
  "Returns full string definition for message of type '<LocalPathPlanningInterface>"
  (cl:format cl:nil "# float64  timestamp  #时间戳~%# float32[]  startpoint   #起点位置，先经后纬~%# float32[]   endpoint    #终点位置，先经后纬~%# float32[]   longitude        # 途径点经度~%# float32[]   latitude         # 途径点纬度~%# float32[]   speed         # 途径点速度~%# float32[]   angle         # 途径点速度角度（航向角角度）~%# float32[]   kapa         # 途径点曲率~%# float32  process_time    # 进程处理时间~%~%~%~%float64  timestamp  #时间戳~%~%float32[]  startpoint   #局部路径起点位置~%float32[]   endpoint    #局部路径终点位置~%string[]   routedata   # 局部路径集合（没有修正路径）~%string[]   routedata_fix   # 修正后的局部路径集合（没有修正路径）~%~%float32  process_time    # 进程处理时间~%int32 len_path # 全局路径的长度~%#int8 Global_Path_End_Flag #终点置1，其他0~%int8 plan_over #0-等待规划完成 1-本次规划结束~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalPathPlanningInterface)))
  "Returns full string definition for message of type 'LocalPathPlanningInterface"
  (cl:format cl:nil "# float64  timestamp  #时间戳~%# float32[]  startpoint   #起点位置，先经后纬~%# float32[]   endpoint    #终点位置，先经后纬~%# float32[]   longitude        # 途径点经度~%# float32[]   latitude         # 途径点纬度~%# float32[]   speed         # 途径点速度~%# float32[]   angle         # 途径点速度角度（航向角角度）~%# float32[]   kapa         # 途径点曲率~%# float32  process_time    # 进程处理时间~%~%~%~%float64  timestamp  #时间戳~%~%float32[]  startpoint   #局部路径起点位置~%float32[]   endpoint    #局部路径终点位置~%string[]   routedata   # 局部路径集合（没有修正路径）~%string[]   routedata_fix   # 修正后的局部路径集合（没有修正路径）~%~%float32  process_time    # 进程处理时间~%int32 len_path # 全局路径的长度~%#int8 Global_Path_End_Flag #终点置1，其他0~%int8 plan_over #0-等待规划完成 1-本次规划结束~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalPathPlanningInterface>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'startpoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'endpoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'routedata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'routedata_fix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalPathPlanningInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalPathPlanningInterface
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':startpoint (startpoint msg))
    (cl:cons ':endpoint (endpoint msg))
    (cl:cons ':routedata (routedata msg))
    (cl:cons ':routedata_fix (routedata_fix msg))
    (cl:cons ':process_time (process_time msg))
    (cl:cons ':len_path (len_path msg))
    (cl:cons ':plan_over (plan_over msg))
))
