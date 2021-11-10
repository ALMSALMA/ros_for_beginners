;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::LightLed)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'LightLed (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::LIGHTLED")
  (make-package "MY_ROBOT_MSGS::LIGHTLED"))
(unless (find-package "MY_ROBOT_MSGS::LIGHTLEDREQUEST")
  (make-package "MY_ROBOT_MSGS::LIGHTLEDREQUEST"))
(unless (find-package "MY_ROBOT_MSGS::LIGHTLEDRESPONSE")
  (make-package "MY_ROBOT_MSGS::LIGHTLEDRESPONSE"))

(in-package "ROS")





(defclass my_robot_msgs::LightLedRequest
  :super ros::object
  :slots (_led_number _led_state ))

(defmethod my_robot_msgs::LightLedRequest
  (:init
   (&key
    ((:led_number __led_number) 0)
    ((:led_state __led_state) 0)
    )
   (send-super :init)
   (setq _led_number (round __led_number))
   (setq _led_state (round __led_state))
   self)
  (:led_number
   (&optional __led_number)
   (if __led_number (setq _led_number __led_number)) _led_number)
  (:led_state
   (&optional __led_state)
   (if __led_state (setq _led_state __led_state)) _led_state)
  (:serialization-length
   ()
   (+
    ;; int64 _led_number
    8
    ;; int64 _led_state
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _led_number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _led_number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _led_number) (= (length (_led_number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_led_number . bv) 0) 0) s)
              (write-long (ash (elt (_led_number . bv) 1) -1) s))
             ((and (class _led_number) (= (length (_led_number . bv)) 1)) ;; big1
              (write-long (elt (_led_number . bv) 0) s)
              (write-long (if (>= _led_number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _led_number s)(write-long (if (>= _led_number 0) 0 #xffffffff) s)))
     ;; int64 _led_state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _led_state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _led_state) (= (length (_led_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_led_state . bv) 0) 0) s)
              (write-long (ash (elt (_led_state . bv) 1) -1) s))
             ((and (class _led_state) (= (length (_led_state . bv)) 1)) ;; big1
              (write-long (elt (_led_state . bv) 0) s)
              (write-long (if (>= _led_state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _led_state s)(write-long (if (>= _led_state 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _led_number
#+(or :alpha :irix6 :x86_64)
      (setf _led_number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _led_number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _led_state
#+(or :alpha :irix6 :x86_64)
      (setf _led_state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _led_state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass my_robot_msgs::LightLedResponse
  :super ros::object
  :slots (_success ))

(defmethod my_robot_msgs::LightLedResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_robot_msgs::LightLed
  :super ros::object
  :slots ())

(setf (get my_robot_msgs::LightLed :md5sum-) "704e7856efe58150b5b592509c2c6c05")
(setf (get my_robot_msgs::LightLed :datatype-) "my_robot_msgs/LightLed")
(setf (get my_robot_msgs::LightLed :request) my_robot_msgs::LightLedRequest)
(setf (get my_robot_msgs::LightLed :response) my_robot_msgs::LightLedResponse)

(defmethod my_robot_msgs::LightLedRequest
  (:response () (instance my_robot_msgs::LightLedResponse :init)))

(setf (get my_robot_msgs::LightLedRequest :md5sum-) "704e7856efe58150b5b592509c2c6c05")
(setf (get my_robot_msgs::LightLedRequest :datatype-) "my_robot_msgs/LightLedRequest")
(setf (get my_robot_msgs::LightLedRequest :definition-)
      "#request
int64 led_number
int64 led_state
---
#response
bool success

")

(setf (get my_robot_msgs::LightLedResponse :md5sum-) "704e7856efe58150b5b592509c2c6c05")
(setf (get my_robot_msgs::LightLedResponse :datatype-) "my_robot_msgs/LightLedResponse")
(setf (get my_robot_msgs::LightLedResponse :definition-)
      "#request
int64 led_number
int64 led_state
---
#response
bool success

")



(provide :my_robot_msgs/LightLed "704e7856efe58150b5b592509c2c6c05")


