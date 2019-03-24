; Auto-generated. Do not edit!


(cl:in-package umnitsa_rpi-msg)


;//! \htmlinclude joystick.msg.html

(cl:defclass <joystick> (roslisp-msg-protocol:ros-message)
  ((B
    :reader B
    :initarg :B
    :type cl:boolean
    :initform cl:nil)
   (A
    :reader A
    :initarg :A
    :type cl:boolean
    :initform cl:nil)
   (Y
    :reader Y
    :initarg :Y
    :type cl:boolean
    :initform cl:nil)
   (X
    :reader X
    :initarg :X
    :type cl:boolean
    :initform cl:nil)
   (L
    :reader L
    :initarg :L
    :type cl:boolean
    :initform cl:nil)
   (R
    :reader R
    :initarg :R
    :type cl:boolean
    :initform cl:nil)
   (ZL
    :reader ZL
    :initarg :ZL
    :type cl:boolean
    :initform cl:nil)
   (ZR
    :reader ZR
    :initarg :ZR
    :type cl:boolean
    :initform cl:nil)
   (MINUS
    :reader MINUS
    :initarg :MINUS
    :type cl:boolean
    :initform cl:nil)
   (PLUS
    :reader PLUS
    :initarg :PLUS
    :type cl:boolean
    :initform cl:nil)
   (LCLICK
    :reader LCLICK
    :initarg :LCLICK
    :type cl:boolean
    :initform cl:nil)
   (RCLICK
    :reader RCLICK
    :initarg :RCLICK
    :type cl:boolean
    :initform cl:nil)
   (HOME
    :reader HOME
    :initarg :HOME
    :type cl:boolean
    :initform cl:nil)
   (CAPTURE
    :reader CAPTURE
    :initarg :CAPTURE
    :type cl:boolean
    :initform cl:nil)
   (UP
    :reader UP
    :initarg :UP
    :type cl:boolean
    :initform cl:nil)
   (RIGHT
    :reader RIGHT
    :initarg :RIGHT
    :type cl:boolean
    :initform cl:nil)
   (LTOGRIGHT
    :reader LTOGRIGHT
    :initarg :LTOGRIGHT
    :type cl:float
    :initform 0.0)
   (LTOGUP
    :reader LTOGUP
    :initarg :LTOGUP
    :type cl:float
    :initform 0.0)
   (RTOGRIGHT
    :reader RTOGRIGHT
    :initarg :RTOGRIGHT
    :type cl:float
    :initform 0.0)
   (RTOGUP
    :reader RTOGUP
    :initarg :RTOGUP
    :type cl:float
    :initform 0.0))
)

(cl:defclass joystick (<joystick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joystick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joystick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name umnitsa_rpi-msg:<joystick> is deprecated: use umnitsa_rpi-msg:joystick instead.")))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:B-val is deprecated.  Use umnitsa_rpi-msg:B instead.")
  (B m))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:A-val is deprecated.  Use umnitsa_rpi-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:Y-val is deprecated.  Use umnitsa_rpi-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:X-val is deprecated.  Use umnitsa_rpi-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'L-val :lambda-list '(m))
(cl:defmethod L-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:L-val is deprecated.  Use umnitsa_rpi-msg:L instead.")
  (L m))

(cl:ensure-generic-function 'R-val :lambda-list '(m))
(cl:defmethod R-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:R-val is deprecated.  Use umnitsa_rpi-msg:R instead.")
  (R m))

(cl:ensure-generic-function 'ZL-val :lambda-list '(m))
(cl:defmethod ZL-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:ZL-val is deprecated.  Use umnitsa_rpi-msg:ZL instead.")
  (ZL m))

(cl:ensure-generic-function 'ZR-val :lambda-list '(m))
(cl:defmethod ZR-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:ZR-val is deprecated.  Use umnitsa_rpi-msg:ZR instead.")
  (ZR m))

(cl:ensure-generic-function 'MINUS-val :lambda-list '(m))
(cl:defmethod MINUS-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:MINUS-val is deprecated.  Use umnitsa_rpi-msg:MINUS instead.")
  (MINUS m))

(cl:ensure-generic-function 'PLUS-val :lambda-list '(m))
(cl:defmethod PLUS-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:PLUS-val is deprecated.  Use umnitsa_rpi-msg:PLUS instead.")
  (PLUS m))

(cl:ensure-generic-function 'LCLICK-val :lambda-list '(m))
(cl:defmethod LCLICK-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:LCLICK-val is deprecated.  Use umnitsa_rpi-msg:LCLICK instead.")
  (LCLICK m))

(cl:ensure-generic-function 'RCLICK-val :lambda-list '(m))
(cl:defmethod RCLICK-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:RCLICK-val is deprecated.  Use umnitsa_rpi-msg:RCLICK instead.")
  (RCLICK m))

(cl:ensure-generic-function 'HOME-val :lambda-list '(m))
(cl:defmethod HOME-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:HOME-val is deprecated.  Use umnitsa_rpi-msg:HOME instead.")
  (HOME m))

