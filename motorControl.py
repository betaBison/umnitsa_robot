"""
Author: D. Knowles
Desc  : motor control functions for umnitsa robot
        used with the A4990 motor driver board
"""
import time
import RPi.GPIO as GPIO

class MotorControl():
    def __init__(self):
        """
        initialize pins as motor outputs
        """
        GPIO.setmode(GPIO.BOARD)    # use RasPi pin numbers
        self.f = 500                # pwm frequency

        DB1 = 3                     # Driver Board #1 INH
        M1 = 5                      # DB #1 IN1 & IN2
        M2 = 7                      # DB #1 IN3 & IN4
        DB2 = 8                     # DB #2 INH
        M3 = 10                     # DB #2 IN1 & IN2
        M4 = 11                     # DB #2 IN3 & IN4

        GPIO.setwarnings(False)     # don't show setup warnings
        # set pins as outputs and initialize to False/Low
        GPIO.setup(DB1,GPIO.OUT,initial=False)
        GPIO.setup(M1,GPIO.OUT,initial=False)
        GPIO.setup(M2,GPIO.OUT,initial=False)
        GPIO.setup(DB2,GPIO.OUT,initial=False)
        GPIO.setup(M3,GPIO.OUT,initial=False)
        GPIO.setup(M4,GPIO.OUT,initial=False)

    def disable(self):
        """
        disable both motor driver boards
        """
        GPIO.output(DB1,False)   # disable DB #1
        GPIO.output(DB2,False)   # disable DB #2

    def cw(self,x):
        """
        moves robot clockwise
        input: x = throttle (0.0,1.0)
        """
        dc = 50.0 + 50.0*x  # calculate duty cycle

        # send motors pwm signal
        m1 = GPIO.PWM(M1,self.f)
        m1.start(dc)
        m2 = GPIO.PWM(M2,self.f)
        m2.start(dc)
        m3 = GPIO.PWM(M3,self.f)
        m3.start(dc)
        m4 = GPIO.PWM(M4,self.f)
        m4.start(dc)

        GPIO.output(DB1,True)   # enable DB #1
        GPIO.output(DB2,True)   # enable DB #2

    def ccw(self,x):
        """
        moves robot counter clockwise
        input: x = throttle (0.0,1.0)
        """

        dc = 50.0 - 50.0*x  # calculate duty cycle
        # send motors pwm signal
        m1 = GPIO.PWM(M1,self.f)
        m1.start(dc)
        m2 = GPIO.PWM(M2,self.f)
        m2.start(dc)
        m3 = GPIO.PWM(M3,self.f)
        m3.start(dc)
        m4 = GPIO.PWM(M4,self.f)
        m4.start(dc)

        GPIO.output(DB1,True)   # enable DB #1
        GPIO.output(DB2,True)   # enable DB #2


    def forward(self,x):
        """
        moves robot forward
        input: x = throttle (0.0,1.0)
        """
        # calculate duty cycles
        dc_cw = 50.0 + 50.0*x
        dc_ccw = 50.0 - 50.0*x

        # send motors pwm signal
        m1 = GPIO.PWM(M1,self.f)
        m1.start(dc_cw)
        m2 = GPIO.PWM(M2,self.f)
        m2.start(dc_ccw)
        m3 = GPIO.PWM(M3,self.f)
        m3.start(dc_ccw)
        m4 = GPIO.PWM(M4,self.f)
        m4.start(dc_cw)


    def backward(self,x):
        """
        moves robot backwards
        input: x = throttle (0.0,1.0)
        """
        # calculate duty cycles
        dc_cw = 50.0 + 50.0*x
        dc_ccw = 50.0 - 50.0*x

        # send motors pwm signal
        m1 = GPIO.PWM(M1,self.f)
        m1.start(dc_ccw)
        m2 = GPIO.PWM(M2,self.f)
        m2.start(dc_cw)
        m3 = GPIO.PWM(M3,self.f)
        m3.start(dc_cw)
        m4 = GPIO.PWM(M4,self.f)
        m4.start(dc_ccw)
