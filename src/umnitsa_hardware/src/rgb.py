#!/usr/bin/env python
"""
Author: D. Knowles
Desc  : ROS node that outputs to the RGB LEDs
"""

import RPi.GPIO as GPIO
import time
import rospy
from umnitsa_msgs.msg import joystick, ultrasonic

class RGB():
	def __init__(self):

		GPIO.setmode(GPIO.BOARD)
		self.SDI = rospy.get_param('RGB_SDI')
		self.RCLK = rospy.get_param('RGB_RCLK')
		self.SRCLK = rospy.get_param('RGB_SRCLK')

		GPIO.setwarnings(False)	#don't show setup warnings
		GPIO.setup(self.SDI, GPIO.OUT, initial=GPIO.LOW)
		GPIO.setup(self.RCLK, GPIO.OUT, initial=GPIO.LOW)
		GPIO.setup(self.SRCLK, GPIO.OUT, initial=GPIO.LOW)

		# colors
		self.off = ['0','0','0']
		self.red = ['1','0','0']
		self.green = ['0','1','0']
		self.blue = ['0','0','1']
		self.yellow = ['1','1','0']
		self.purple = ['1','0','1']
		self.cyan = ['0','1','1']
		self.white = ['1','1','1']

		# initialize LED values
		self.LED1 = self.off
		self.LED2 = self.off
		self.LED3 = self.off
		self.LED4 = self.off
		self.LED5 = self.off
		self.LED6 = self.off
		self.LED7 = self.off
		self.LED8 = self.off

		self.clearance = rospy.get_param('clearance')



	def hc595_in(self):
		bitlist = self.LED1 + self.LED2 + self.LED3 + self.LED4 + self.LED5 + self.LED6 + self.LED7 + self.LED8
		input = bitlist[::-1]
		for bit in input:
			GPIO.output(self.SDI,int(bit))
			GPIO.output(self.SRCLK, GPIO.HIGH)
			time.sleep(0.001)
			GPIO.output(self.SRCLK, GPIO.LOW)

	def hc595_out(self):
		GPIO.output(self.RCLK, GPIO.HIGH)
		time.sleep(0.001)
		GPIO.output(self.RCLK, GPIO.LOW)

	def updateCommands(self,commands):
		# only update output if it's a button or hat press (not axis)
		if commands.TYPE == "BUTTON" or commands.TYPE == "HAT":
			#rospy.loginfo(commands)
			if commands.HOME:
				self.LED1 = self.blue
				self.LED2 = self.blue
				self.LED3 = self.blue
				self.LED4 = self.blue
			elif commands.X:
				self.LED1 = self.green
				self.LED2 = self.green
				self.LED3 = self.green
				self.LED4 = self.green
			elif commands.B:
				self.LED1 = self.red
				self.LED2 = self.red
				self.LED3 = self.red
				self.LED4 = self.red
			elif commands.A:
				self.LED1 = self.white
				self.LED2 = self.white
				self.LED3 = self.white
				self.LED4 = self.white
			elif commands.Y:
				self.LED1 = self.yellow
				self.LED2 = self.yellow
				self.LED3 = self.yellow
				self.LED4 = self.yellow
			else:
				self.LED1 = self.off
				self.LED2 = self.off
				self.LED3 = self.off
				self.LED4 = self.off

			self.hc595_in()
			self.hc595_out()

	def updateUltrasonic(self,ultrasonic):
		if ultrasonic.ULTRA1 < self.clearance:
			self.LED5 = self.red
		else:
			self.LED5 = self.off
		if ultrasonic.ULTRA2 < self.clearance:
			self.LED6 = self.red
		else:
			self.LED6 = self.off
		if ultrasonic.ULTRA3 < self.clearance:
			self.LED7 = self.red
		else:
			self.LED7 = self.off
		if ultrasonic.ULTRA4 < self.clearance:
			self.LED8 = self.red
		else:
			self.LED8 = self.off
		self.hc595_in()
		self.hc595_out()


	def subscribe(self):
		rospy.init_node('rgb', anonymous=False)
		rospy.Subscriber('commands',joystick, self.updateCommands)
		rospy.Subscriber('ultrasonic',ultrasonic,self.updateUltrasonic)

		# spin() simply keeps python from exiting until this node is stopped
		rospy.spin()

if __name__ == '__main__':
	try:
		subscriber = RGB()
		subscriber.subscribe()
	except rospy.ROSInterruptException:
		GPIO.cleanup()
