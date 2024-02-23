;; Auto-generated. Do not edit!


(when (boundp 'hmi::GlobalPathPlanningInterface)
  (if (not (find-package "HMI"))
    (make-package "HMI"))
  (shadow 'GlobalPathPlanningInterface (find-package "HMI")))
(unless (find-package "HMI::GLOBALPATHPLANNINGINTERFACE")
  (make-package "HMI::GLOBALPATHPLANNINGINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude GlobalPathPlanningInterface.msg.html


(defclass hmi::GlobalPathPlanningInterface
  :super ros::object
  :slots (_timestamp _startpoint _endpoint _routedata _process_time _Global_Path_Segment_Index _len_path _last_point _plan_over _x_list _y_list ))

(defmethod hmi::GlobalPathPlanningInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:startpoint __startpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:endpoint __endpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:routedata __routedata) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:process_time __process_time) 0.0)
    ((:Global_Path_Segment_Index __Global_Path_Segment_Index) 0)
    ((:len_path __len_path) 0)
    ((:last_point __last_point) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:plan_over __plan_over) 0)
    ((:x_list __x_list) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_list __y_list) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _startpoint __startpoint)
   (setq _endpoint __endpoint)
   (setq _routedata __routedata)
   (setq _process_time (float __process_time))
   (setq _Global_Path_Segment_Index (round __Global_Path_Segment_Index))
   (setq _len_path (round __len_path))
   (setq _last_point __last_point)
   (setq _plan_over (round __plan_over))
   (setq _x_list __x_list)
   (setq _y_list __y_list)
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
  (:process_time
   (&optional __process_time)
   (if __process_time (setq _process_time __process_time)) _process_time)
  (:Global_Path_Segment_Index
   (&optional __Global_Path_Segment_Index)
   (if __Global_Path_Segment_Index (setq _Global_Path_Segment_Index __Global_Path_Segment_Index)) _Global_Path_Segment_Index)
  (:len_path
   (&optional __len_path)
   (if __len_path (setq _len_path __len_path)) _len_path)
  (:last_point
   (&optional __last_point)
   (if __last_point (setq _last_point __last_point)) _last_point)
  (:plan_over
   (&optional __plan_over)
   (if __plan_over (setq _plan_over __plan_over)) _plan_over)
  (:x_list
   (&optional __x_list)
   (if __x_list (setq _x_list __x_list)) _x_list)
  (:y_list
   (&optional __y_list)
   (if __y_list (setq _y_list __y_list)) _y_list)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; float64[] _startpoint
    (* 8    (length _startpoint)) 4
    ;; float64[] _endpoint
    (* 8    (length _endpoint)) 4
    ;; string[] _routedata
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _routedata)) 4
    ;; float32 _process_time
    4
    ;; int32 _Global_Path_Segment_Index
    4
    ;; int32 _len_path
    4
    ;; float32[] _last_point
    (* 4    (length _last_point)) 4
    ;; int8 _plan_over
    1
    ;; float64[] _x_list
    (* 8    (length _x_list)) 4
    ;; float64[] _y_list
    (* 8    (length _y_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _startpoint
     (write-long (length _startpoint) s)
     (dotimes (i (length _startpoint))
       (sys::poke (elt _startpoint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _endpoint
     (write-long (length _endpoint) s)
     (dotimes (i (length _endpoint))
       (sys::poke (elt _endpoint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _routedata
     (write-long (length _routedata) s)
     (dolist (elem _routedata)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32 _process_time
       (sys::poke _process_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _Global_Path_Segment_Index
       (write-long _Global_Path_Segment_Index s)
     ;; int32 _len_path
       (write-long _len_path s)
     ;; float32[] _last_point
     (write-long (length _last_point) s)
     (dotimes (i (length _last_point))
       (sys::poke (elt _last_point i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8 _plan_over
       (write-byte _plan_over s)
     ;; float64[] _x_list
     (write-long (length _x_list) s)
     (dotimes (i (length _x_list))
       (sys::poke (elt _x_list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y_list
     (write-long (length _y_list) s)
     (dotimes (i (length _y_list))
       (sys::poke (elt _y_list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _startpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _startpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _startpoint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _endpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _endpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _endpoint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _routedata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _routedata (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _routedata i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _Global_Path_Segment_Index
     (setq _Global_Path_Segment_Index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _len_path
     (setq _len_path (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _last_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _last_point (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _last_point i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int8 _plan_over
     (setq _plan_over (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _plan_over 127) (setq _plan_over (- _plan_over 256)))
   ;; float64[] _x_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hmi::GlobalPathPlanningInterface :md5sum-) "ec3972cc1c6335e1c2839cc4a004782b")
(setf (get hmi::GlobalPathPlanningInterface :datatype-) "hmi/GlobalPathPlanningInterface")
(setf (get hmi::GlobalPathPlanningInterface :definition-)
      "float64  timestamp  #时间戳
float64[]  startpoint   #起点位置
float64[]   endpoint    #终点位置
string[]   routedata   #路径集合（所有途径点的集合）
float32  process_time    # 进程处理时间
int32 Global_Path_Segment_Index # 从1开始累加

int32 len_path # 全局路径的长度

#int8 Global_Path_End_Flag #终点置1，其他0
float32[]   last_point

int8 plan_over #0-等待规划完成 1-本次规划结束

float64[] x_list
float64[] y_list

")



(provide :hmi/GlobalPathPlanningInterface "ec3972cc1c6335e1c2839cc4a004782b")


