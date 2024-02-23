;; Auto-generated. Do not edit!


(when (boundp 'hmi::NodePointsInterface)
  (if (not (find-package "HMI"))
    (make-package "HMI"))
  (shadow 'NodePointsInterface (find-package "HMI")))
(unless (find-package "HMI::NODEPOINTSINTERFACE")
  (make-package "HMI::NODEPOINTSINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude NodePointsInterface.msg.html


(defclass hmi::NodePointsInterface
  :super ros::object
  :slots (_stationpoint _incppoint ))

(defmethod hmi::NodePointsInterface
  (:init
   (&key
    ((:stationpoint __stationpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:incppoint __incppoint) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stationpoint __stationpoint)
   (setq _incppoint __incppoint)
   self)
  (:stationpoint
   (&optional __stationpoint)
   (if __stationpoint (setq _stationpoint __stationpoint)) _stationpoint)
  (:incppoint
   (&optional __incppoint)
   (if __incppoint (setq _incppoint __incppoint)) _incppoint)
  (:serialization-length
   ()
   (+
    ;; float64[] _stationpoint
    (* 8    (length _stationpoint)) 4
    ;; float64[] _incppoint
    (* 8    (length _incppoint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _stationpoint
     (write-long (length _stationpoint) s)
     (dotimes (i (length _stationpoint))
       (sys::poke (elt _stationpoint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _incppoint
     (write-long (length _incppoint) s)
     (dotimes (i (length _incppoint))
       (sys::poke (elt _incppoint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _stationpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stationpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _stationpoint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _incppoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _incppoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _incppoint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hmi::NodePointsInterface :md5sum-) "7d98513179a031ba600954534b7ca6bb")
(setf (get hmi::NodePointsInterface :datatype-) "hmi/NodePointsInterface")
(setf (get hmi::NodePointsInterface :definition-)
      "float64[]  stationpoint   #站点信息集，先经后纬
float64[]  incppoint      #路口信息集，先经后纬

")



(provide :hmi/NodePointsInterface "7d98513179a031ba600954534b7ca6bb")


