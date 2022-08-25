;; Auto-generated. Do not edit!


(when (boundp 'ti_mmwave_rospkg::RadarScan)
  (if (not (find-package "TI_MMWAVE_ROSPKG"))
    (make-package "TI_MMWAVE_ROSPKG"))
  (shadow 'RadarScan (find-package "TI_MMWAVE_ROSPKG")))
(unless (find-package "TI_MMWAVE_ROSPKG::RADARSCAN")
  (make-package "TI_MMWAVE_ROSPKG::RADARSCAN"))

(in-package "ROS")
;;//! \htmlinclude RadarScan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ti_mmwave_rospkg::RadarScan
  :super ros::object
  :slots (_header _point_id _x _y _z _range _velocity _doppler_bin _bearing _intensity ))

(defmethod ti_mmwave_rospkg::RadarScan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:point_id __point_id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:range __range) 0.0)
    ((:velocity __velocity) 0.0)
    ((:doppler_bin __doppler_bin) 0)
    ((:bearing __bearing) 0.0)
    ((:intensity __intensity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _point_id (round __point_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _range (float __range))
   (setq _velocity (float __velocity))
   (setq _doppler_bin (round __doppler_bin))
   (setq _bearing (float __bearing))
   (setq _intensity (float __intensity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:point_id
   (&optional __point_id)
   (if __point_id (setq _point_id __point_id)) _point_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:doppler_bin
   (&optional __doppler_bin)
   (if __doppler_bin (setq _doppler_bin __doppler_bin)) _doppler_bin)
  (:bearing
   (&optional __bearing)
   (if __bearing (setq _bearing __bearing)) _bearing)
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _point_id
    2
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _range
    4
    ;; float32 _velocity
    4
    ;; uint16 _doppler_bin
    2
    ;; float32 _bearing
    4
    ;; float32 _intensity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _point_id
       (write-word _point_id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _doppler_bin
       (write-word _doppler_bin s)
     ;; float32 _bearing
       (sys::poke _bearing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _intensity
       (sys::poke _intensity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _point_id
     (setq _point_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _doppler_bin
     (setq _doppler_bin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _bearing
     (setq _bearing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _intensity
     (setq _intensity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ti_mmwave_rospkg::RadarScan :md5sum-) "7a726cbc7d2934bb55d96dada9040f86")
(setf (get ti_mmwave_rospkg::RadarScan :datatype-) "ti_mmwave_rospkg/RadarScan")
(setf (get ti_mmwave_rospkg::RadarScan :definition-)
      "Header header
uint16 point_id
float32 x
float32 y
float32 z
float32 range
float32 velocity
uint16 doppler_bin
float32 bearing
float32 intensity

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



(provide :ti_mmwave_rospkg/RadarScan "7a726cbc7d2934bb55d96dada9040f86")


