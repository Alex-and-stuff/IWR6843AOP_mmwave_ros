
(cl:in-package :asdf)

(defsystem "ti_mmwave_rospkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RadarScan" :depends-on ("_package_RadarScan"))
    (:file "_package_RadarScan" :depends-on ("_package"))
  ))