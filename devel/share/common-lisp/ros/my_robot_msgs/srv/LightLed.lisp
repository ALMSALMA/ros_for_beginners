; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-srv)


;//! \htmlinclude LightLed-request.msg.html

(cl:defclass <LightLed-request> (roslisp-msg-protocol:ros-message)
  ((led_number
    :reader led_number
    :initarg :led_number
    :type cl:integer
    :initform 0)
   (led_state
    :reader led_state
    :initarg :led_state
    :type cl:integer
    :initform 0))
)

(cl:defclass LightLed-request (<LightLed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightLed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightLed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<LightLed-request> is deprecated: use my_robot_msgs-srv:LightLed-request instead.")))

(cl:ensure-generic-function 'led_number-val :lambda-list '(m))
(cl:defmethod led_number-val ((m <LightLed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:led_number-val is deprecated.  Use my_robot_msgs-srv:led_number instead.")
  (led_number m))

(cl:ensure-generic-function 'led_state-val :lambda-list '(m))
(cl:defmethod led_state-val ((m <LightLed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:led_state-val is deprecated.  Use my_robot_msgs-srv:led_state instead.")
  (led_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightLed-request>) ostream)
  "Serializes a message object of type '<LightLed-request>"
  (cl:let* ((signed (cl:slot-value msg 'led_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'led_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightLed-request>) istream)
  "Deserializes a message object of type '<LightLed-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'led_number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'led_state) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightLed-request>)))
  "Returns string type for a service object of type '<LightLed-request>"
  "my_robot_msgs/LightLedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightLed-request)))
  "Returns string type for a service object of type 'LightLed-request"
  "my_robot_msgs/LightLedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightLed-request>)))
  "Returns md5sum for a message object of type '<LightLed-request>"
  "704e7856efe58150b5b592509c2c6c05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightLed-request)))
  "Returns md5sum for a message object of type 'LightLed-request"
  "704e7856efe58150b5b592509c2c6c05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightLed-request>)))
  "Returns full string definition for message of type '<LightLed-request>"
  (cl:format cl:nil "#request~%int64 led_number~%int64 led_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightLed-request)))
  "Returns full string definition for message of type 'LightLed-request"
  (cl:format cl:nil "#request~%int64 led_number~%int64 led_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightLed-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightLed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LightLed-request
    (cl:cons ':led_number (led_number msg))
    (cl:cons ':led_state (led_state msg))
))
;//! \htmlinclude LightLed-response.msg.html

(cl:defclass <LightLed-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LightLed-response (<LightLed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightLed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightLed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<LightLed-response> is deprecated: use my_robot_msgs-srv:LightLed-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LightLed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:success-val is deprecated.  Use my_robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightLed-response>) ostream)
  "Serializes a message object of type '<LightLed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightLed-response>) istream)
  "Deserializes a message object of type '<LightLed-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightLed-response>)))
  "Returns string type for a service object of type '<LightLed-response>"
  "my_robot_msgs/LightLedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightLed-response)))
  "Returns string type for a service object of type 'LightLed-response"
  "my_robot_msgs/LightLedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightLed-response>)))
  "Returns md5sum for a message object of type '<LightLed-response>"
  "704e7856efe58150b5b592509c2c6c05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightLed-response)))
  "Returns md5sum for a message object of type 'LightLed-response"
  "704e7856efe58150b5b592509c2c6c05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightLed-response>)))
  "Returns full string definition for message of type '<LightLed-response>"
  (cl:format cl:nil "#response~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightLed-response)))
  "Returns full string definition for message of type 'LightLed-response"
  (cl:format cl:nil "#response~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightLed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightLed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LightLed-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LightLed)))
  'LightLed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LightLed)))
  'LightLed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightLed)))
  "Returns string type for a service object of type '<LightLed>"
  "my_robot_msgs/LightLed")