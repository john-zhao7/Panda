;; Auto-generated. Do not edit!


(when (boundp 'lidar::LidarObject)
  (if (not (find-package "LIDAR"))
    (make-package "LIDAR"))
  (shadow 'LidarObject (find-package "LIDAR")))
(unless (find-package "LIDAR::LIDAROBJECT")
  (make-package "LIDAR::LIDAROBJECT"))

(in-package "ROS")
;;//! \htmlinclude LidarObject.msg.html


(defclass lidar::LidarObject
  :super ros::object
  :slots (_id _type _exist_con _vel_x _vel_y _vel_z _dis_x _dis_y _dis_z _acc_x _acc_y _acc_z _object_x _object_y _object_z _core_x _core_y _core_z _attention_type _motion_state _age _tra_id ))

(defmethod lidar::LidarObject
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:exist_con __exist_con) 0.0)
    ((:vel_x __vel_x) 0.0)
    ((:vel_y __vel_y) 0.0)
    ((:vel_z __vel_z) 0.0)
    ((:dis_x __dis_x) 0.0)
    ((:dis_y __dis_y) 0.0)
    ((:dis_z __dis_z) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    ((:object_x __object_x) 0.0)
    ((:object_y __object_y) 0.0)
    ((:object_z __object_z) 0.0)
    ((:core_x __core_x) 0.0)
    ((:core_y __core_y) 0.0)
    ((:core_z __core_z) 0.0)
    ((:attention_type __attention_type) 0)
    ((:motion_state __motion_state) 0)
    ((:age __age) 0.0)
    ((:tra_id __tra_id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _exist_con (float __exist_con))
   (setq _vel_x (float __vel_x))
   (setq _vel_y (float __vel_y))
   (setq _vel_z (float __vel_z))
   (setq _dis_x (float __dis_x))
   (setq _dis_y (float __dis_y))
   (setq _dis_z (float __dis_z))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   (setq _object_x (float __object_x))
   (setq _object_y (float __object_y))
   (setq _object_z (float __object_z))
   (setq _core_x (float __core_x))
   (setq _core_y (float __core_y))
   (setq _core_z (float __core_z))
   (setq _attention_type (round __attention_type))
   (setq _motion_state (round __motion_state))
   (setq _age (float __age))
   (setq _tra_id (round __tra_id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:exist_con
   (&optional __exist_con)
   (if __exist_con (setq _exist_con __exist_con)) _exist_con)
  (:vel_x
   (&optional __vel_x)
   (if __vel_x (setq _vel_x __vel_x)) _vel_x)
  (:vel_y
   (&optional __vel_y)
   (if __vel_y (setq _vel_y __vel_y)) _vel_y)
  (:vel_z
   (&optional __vel_z)
   (if __vel_z (setq _vel_z __vel_z)) _vel_z)
  (:dis_x
   (&optional __dis_x)
   (if __dis_x (setq _dis_x __dis_x)) _dis_x)
  (:dis_y
   (&optional __dis_y)
   (if __dis_y (setq _dis_y __dis_y)) _dis_y)
  (:dis_z
   (&optional __dis_z)
   (if __dis_z (setq _dis_z __dis_z)) _dis_z)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:object_x
   (&optional __object_x)
   (if __object_x (setq _object_x __object_x)) _object_x)
  (:object_y
   (&optional __object_y)
   (if __object_y (setq _object_y __object_y)) _object_y)
  (:object_z
   (&optional __object_z)
   (if __object_z (setq _object_z __object_z)) _object_z)
  (:core_x
   (&optional __core_x)
   (if __core_x (setq _core_x __core_x)) _core_x)
  (:core_y
   (&optional __core_y)
   (if __core_y (setq _core_y __core_y)) _core_y)
  (:core_z
   (&optional __core_z)
   (if __core_z (setq _core_z __core_z)) _core_z)
  (:attention_type
   (&optional __attention_type)
   (if __attention_type (setq _attention_type __attention_type)) _attention_type)
  (:motion_state
   (&optional __motion_state)
   (if __motion_state (setq _motion_state __motion_state)) _motion_state)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:tra_id
   (&optional __tra_id)
   (if __tra_id (setq _tra_id __tra_id)) _tra_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _type
    1
    ;; float32 _exist_con
    4
    ;; float32 _vel_x
    4
    ;; float32 _vel_y
    4
    ;; float32 _vel_z
    4
    ;; float32 _dis_x
    4
    ;; float32 _dis_y
    4
    ;; float32 _dis_z
    4
    ;; float32 _acc_x
    4
    ;; float32 _acc_y
    4
    ;; float32 _acc_z
    4
    ;; float32 _object_x
    4
    ;; float32 _object_y
    4
    ;; float32 _object_z
    4
    ;; float32 _core_x
    4
    ;; float32 _core_y
    4
    ;; float32 _core_z
    4
    ;; uint8 _attention_type
    1
    ;; uint8 _motion_state
    1
    ;; float32 _age
    4
    ;; uint8 _tra_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _exist_con
       (sys::poke _exist_con (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_x
       (sys::poke _vel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_y
       (sys::poke _vel_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_z
       (sys::poke _vel_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_x
       (sys::poke _dis_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_y
       (sys::poke _dis_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_z
       (sys::poke _dis_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _object_x
       (sys::poke _object_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _object_y
       (sys::poke _object_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _object_z
       (sys::poke _object_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _core_x
       (sys::poke _core_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _core_y
       (sys::poke _core_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _core_z
       (sys::poke _core_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _attention_type
       (write-byte _attention_type s)
     ;; uint8 _motion_state
       (write-byte _motion_state s)
     ;; float32 _age
       (sys::poke _age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _tra_id
       (write-byte _tra_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _exist_con
     (setq _exist_con (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_x
     (setq _vel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_y
     (setq _vel_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_z
     (setq _vel_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_x
     (setq _dis_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_y
     (setq _dis_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_z
     (setq _dis_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_x
     (setq _acc_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_y
     (setq _acc_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_z
     (setq _acc_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _object_x
     (setq _object_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _object_y
     (setq _object_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _object_z
     (setq _object_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _core_x
     (setq _core_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _core_y
     (setq _core_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _core_z
     (setq _core_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _attention_type
     (setq _attention_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motion_state
     (setq _motion_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _age
     (setq _age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _tra_id
     (setq _tra_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lidar::LidarObject :md5sum-) "27ffc99628ee0a3fb5403a184a2873f3")
(setf (get lidar::LidarObject :datatype-) "lidar/LidarObject")
(setf (get lidar::LidarObject :definition-)
      "
uint8 id
uint8 type
float32 exist_con
float32 vel_x
float32 vel_y
float32 vel_z
float32 dis_x
float32 dis_y
float32 dis_z
float32 acc_x
float32 acc_y
float32 acc_z
float32 object_x
float32 object_y
float32 object_z
float32 core_x
float32 core_y
float32 core_z
uint8 attention_type
uint8   motion_state
float32 age
uint8 tra_id

")



(provide :lidar/LidarObject "27ffc99628ee0a3fb5403a184a2873f3")


