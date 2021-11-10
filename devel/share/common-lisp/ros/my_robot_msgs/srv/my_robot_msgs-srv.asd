
(cl:in-package :asdf)

(defsystem "my_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LightLed" :depends-on ("_package_LightLed"))
    (:file "_package_LightLed" :depends-on ("_package"))
  ))