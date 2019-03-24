#!/usr/bin/env python
"""
Author: D. Knowles
Desc  : ROS node that outputs to the RGB LEDs
"""

import RPi.GPIO as GPIO
import time
import rospy
from umnitsa_rpi.msg import joystick

class RGB():
	def __init__(self):

		GPIO.setmode(GPIO.BOARD)
		self.SDI = 37
		self.RCLK = 38
		self.SRCLK = 40

		GPIO.setwarnings(False)	#don't show setup warnings
		GPIO.setup(self.SDI, GPIO.OUT, initial=GPIO.LOW)
		GPIO.setup(self.RCLK, GPIO.OUT, initial=GPIO.LOW)
		GPIO.setup(self.SRCLK, GPIO.OUT, initial=GPIO.LOW)

	def hc595_in(self,dat):
		for bit in range(0, 24):
			GPIO.output(self.SDI, 0x800000 & (dat << bit))
			GPIO.output(self.SRCLK, GPIO.HIGH)
			time.sleep(0.001)
			GPIO.output(self.SRCLK, GPIO.LOW)

	def hc595_out(self):
		GPIO.output(self.RCLK, GPIO.HIGH)
		time.sleep(0.001)
		GPIO.output(self.RCLK, GPIO.LOW)

	def updateOutput(self,commands):
		if commands.X:
			self.hc595_in(0xFFFFF)
			self.hc595_out()
		else:
			self.hc595_in(0x0)
			self.hc595_out()

	def subscribe(self):
		rospy.init_node('rgb', anonymous=True)
		rospy.Subscriber('commands',joystick, updateCommand)

		# spin() simply keeps python from exiting until this node is stopped
		rospy.spin()

if __name__ == '__main__':
	subsriber = RGB()
	subscriber.subscribe()
