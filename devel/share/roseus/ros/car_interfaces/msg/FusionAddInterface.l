;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::FusionAddInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'FusionAddInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::FUSIONADDINTERFACE")
  (make-package "CAR_INTERFACES::FUSIONADDINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude FusionAddInterface.msg.html


(defclass car_interfaces::FusionAddInterface
  :super ros::object
  :slots (_id _carlength _carwidth _carheight _eastvelocity _northvelocity _skyvelocity _wx _wy _wz _ax _ay _az ))

(defmethod car_interfaces::FusionAddInterface
  (:init
   (&key
    ((:id __id) 0)
    ((:carlength __carlength) 0.0)
    ((:carwidth __carwidth) 0.0)
    ((:carheight __carheight) 0.0)
    ((:eastvelocity __eastvelocity) 0.0)
    ((:northvelocity __northvelocity) 0.0)
    ((:skyvelocity __skyvelocity) 0.0)
    ((:wx __wx) 0.0)
    ((:wy __wy) 0.0)
    ((:wz __wz) 0.0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _carlength (float __carlength))
   (setq _carwidth (float __carwidth))
   (setq _carheight (float __carheight))
   (setq _eastvelocity (float __eastvelocity))
   (setq _northvelocity (float __northvelocity))
   (setq _skyvelocity (float __skyvelocity))
   (setq _wx (float __wx))
   (setq _wy (float __wy))
   (setq _wz (float __wz))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:carlength
   (&optional __carlength)
   (if __carlength (setq _carlength __carlength)) _carlength)
  (:carwidth
   (&optional __carwidth)
   (if __carwidth (setq _carwidth __carwidth)) _carwidth)
  (:carheight
   (&optional __carheight)
   (if __carheight (setq _carheight __carheight)) _carheight)
  (:eastvelocity
   (&optional __eastvelocity)
   (if __eastvelocity (setq _eastvelocity __eastvelocity)) _eastvelocity)
  (:northvelocity
   (&optional __northvelocity)
   (if __northvelocity (setq _northvelocity __northvelocity)) _northvelocity)
  (:skyvelocity
   (&optional __skyvelocity)
   (if __skyvelocity (setq _skyvelocity __skyvelocity)) _skyvelocity)
  (:wx
   (&optional __wx)
   (if __wx (setq _wx __wx)) _wx)
  (:wy
   (&optional __wy)
   (if __wy (setq _wy __wy)) _wy)
  (:wz
   (&optional __wz)
   (if __wz (setq _wz __wz)) _wz)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32 _carlength
    4
    ;; float32 _carwidth
    4
    ;; float32 _carheight
    4
    ;; float32 _eastvelocity
    4
    ;; float32 _northvelocity
    4
    ;; float32 _skyvelocity
    4
    ;; float32 _wx
    4
    ;; float32 _wy
    4
    ;; float32 _wz
    4
    ;; float32 _ax
    4
    ;; float32 _ay
    4
    ;; float32 _az
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _carlength
       (sys::poke _carlength (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _carwidth
       (sys::poke _carwidth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _carheight
       (sys::poke _carheight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eastvelocity
       (sys::poke _eastvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _northvelocity
       (sys::poke _northvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _skyvelocity
       (sys::poke _skyvelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wx
       (sys::poke _wx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wy
       (sys::poke _wy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wz
       (sys::poke _wz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az
       (sys::poke _az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _carlength
     (setq _carlength (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _carwidth
     (setq _carwidth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _carheight
     (setq _carheight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eastvelocity
     (setq _eastvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _northvelocity
     (setq _northvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _skyvelocity
     (setq _skyvelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wx
     (setq _wx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wy
     (setq _wy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wz
     (setq _wz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ax
     (setq _ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ay
     (setq _ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az
     (setq _az (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::FusionAddInterface :md5sum-) "237330b40296f4bbfbedaab80a131550")
(setf (get car_interfaces::FusionAddInterface :datatype-) "car_interfaces/FusionAddInterface")
(setf (get car_interfaces::FusionAddInterface :definition-)
      "uint8  id   # 车辆ID
float32  carlength         # 车长m
float32  carwidth         # 车宽m
float32  carheight         # 车高m
float32  eastvelocity         # 东向速度
float32  northvelocity        # 北向速度
float32  skyvelocity         # 天向速度
float32  wx         # 角速度x
float32  wy         # 角速度y
float32  wz         # 角速度z
float32  ax         # 加速度x
float32  ay         # 加速度y
float32  az         # 加速度z


")



(provide :car_interfaces/FusionAddInterface "237330b40296f4bbfbedaab80a131550")


