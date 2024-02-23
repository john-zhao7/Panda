;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::LocalPathPlanningInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'LocalPathPlanningInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::LOCALPATHPLANNINGINTERFACE")
  (make-package "CAR_INTERFACES::LOCALPATHPLANNINGINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude LocalPathPlanningInterface.msg.html


(defclass car_interfaces::LocalPathPlanningInterface
  :super ros::object
  :slots (_timestamp _startpoint _endpoint _routedata _routedata_fix _process_time _len_path _plan_over ))

(defmethod car_interfaces::LocalPathPlanningInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:startpoint __startpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:endpoint __endpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:routedata __routedata) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:routedata_fix __routedata_fix) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:process_time __process_time) 0.0)
    ((:len_path __len_path) 0)
    ((:plan_over __plan_over) 0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _startpoint __startpoint)
   (setq _endpoint __endpoint)
   (setq _routedata __routedata)
   (setq _routedata_fix __routedata_fix)
   (setq _process_time (float __process_time))
   (setq _len_path (round __len_path))
   (setq _plan_over (round __plan_over))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:startpoint
   (&optional __startpoint)
   (if __startpoint (setq _startpoint __startpoint)) _startpoint)
  (:endpoint
   (&optional __endpoint)
   (if __endpoint (setq _endpoint __endpoint)) _endpoint)
  (:routedata
   (&optional __routedata)
   (if __routedata (setq _routedata __routedata)) _routedata)
  (:routedata_fix
   (&optional __routedata_fix)
   (if __routedata_fix (setq _routedata_fix __routedata_fix)) _routedata_fix)
  (:process_time
   (&optional __process_time)
   (if __process_time (setq _process_time __process_time)) _process_time)
  (:len_path
   (&optional __len_path)
   (if __len_path (setq _len_path __len_path)) _len_path)
  (:plan_over
   (&optional __plan_over)
   (if __plan_over (setq _plan_over __plan_over)) _plan_over)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; float32[] _startpoint
    (* 4    (length _startpoint)) 4
    ;; float32[] _endpoint
    (* 4    (length _endpoint)) 4
    ;; string[] _routedata
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _routedata)) 4
    ;; string[] _routedata_fix
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _routedata_fix)) 4
    ;; float32 _process_time
    4
    ;; int32 _len_path
    4
    ;; int8 _plan_over
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32[] _startpoint
     (write-long (length _startpoint) s)
     (dotimes (i (length _startpoint))
       (sys::poke (elt _startpoint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _endpoint
     (write-long (length _endpoint) s)
     (dotimes (i (length _endpoint))
       (sys::poke (elt _endpoint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _routedata
     (write-long (length _routedata) s)
     (dolist (elem _routedata)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _routedata_fix
     (write-long (length _routedata_fix) s)
     (dolist (elem _routedata_fix)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32 _process_time
       (sys::poke _process_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _len_path
       (write-long _len_path s)
     ;; int8 _plan_over
       (write-byte _plan_over s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32[] _startpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _startpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _startpoint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _endpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _endpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _endpoint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _routedata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _routedata (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _routedata i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _routedata_fix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _routedata_fix (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _routedata_fix i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _len_path
     (setq _len_path (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _plan_over
     (setq _plan_over (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _plan_over 127) (setq _plan_over (- _plan_over 256)))
   ;;
   self)
  )

(setf (get car_interfaces::LocalPathPlanningInterface :md5sum-) "95d098a26eb7d556e883061d346e2f5c")
(setf (get car_interfaces::LocalPathPlanningInterface :datatype-) "car_interfaces/LocalPathPlanningInterface")
(setf (get car_interfaces::LocalPathPlanningInterface :definition-)
      "# float64  timestamp  #时间戳
# float32[]  startpoint   #起点位置，先经后纬
# float32[]   endpoint    #终点位置，先经后纬
# float32[]   longitude        # 途径点经度
# float32[]   latitude         # 途径点纬度
# float32[]   speed         # 途径点速度
# float32[]   angle         # 途径点速度角度（航向角角度）
# float32[]   kapa         # 途径点曲率
# float32  process_time    # 进程处理时间



float64  timestamp  #时间戳

float32[]  startpoint   #局部路径起点位置
float32[]   endpoint    #局部路径终点位置
string[]   routedata   # 局部路径集合（没有修正路径）
string[]   routedata_fix   # 修正后的局部路径集合（没有修正路径）

float32  process_time    # 进程处理时间
int32 len_path # 全局路径的长度
#int8 Global_Path_End_Flag #终点置1，其他0
int8 plan_over #0-等待规划完成 1-本次规划结束
")



(provide :car_interfaces/LocalPathPlanningInterface "95d098a26eb7d556e883061d346e2f5c")


