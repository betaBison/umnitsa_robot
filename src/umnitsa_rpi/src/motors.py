#!/usr/bin/env python
"""
Author: D. Knowles
Desc  : ROS node that outputs to the umnitsaControl board
"""
import RPi.GPIO as GPIO
import time
import rospy
from umnitsa_rpi.msg import joystick
import param_RPiPins as P

class Motors():
	def __init__(self):
		"""
		initialize pins as motor outputs
		"""
		GPIO.setmode(GPIO.BOARD)        # use RasPi pin numbers

		self.DB1 = P.DB1                # Driver Board #1 INH
		self.M1 = P.M1                  # DB #1 IN1 & IN2
		self.M2 = P.M2                  # DB #1 IN3 & IN4
		self.DB2 = P.DB2                # DB #2 INH
		self.M3 = P.M3                  # DB #2 IN1 & IN2
		self.M4 = P.M4                  # DB #2 IN3 & IN4

		GPIO.setwarnings(False)     # don't show setup warnings
		# set pins as outputs and initialize to False/Low
		GPIO.setup(self.DB1,GPIO.OUT,initial=False)
		GPIO.setup(self.M1,GPIO.OUT,initial=False)
		GPIO.setup(self.M2,GPIO.OUT,initial=False)
		GPIO.setup(self.DB2,GPIO.OUT,initial=False)
		GPIO.setup(self.M3,GPIO.OUT,initial=False)
		GPIO.setup(self.M4,GPIO.OUT,initial=False)

		# setup all pwm outputs
		self.frequency = 500.0          # pwm frequency
		self.PWM_M1 = GPIO.PWM(self.M1,self.frequency)
		self.PWM_M1.start(0.0)
		self.PWM_M2 = GPIO.PWM(self.M2,self.frequency)
		self.PWM_M2.start(0.0)
		self.PWM_M3 = GPIO.PWM(self.M3,self.frequency)
		self.PWM_M3.start(0.0)
		self.PWM_M4 = GPIO.PWM(self.M4,self.frequency)
		self.PWM_M4.start(0.0)


	def subscribe(self):
		rospy.init_node('motors', anonymous=True)
		rospy.Subscriber('commands',joystick, self.updateCommands)
		# spin() simply keeps python from exiting until this node is stopped
		rospy.spin()

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
		self.PWM_M1.ChangeDutyCycle(x*100.0)
		self.PWM_M1.ChangeDutyCycle(x*100.0)
		self.PWM_M1.ChangeDutyCycle(x*100.0)
		self.PWM_M1.ChangeDutyCycle(x*100.0)
		"""
		GPIO.output(self.M1,True)
		GPIO.output(self.M2,True)
		GPIO.output(self.M3,True)
		GPIO.output(self.M4,True)
		"""
		GPIO.output(self.DB1,True)   # enable DB #1
		GPIO.output(self.DB2,True)   # enable DB #2

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

	def forward(self,x):
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

	def backward(self,x):
		"""
		moves robot forward
		input: x = throttle (0.0,1.0)
		"""
		""""
		self.PWM_M1.ChangeDutyCycle(x*100.0)
		self.PWM_M1.ChangeDutyCycle(100.0 - x*100.0)
		self.PWM_M1.ChangeDutyCycle(100.0 - x*100.0)
		self.PWM_M1.ChangeDutyCycle(x*100.0)
		"""
		GPIO.output(self.M1,True)
		GPIO.output(self.M2,False)
		GPIO.output(self.M3,False)
		GPIO.output(self.M4,True)
		GPIO.output(self.DB1,True)   # enable DB #1
		GPIO.output(self.DB2,True)   # enable DB #2


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

	def disable(self):
		"""
		disable both motor driver boards
		"""
		GPIO.output(self.DB1,False)   # disable DB #1
		GPIO.output(self.DB2,False)   # disable DB #2

if __name__ == '__main__':
	try:
		subscriber = Motors()
		subscriber.subscribe()
	except rospy.ROSInterruptException:
		subscriber.disable()
		subscriber.PWM_M1.stop()
		subscriber.PWM_M2.stop()
		subscriber.PWM_M3.stop()
		subscriber.PWM_M4.stop()
		GPIO.cleanup()
