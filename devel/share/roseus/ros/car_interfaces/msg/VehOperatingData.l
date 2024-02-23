;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::VehOperatingData)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'VehOperatingData (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::VEHOPERATINGDATA")
  (make-package "CAR_INTERFACES::VEHOPERATINGDATA"))

(in-package "ROS")
;;//! \htmlinclude VehOperatingData.msg.html


(defclass car_interfaces::VehOperatingData
  :super ros::object
  :slots (_cotton_box_control _cotton_unloading _Head_control _Engine_power _Target_Fan_gear _Door_control _flag ))

(defmethod car_interfaces::VehOperatingData
  (:init
   (&key
    ((:cotton_box_control __cotton_box_control) 0)
    ((:cotton_unloading __cotton_unloading) 0)
    ((:Head_control __Head_control) 0)
    ((:Engine_power __Engine_power) 0)
    ((:Target_Fan_gear __Target_Fan_gear) 0)
    ((:Door_control __Door_control) 0)
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _cotton_box_control (round __cotton_box_control))
   (setq _cotton_unloading (round __cotton_unloading))
   (setq _Head_control (round __Head_control))
   (setq _Engine_power (round __Engine_power))
   (setq _Target_Fan_gear (round __Target_Fan_gear))
   (setq _Door_control (round __Door_control))
   (setq _flag (round __flag))
   self)
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
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
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
    ;; int8 _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; int8 _flag
       (write-byte _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; int8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _flag 127) (setq _flag (- _flag 256)))
   ;;
   self)
  )

(setf (get car_interfaces::VehOperatingData :md5sum-) "6881f1f50cfa4ccbc6e29bdbd978adae")
(setf (get car_interfaces::VehOperatingData :datatype-) "car_interfaces/VehOperatingData")
(setf (get car_interfaces::VehOperatingData :definition-)
      "# float64  timestamp  # 数据帧时间戳
# float32  cotton_picker_fan_Enabler    #  使能采头与风机，1-使能；0-保持不变；
# float32  cotton_bin_upper    # 升棉箱指令，1-提升；0-保持不变；
# uint8  cotton_bin_lower   # 降棉箱指令，1-降低；0-保持不变；
# uint8  cotton_bin_tilting   #  棉箱倾斜指令（需要持续作用，长按），1-倾斜；0-保持不变；
# uint8  cotton_bin_restore # 棉箱回正指令（需要持续作用，长按），1-回正；0-保持不变；
# uint8  cotton_unload  # 卸棉花指令（传送带），1-卸载；0-保持不变；
# float32  process_time    # 进程处理时间

# int8 operate# 0-不使能 1-使能
# int8 unloading # 0-不使能 1-使能



# 10.17 cyun
int8 cotton_box_control   #0-不动作 1-棉箱倾斜 2-无动作 3-无动作 4-棉箱倾斜回正 
# int8 cotton_picker_enable       # 采头风机使能 0-不使能 1-使能 
int8 cotton_unloading         # 卸棉传送带  0-关闭 1-启动
# auto_enable= 1           #enable_single;
# speed_range= 0                  
# throttle_opening=0  #-100~100       
int8 Head_control    #1-采头下降 2-左采头上升（需要使能）3-右采头上升（需要使能） 4-采头同升（需要使能） 
int8 Engine_power     # 1-低速 2-中速 3-高速               
int8 Target_Fan_gear  # 采头风机 0-不接通 1-风机 2-采头风机
# Reserve_1=0       # 驻车信号 0-驻车 1-取消
# Target_steering_angle = 0 #方向盘转角
# brake_enable=0  #刹车使能
# brake_pressure_request=0 #刹车行程
# Reserve_2=0
# Target_turn_light=0
int8 Door_control    #门控 0-停止 1-开门 2-关门
# Reserve_3=0

int8 flag # 发送到线控成功

# operate = 0 # 采棉动作流程
# unloading = 0# 卸棉流程
")



(provide :car_interfaces/VehOperatingData "6881f1f50cfa4ccbc6e29bdbd978adae")


