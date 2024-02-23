;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::SlamInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'SlamInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::SLAMINTERFACE")
  (make-package "CAR_INTERFACES::SLAMINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude SlamInterface.msg.html


(defclass car_interfaces::SlamInterface
  :super ros::object
  :slots (_data _state ))

(defmethod car_interfaces::SlamInterface
  (:init
   (&key
    ((:data __data) 0.0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _data (float __data))
   (setq _state (round __state))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; float32 _data
    4
    ;; int64 _state
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _state) (= (length (_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_state . bv) 0) 0) s)
              (write-long (ash (elt (_state . bv) 1) -1) s))
             ((and (class _state) (= (length (_state . bv)) 1)) ;; big1
              (write-long (elt (_state . bv) 0) s)
              (write-long (if (>= _state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _state s)(write-long (if (>= _state 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _state
#+(or :alpha :irix6 :x86_64)
      (setf _state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get car_interfaces::SlamInterface :md5sum-) "a7aa5f5b73ac197e5dd5cd573af2d428")
(setf (get car_interfaces::SlamInterface :datatype-) "car_interfaces/SlamInterface")
(setf (get car_interfaces::SlamInterface :definition-)
      "float32 data
int64 state

")



(provide :car_interfaces/SlamInterface "a7aa5f5b73ac197e5dd5cd573af2d428")