(cl:ensure-generic-function 'CAPTURE-val :lambda-list '(m))
(cl:defmethod CAPTURE-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:CAPTURE-val is deprecated.  Use umnitsa_rpi-msg:CAPTURE instead.")
  (CAPTURE m))

(cl:ensure-generic-function 'UP-val :lambda-list '(m))
(cl:defmethod UP-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:UP-val is deprecated.  Use umnitsa_rpi-msg:UP instead.")
  (UP m))

(cl:ensure-generic-function 'RIGHT-val :lambda-list '(m))
(cl:defmethod RIGHT-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:RIGHT-val is deprecated.  Use umnitsa_rpi-msg:RIGHT instead.")
  (RIGHT m))

(cl:ensure-generic-function 'LTOGRIGHT-val :lambda-list '(m))
(cl:defmethod LTOGRIGHT-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:LTOGRIGHT-val is deprecated.  Use umnitsa_rpi-msg:LTOGRIGHT instead.")
  (LTOGRIGHT m))

(cl:ensure-generic-function 'LTOGUP-val :lambda-list '(m))
(cl:defmethod LTOGUP-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:LTOGUP-val is deprecated.  Use umnitsa_rpi-msg:LTOGUP instead.")
  (LTOGUP m))

(cl:ensure-generic-function 'RTOGRIGHT-val :lambda-list '(m))
(cl:defmethod RTOGRIGHT-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:RTOGRIGHT-val is deprecated.  Use umnitsa_rpi-msg:RTOGRIGHT instead.")
  (RTOGRIGHT m))

(cl:ensure-generic-function 'RTOGUP-val :lambda-list '(m))
(cl:defmethod RTOGUP-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader umnitsa_rpi-msg:RTOGUP-val is deprecated.  Use umnitsa_rpi-msg:RTOGUP instead.")
  (RTOGUP m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joystick>) ostream)
  "Serializes a message object of type '<joystick>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'B) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'A) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'X) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'L) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ZL) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ZR) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'MINUS) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PLUS) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LCLICK) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RCLICK) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'HOME) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CAPTURE) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'UP) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RIGHT) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LTOGRIGHT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LTOGUP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RTOGRIGHT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RTOGUP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joystick>) istream)
  "Deserializes a message object of type '<joystick>"
    (cl:setf (cl:slot-value msg 'B) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'A) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'X) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'L) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ZL) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ZR) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'MINUS) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'PLUS) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LCLICK) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RCLICK) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'HOME) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CAPTURE) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'UP) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RIGHT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LTOGRIGHT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LTOGUP) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RTOGRIGHT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RTOGUP) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joystick>)))
  "Returns string type for a message object of type '<joystick>"
  "umnitsa_rpi/joystick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joystick)))
  "Returns string type for a message object of type 'joystick"
  "umnitsa_rpi/joystick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joystick>)))
  "Returns md5sum for a message object of type '<joystick>"
  "eecd6f451cf88ba32eb3689bc81dee01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joystick)))
  "Returns md5sum for a message object of type 'joystick"
  "eecd6f451cf88ba32eb3689bc81dee01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joystick>)))
  "Returns full string definition for message of type '<joystick>"
  (cl:format cl:nil "bool B~%bool A~%bool Y~%bool X~%bool L~%bool R~%bool ZL~%bool ZR~%bool MINUS~%bool PLUS~%bool LCLICK~%bool RCLICK~%bool HOME~%bool CAPTURE~%bool UP~%bool RIGHT~%float32 LTOGRIGHT~%float32 LTOGUP~%float32 RTOGRIGHT~%float32 RTOGUP~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joystick)))
  "Returns full string definition for message of type 'joystick"
  (cl:format cl:nil "bool B~%bool A~%bool Y~%bool X~%bool L~%bool R~%bool ZL~%bool ZR~%bool MINUS~%bool PLUS~%bool LCLICK~%bool RCLICK~%bool HOME~%bool CAPTURE~%bool UP~%bool RIGHT~%float32 LTOGRIGHT~%float32 LTOGUP~%float32 RTOGRIGHT~%float32 RTOGUP~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joystick>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joystick>))
  "Converts a ROS message object to a list"
  (cl:list 'joystick
    (cl:cons ':B (B msg))
    (cl:cons ':A (A msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':X (X msg))
    (cl:cons ':L (L msg))
    (cl:cons ':R (R msg))
    (cl:cons ':ZL (ZL msg))
    (cl:cons ':ZR (ZR msg))
    (cl:cons ':MINUS (MINUS msg))
    (cl:cons ':PLUS (PLUS msg))
    (cl:cons ':LCLICK (LCLICK msg))
    (cl:cons ':RCLICK (RCLICK msg))
    (cl:cons ':HOME (HOME msg))
    (cl:cons ':CAPTURE (CAPTURE msg))
    (cl:cons ':UP (UP msg))
    (cl:cons ':RIGHT (RIGHT msg))
    (cl:cons ':LTOGRIGHT (LTOGRIGHT msg))
    (cl:cons ':LTOGUP (LTOGUP msg))
    (cl:cons ':RTOGRIGHT (RTOGRIGHT msg))
    (cl:cons ':RTOGUP (RTOGUP msg))
))
