;; Auto-generated. Do not edit!


(when (boundp 'car_interfaces::CameraOriInterface)
  (if (not (find-package "CAR_INTERFACES"))
    (make-package "CAR_INTERFACES"))
  (shadow 'CameraOriInterface (find-package "CAR_INTERFACES")))
(unless (find-package "CAR_INTERFACES::CAMERAORIINTERFACE")
  (make-package "CAR_INTERFACES::CAMERAORIINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude CameraOriInterface.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass car_interfaces::CameraOriInterface
  :super ros::object
  :slots (_timestamp _id _imagedata _process_time ))

(defmethod car_interfaces::CameraOriInterface
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:imagedata __imagedata) (instance sensor_msgs::Image :init))
    ((:process_time __process_time) 0.0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _imagedata __imagedata)
   (setq _process_time (float __process_time))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:imagedata
   (&rest __imagedata)
   (if (keywordp (car __imagedata))
       (send* _imagedata __imagedata)
     (progn
       (if __imagedata (setq _imagedata (car __imagedata)))
       _imagedata)))
  (:process_time
   (&optional __process_time)
   (if __process_time (setq _process_time __process_time)) _process_time)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; uint8 _id
    1
    ;; sensor_msgs/Image _imagedata
    (send _imagedata :serialization-length)
    ;; float32 _process_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _id
       (write-byte _id s)
     ;; sensor_msgs/Image _imagedata
       (send _imagedata :serialize s)
     ;; float32 _process_time
       (sys::poke _process_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_msgs/Image _imagedata
     (send _imagedata :deserialize buf ptr-) (incf ptr- (send _imagedata :serialization-length))
   ;; float32 _process_time
     (setq _process_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get car_interfaces::CameraOriInterface :md5sum-) "798e2657a208f2fdb7f4dbbc9ac30526")
(setf (get car_interfaces::CameraOriInterface :datatype-) "car_interfaces/CameraOriInterface")
(setf (get car_interfaces::CameraOriInterface :definition-)
      "float64  timestamp  #时间戳
uint8  id  #摄像头ID
sensor_msgs/Image  imagedata# 相机图像
float32  process_time    # 进程处理时间
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :car_interfaces/CameraOriInterface "798e2657a208f2fdb7f4dbbc9ac30526")


