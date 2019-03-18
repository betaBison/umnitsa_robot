"""
Author: D. Knowles
Desc  : motor control functions for umnitsa robot
        used with the A4990 motor driver board
"""
import time
import RPi.GPIO as GPIO
from math import atan2

class MotorControl():
    def __init__(self):
        """
        initialize pins as motor outputs
        """
        GPIO.setmode(GPIO.BOARD)    # use RasPi pin numbers
        self.f = 500                # pwm frequency

        self.DB1 = 3                     # Driver Board #1 INH
        self.M1 = 5                      # DB #1 IN1 & IN2
        self.M2 = 7                      # DB #1 IN3 & IN4
        self.DB2 = 8                     # DB #2 INH
        self.M3 = 10                     # DB #2 IN1 & IN2
        self.M4 = 11                     # DB #2 IN3 & IN4

        self.enabled = False

        GPIO.setwarnings(False)     # don't show setup warnings
        # set pins as outputs and initialize to False/Low
        GPIO.setup(self.DB1,GPIO.OUT,initial=False)
        GPIO.setup(self.M1,GPIO.OUT,initial=False)
        GPIO.setup(self.M2,GPIO.OUT,initial=False)
        GPIO.setup(self.DB2,GPIO.OUT,initial=False)
        GPIO.setup(self.M3,GPIO.OUT,initial=False)
        GPIO.setup(self.M4,GPIO.OUT,initial=False)

    def lateral(self,frontback,rightleft):
        """
        break up commands
        + frontback = forward
        - frontback = backward
        + rightleft = right
        - rightleft = left
        """
        direction = atan2(frontback,rightleft)



        if frontback >= 0.0:
            self.front(frontback)
        else:
            self.backward(-frontback)
        if rightleft >= 0.0:
            self.right(rightleft)
        else:
            self.left(-rightleft)

    def cw(self,x):
        """
        moves robot clockwise
        input: x = throttle (0.0,1.0)
        """
        GPIO.output(self.M1,True)
        GPIO.output(self.M2,True)
        GPIO.output(self.M3,True)
        GPIO.output(self.M4,True)

        GPIO.output(self.DB1,True)   # enable DB #1
        GPIO.output(self.DB2,True)   # enable DB #2
        time.sleep(x)
        GPIO.output(self.DB1,False)
        GPIO.output(self.DB2,False)
        time.sleep(1.0-x)

    def ccw(self,x):
        """
        moves robot counter clockwise
        input: x = throttle (0.0,1.0)
        """
        GPIO.output(self.M1,False)
        GPIO.output(self.M2,False)
        GPIO.output(self.M3,False)
        GPIO.output(self.M4,False)

        GPIO.output(self.DB1,True)   # enable DB #1
        GPIO.output(self.DB2,True)   # enable DB #2
        time.sleep(x)
        GPIO.output(self.DB1,False)
        GPIO.output(self.DB2,False)
        time.sleep(1.0-x)


    def forward(self,x):
        """
        moves robot forward
        input: x = throttle (0.0,1.0)
        """
        GPIO.output(self.M1,True)
        GPIO.output(self.M2,False)
        GPIO.output(self.M3,False)
        GPIO.output(self.M4,True)

        GPIO.output(self.DB1,True)   # enable DB #1
        GPIO.output(self.DB2,True)   # enable DB #2
        time.sleep(x)
        GPIO.output(self.DB1,False)
        GPIO.output(self.DB2,False)
        time.sleep(1.0-x)


    def backward(self,x):
        """
        moves robot backwards
        input: x = throttle (0.0,1.0)
        """
        GPIO.output(self.M1,False)
        GPIO.output(self.M2,True)
        GPIO.output(self.M3,True)
        GPIO.output(self.M4,False)

        GPIO.output(self.DB1,True)   # enable DB #1
        GPIO.output(self.DB2,True)   # enable DB #2
        time.sleep(x)
        GPIO.output(self.DB1,False)
        GPIO.output(self.DB2,False)
        time.sleep(1.0-x)


    def right(self,x):
        """
        moves robot right
        input: x = throttle (0.0,1.0)
        """
        GPIO.output(self.M1,True)
        GPIO.output(self.M2,False)
        GPIO.output(self.M3,True)
        GPIO.output(self.M4,False)

        GPIO.output(self.DB1,True)   # enable DB #1
        GPIO.output(self.DB2,True)   # enable DB #2
        time.sleep(x)
        GPIO.output(self.DB1,False)
        GPIO.output(self.DB2,False)
        time.sleep(1.0-x)


    def left(self,x):
        """
        moves robot left
        input: x = throttle (0.0,1.0)
        """
        GPIO.output(self.M1,False)
        GPIO.output(self.M2,True)
        GPIO.output(self.M3,False)
        GPIO.output(self.M4,True)

        GPIO.output(self.DB1,True)   # enable DB #1
        GPIO.output(self.DB2,True)   # enable DB #2
        time.sleep(x)
        GPIO.output(self.DB1,False)
        GPIO.output(self.DB2,False)
        time.sleep(1.0-x)

    def disable(self):
        """
        disable both motor driver boards
        """
        GPIO.output(self.DB1,False)   # disable DB #1
        GPIO.output(self.DB2,False)   # disable DB #2
