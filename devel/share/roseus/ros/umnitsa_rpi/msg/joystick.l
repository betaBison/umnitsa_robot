;; Auto-generated. Do not edit!


(when (boundp 'umnitsa_rpi::joystick)
  (if (not (find-package "UMNITSA_RPI"))
    (make-package "UMNITSA_RPI"))
  (shadow 'joystick (find-package "UMNITSA_RPI")))
(unless (find-package "UMNITSA_RPI::JOYSTICK")
  (make-package "UMNITSA_RPI::JOYSTICK"))

(in-package "ROS")
;;//! \htmlinclude joystick.msg.html


(defclass umnitsa_rpi::joystick
  :super ros::object
  :slots (_B _A _Y _X _L _R _ZL _ZR _MINUS _PLUS _LCLICK _RCLICK _HOME _CAPTURE _UP _RIGHT _LTOGRIGHT _LTOGUP _RTOGRIGHT _RTOGUP ))

(defmethod umnitsa_rpi::joystick
  (:init
   (&key
    ((:B __B) nil)
    ((:A __A) nil)
    ((:Y __Y) nil)
    ((:X __X) nil)
    ((:L __L) nil)
    ((:R __R) nil)
    ((:ZL __ZL) nil)
    ((:ZR __ZR) nil)
    ((:MINUS __MINUS) nil)
    ((:PLUS __PLUS) nil)
    ((:LCLICK __LCLICK) nil)
    ((:RCLICK __RCLICK) nil)
    ((:HOME __HOME) nil)
    ((:CAPTURE __CAPTURE) nil)
    ((:UP __UP) nil)
    ((:RIGHT __RIGHT) nil)
    ((:LTOGRIGHT __LTOGRIGHT) 0.0)
    ((:LTOGUP __LTOGUP) 0.0)
    ((:RTOGRIGHT __RTOGRIGHT) 0.0)
    ((:RTOGUP __RTOGUP) 0.0)
    )
   (send-super :init)
   (setq _B __B)
   (setq _A __A)
   (setq _Y __Y)
   (setq _X __X)
   (setq _L __L)
   (setq _R __R)
   (setq _ZL __ZL)
   (setq _ZR __ZR)
   (setq _MINUS __MINUS)
   (setq _PLUS __PLUS)
   (setq _LCLICK __LCLICK)
   (setq _RCLICK __RCLICK)
   (setq _HOME __HOME)
   (setq _CAPTURE __CAPTURE)
   (setq _UP __UP)
   (setq _RIGHT __RIGHT)
   (setq _LTOGRIGHT (float __LTOGRIGHT))
   (setq _LTOGUP (float __LTOGUP))
   (setq _RTOGRIGHT (float __RTOGRIGHT))
   (setq _RTOGUP (float __RTOGUP))
   self)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:L
   (&optional __L)
   (if __L (setq _L __L)) _L)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:ZL
   (&optional __ZL)
   (if __ZL (setq _ZL __ZL)) _ZL)
  (:ZR
   (&optional __ZR)
   (if __ZR (setq _ZR __ZR)) _ZR)
  (:MINUS
   (&optional __MINUS)
   (if __MINUS (setq _MINUS __MINUS)) _MINUS)
  (:PLUS
   (&optional __PLUS)
   (if __PLUS (setq _PLUS __PLUS)) _PLUS)
  (:LCLICK
   (&optional __LCLICK)
   (if __LCLICK (setq _LCLICK __LCLICK)) _LCLICK)
  (:RCLICK
   (&optional __RCLICK)
   (if __RCLICK (setq _RCLICK __RCLICK)) _RCLICK)
  (:HOME
   (&optional __HOME)
   (if __HOME (setq _HOME __HOME)) _HOME)
  (:CAPTURE
   (&optional __CAPTURE)
   (if __CAPTURE (setq _CAPTURE __CAPTURE)) _CAPTURE)
  (:UP
   (&optional __UP)
   (if __UP (setq _UP __UP)) _UP)
  (:RIGHT
   (&optional __RIGHT)
   (if __RIGHT (setq _RIGHT __RIGHT)) _RIGHT)
  (:LTOGRIGHT
   (&optional __LTOGRIGHT)
   (if __LTOGRIGHT (setq _LTOGRIGHT __LTOGRIGHT)) _LTOGRIGHT)
  (:LTOGUP
   (&optional __LTOGUP)
   (if __LTOGUP (setq _LTOGUP __LTOGUP)) _LTOGUP)
  (:RTOGRIGHT
   (&optional __RTOGRIGHT)
   (if __RTOGRIGHT (setq _RTOGRIGHT __RTOGRIGHT)) _RTOGRIGHT)
  (:RTOGUP
   (&optional __RTOGUP)
   (if __RTOGUP (setq _RTOGUP __RTOGUP)) _RTOGUP)
  (:serialization-length
   ()
   (+
    ;; bool _B
    1
    ;; bool _A
    1
    ;; bool _Y
    1
    ;; bool _X
    1
    ;; bool _L
    1
    ;; bool _R
    1
    ;; bool _ZL
    1
    ;; bool _ZR
    1
    ;; bool _MINUS
    1
    ;; bool _PLUS
    1
    ;; bool _LCLICK
    1
    ;; bool _RCLICK
    1
    ;; bool _HOME
    1
    ;; bool _CAPTURE
    1
    ;; bool _UP
    1
    ;; bool _RIGHT
    1
    ;; float32 _LTOGRIGHT
    4
    ;; float32 _LTOGUP
    4
    ;; float32 _RTOGRIGHT
    4
    ;; float32 _RTOGUP
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _B
       (if _B (write-byte -1 s) (write-byte 0 s))
     ;; bool _A
       (if _A (write-byte -1 s) (write-byte 0 s))
     ;; bool _Y
       (if _Y (write-byte -1 s) (write-byte 0 s))
     ;; bool _X
       (if _X (write-byte -1 s) (write-byte 0 s))
     ;; bool _L
       (if _L (write-byte -1 s) (write-byte 0 s))
     ;; bool _R
       (if _R (write-byte -1 s) (write-byte 0 s))
     ;; bool _ZL
       (if _ZL (write-byte -1 s) (write-byte 0 s))
     ;; bool _ZR
       (if _ZR (write-byte -1 s) (write-byte 0 s))
     ;; bool _MINUS
       (if _MINUS (write-byte -1 s) (write-byte 0 s))
     ;; bool _PLUS
       (if _PLUS (write-byte -1 s) (write-byte 0 s))
     ;; bool _LCLICK
       (if _LCLICK (write-byte -1 s) (write-byte 0 s))
     ;; bool _RCLICK
       (if _RCLICK (write-byte -1 s) (write-byte 0 s))
     ;; bool _HOME
       (if _HOME (write-byte -1 s) (write-byte 0 s))
     ;; bool _CAPTURE
       (if _CAPTURE (write-byte -1 s) (write-byte 0 s))
     ;; bool _UP
       (if _UP (write-byte -1 s) (write-byte 0 s))
     ;; bool _RIGHT
       (if _RIGHT (write-byte -1 s) (write-byte 0 s))
     ;; float32 _LTOGRIGHT
       (sys::poke _LTOGRIGHT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LTOGUP
       (sys::poke _LTOGUP (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RTOGRIGHT
       (sys::poke _RTOGRIGHT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RTOGUP
       (sys::poke _RTOGUP (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _B
     (setq _B (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _A
     (setq _A (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Y
     (setq _Y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _X
     (setq _X (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _L
     (setq _L (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R
     (setq _R (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ZL
     (setq _ZL (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ZR
     (setq _ZR (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _MINUS
     (setq _MINUS (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PLUS
     (setq _PLUS (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LCLICK
     (setq _LCLICK (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RCLICK
     (setq _RCLICK (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _HOME
     (setq _HOME (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CAPTURE
     (setq _CAPTURE (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _UP
     (setq _UP (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RIGHT
     (setq _RIGHT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _LTOGRIGHT
     (setq _LTOGRIGHT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LTOGUP
     (setq _LTOGUP (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RTOGRIGHT
     (setq _RTOGRIGHT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RTOGUP
     (setq _RTOGUP (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get umnitsa_rpi::joystick :md5sum-) "eecd6f451cf88ba32eb3689bc81dee01")
(setf (get umnitsa_rpi::joystick :datatype-) "umnitsa_rpi/joystick")
(setf (get umnitsa_rpi::joystick :definition-)
      "bool B
bool A
bool Y
bool X
bool L
bool R
bool ZL
bool ZR
bool MINUS
bool PLUS
bool LCLICK
bool RCLICK
bool HOME
bool CAPTURE
bool UP
bool RIGHT
float32 LTOGRIGHT
float32 LTOGUP
float32 RTOGRIGHT
float32 RTOGUP

")



(provide :umnitsa_rpi/joystick "eecd6f451cf88ba32eb3689bc81dee01")


