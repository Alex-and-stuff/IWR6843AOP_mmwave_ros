; Auto-generated. Do not edit!


(cl:in-package ti_mmwave_rospkg-msg)


;//! \htmlinclude RadarScan.msg.html

(cl:defclass <RadarScan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (point_id
    :reader point_id
    :initarg :point_id
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (doppler_bin
    :reader doppler_bin
    :initarg :doppler_bin
    :type cl:fixnum
    :initform 0)
   (bearing
    :reader bearing
    :initarg :bearing
    :type cl:float
    :initform 0.0)
   (intensity
    :reader intensity
    :initarg :intensity
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadarScan (<RadarScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ti_mmwave_rospkg-msg:<RadarScan> is deprecated: use ti_mmwave_rospkg-msg:RadarScan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:header-val is deprecated.  Use ti_mmwave_rospkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'point_id-val :lambda-list '(m))
(cl:defmethod point_id-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:point_id-val is deprecated.  Use ti_mmwave_rospkg-msg:point_id instead.")
  (point_id m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:x-val is deprecated.  Use ti_mmwave_rospkg-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:y-val is deprecated.  Use ti_mmwave_rospkg-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:z-val is deprecated.  Use ti_mmwave_rospkg-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:range-val is deprecated.  Use ti_mmwave_rospkg-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:velocity-val is deprecated.  Use ti_mmwave_rospkg-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'doppler_bin-val :lambda-list '(m))
(cl:defmethod doppler_bin-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:doppler_bin-val is deprecated.  Use ti_mmwave_rospkg-msg:doppler_bin instead.")
  (doppler_bin m))

(cl:ensure-generic-function 'bearing-val :lambda-list '(m))
(cl:defmethod bearing-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:bearing-val is deprecated.  Use ti_mmwave_rospkg-msg:bearing instead.")
  (bearing m))

(cl:ensure-generic-function 'intensity-val :lambda-list '(m))
(cl:defmethod intensity-val ((m <RadarScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:intensity-val is deprecated.  Use ti_mmwave_rospkg-msg:intensity instead.")
  (intensity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarScan>) ostream)
  "Serializes a message object of type '<RadarScan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'point_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'doppler_bin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'doppler_bin)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bearing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'intensity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarScan>) istream)
  "Deserializes a message object of type '<RadarScan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'point_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'doppler_bin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'doppler_bin)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bearing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intensity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarScan>)))
  "Returns string type for a message object of type '<RadarScan>"
  "ti_mmwave_rospkg/RadarScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarScan)))
  "Returns string type for a message object of type 'RadarScan"
  "ti_mmwave_rospkg/RadarScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarScan>)))
  "Returns md5sum for a message object of type '<RadarScan>"
  "7a726cbc7d2934bb55d96dada9040f86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarScan)))
  "Returns md5sum for a message object of type 'RadarScan"
  "7a726cbc7d2934bb55d96dada9040f86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarScan>)))
  "Returns full string definition for message of type '<RadarScan>"
  (cl:format cl:nil "Header header~%uint16 point_id~%float32 x~%float32 y~%float32 z~%float32 range~%float32 velocity~%uint16 doppler_bin~%float32 bearing~%float32 intensity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarScan)))
  "Returns full string definition for message of type 'RadarScan"
  (cl:format cl:nil "Header header~%uint16 point_id~%float32 x~%float32 y~%float32 z~%float32 range~%float32 velocity~%uint16 doppler_bin~%float32 bearing~%float32 intensity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarScan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4
     4
     4
     4
     4
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarScan>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarScan
    (cl:cons ':header (header msg))
    (cl:cons ':point_id (point_id msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':range (range msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':doppler_bin (doppler_bin msg))
    (cl:cons ':bearing (bearing msg))
    (cl:cons ':intensity (intensity msg))
))
