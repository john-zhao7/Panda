;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::CarActionInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'CarActionInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::CARACTIONINTERFACE")
  (make-package "CAR_INTERFACES::CARACTIONINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude CarActionInterface.msg.html


(defclass car_interfaces::CarActionInterface
  :super ros::object
  :slots (_flag _operate _unloading _cotton_box_control _cotton_unloading _Head_control _Engine_power _Target_Fan_gear _Door_control ))

(defmethod car_interfaces::CarActionInterface
  (:init
   (&key
    ((:flag __flag) 0)
    ((:operate __operate) 0)
    ((:unloading __unloading) 0)
    ((:cotton_box_control __cotton_box_control) 0)
    ((:cotton_unloading __cotton_unloading) 0)
    ((:Head_control __Head_control) 0)
    ((:Engine_power __Engine_power) 0)
    ((:Target_Fan_gear __Target_Fan_gear) 0)
    ((:Door_control __Door_control) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   (setq _operate (round __operate))
   (setq _unloading (round __unloading))
   (setq _cotton_box_control (round __cotton_box_control))
   (setq _cotton_unloading (round __cotton_unloading))
   (setq _Head_control (round __Head_control))
   (setq _Engine_power (round __Engine_power))
   (setq _Target_Fan_gear (round __Target_Fan_gear))
   (setq _Door_control (round __Door_control))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:operate
   (&optional __operate)
   (if __operate (setq _operate __operate)) _operate)
  (:unloading
   (&optional __unloading)
   (if __unloading (setq _unloading __unloading)) _unloading)
  (:cotton_box_control
   (&optional __cotton_box_control)
   (if __cotton_box_control (setq _cotton_box_control __cotton_box_control)) _cotton_box_control)
  (:cotton_unloading
   (&optional __cotton_unloading)
   (if __cotton_unloading (setq _cotton_unloading __cotton_unloading)) _cotton_unloading)
  (:Head_control
   (&optional __Head_control)
   (if __Head_control (setq _Head_control __Head_control)) _Head_control)
  (:Engine_power
   (&optional __Engine_power)
   (if __Engine_power (setq _Engine_power __Engine_power)) _Engine_power)
  (:Target_Fan_gear
   (&optional __Target_Fan_gear)
   (if __Target_Fan_gear (setq _Target_Fan_gear __Target_Fan_gear)) _Target_Fan_gear)
  (:Door_control
   (&optional __Door_control)
   (if __Door_control (setq _Door_control __Door_control)) _Door_control)
  (:serialization-length
   ()
   (+
    ;; int8 _flag
    1
    ;; int8 _operate
    1
    ;; int8 _unloading
    1
    ;; int8 _cotton_box_control
    1
    ;; int8 _cotton_unloading
    1
    ;; int8 _Head_control
    1
    ;; int8 _Engine_power
    1
    ;; int8 _Target_Fan_gear
    1
    ;; int8 _Door_control
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _flag
       (write-byte _flag s)
     ;; int8 _operate
       (write-byte _operate s)
     ;; int8 _unloading
       (write-byte _unloading s)
     ;; int8 _cotton_box_control
       (write-byte _cotton_box_control s)
     ;; int8 _cotton_unloading
       (write-byte _cotton_unloading s)
     ;; int8 _Head_control
       (write-byte _Head_control s)
     ;; int8 _Engine_power
       (write-byte _Engine_power s)
     ;; int8 _Target_Fan_gear
       (write-byte _Target_Fan_gear s)
     ;; int8 _Door_control
       (write-byte _Door_control s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _flag 127) (setq _flag (- _flag 256)))
   ;; int8 _operate
     (setq _operate (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _operate 127) (setq _operate (- _operate 256)))
   ;; int8 _unloading
     (setq _unloading (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _unloading 127) (setq _unloading (- _unloading 256)))
   ;; int8 _cotton_box_control
     (setq _cotton_box_control (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cotton_box_control 127) (setq _cotton_box_control (- _cotton_box_control 256)))
   ;; int8 _cotton_unloading
     (setq _cotton_unloading (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cotton_unloading 127) (setq _cotton_unloading (- _cotton_unloading 256)))
   ;; int8 _Head_control
     (setq _Head_control (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Head_control 127) (setq _Head_control (- _Head_control 256)))
   ;; int8 _Engine_power
     (setq _Engine_power (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Engine_power 127) (setq _Engine_power (- _Engine_power 256)))
   ;; int8 _Target_Fan_gear
     (setq _Target_Fan_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Target_Fan_gear 127) (setq _Target_Fan_gear (- _Target_Fan_gear 256)))
   ;; int8 _Door_control
     (setq _Door_control (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Door_control 127) (setq _Door_control (- _Door_control 256)))
   ;;
   self)
  )

(setf (get car_interfaces::CarActionInterface :md5sum-) "ca82fc4562e5f4077985eac24b00c6b1")
(setf (get car_interfaces::CarActionInterface :datatype-) "car_interfaces/CarActionInterface")
(setf (get car_interfaces::CarActionInterface :definition-)
      "# topic car_action_data
int8 flag                       #标志位
int8 operate #0-不使能 1-使能
# 采头下降
# 风机打开 
# 中速档
# 风机采头打开  
# 高速档


# 卸棉动作（全体）启动按钮
int8 unloading # 0-不使能 1-使能
# 棉线倾斜
# 传送带  停留一段时间（按照装满来说是30s-1min吧）


# 其余动作按钮
int8 cotton_box_control 		 #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 
# int8 cotton_picker_enable      	 # 采头风机使能 0-不使能 1-使能 
int8 cotton_unloading                    # 卸棉传送带  0-关闭 1-启动
int8 Head_control    			 # 0-不动作 1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能）
int8 Engine_power     			 # 0-不动作 1-低速 2-中速 3-高速
int8 Target_Fan_gear 			 # 采头风机 0-不接通 1-风机 2-采头风机
int8 Door_control    			 #门控 0-停止 1-开门 2-关门

")



(provide :car_interfaces/CarActionInterface "ca82fc4562e5f4077985eac24b00c6b1")


