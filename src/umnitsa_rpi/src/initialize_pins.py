"""
Author: D. Knowles
Desc  : initialize all pins low at startup
"""

import RPi.GPIO as GPIO
import param_RPiPins as P

GPIO.setmode(GPIO.BOARD)    # use RasPi pin numbers

GPIO.setwarnings(False)     # don't show setup warnings
# set pins as outputs and initialize to False/Low
# motor control
GPIO.setup(P.DB1,GPIO.OUT,initial=False)
GPIO.setup(P.M1,GPIO.OUT,initial=False)
GPIO.setup(P.M2,GPIO.OUT,initial=False)
GPIO.setup(P.DB2,GPIO.OUT,initial=False)
GPIO.setup(P.M3,GPIO.OUT,initial=False)
GPIO.setup(P.M4,GPIO.OUT,initial=False)
# ultrasonic pins
GPIO.setup(P.ULTRA1_TRIG,GPIO.OUT,initial=False)
GPIO.setup(P.ULTRA1_ECHO,GPIO.OUT,initial=False)
GPIO.setup(P.ULTRA2_TRIG,GPIO.OUT,initial=False)
GPIO.setup(P.ULTRA2_ECHO,GPIO.OUT,initial=False)
GPIO.setup(P.ULTRA3_TRIG,GPIO.OUT,initial=False)
GPIO.setup(P.ULTRA3_ECHO,GPIO.OUT,initial=False)
GPIO.setup(P.ULTRA4_TRIG,GPIO.OUT,initial=False)
GPIO.setup(P.ULTRA4_ECHO,GPIO.OUT,initial=False)
#rgb pins
GPIO.setup(P.RGB_SDI,GPIO.OUT,initial=False)
GPIO.setup(P.RGB_RCLK,GPIO.OUT,initial=False)
GPIO.setup(P.RGB_SRCLK,GPIO.OUT,initial=False)
