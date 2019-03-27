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

		self.bitlist = ['0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0']

	def hc595_in(self):
		input = self.bitlist[::-1]
		for bit in input:
			GPIO.output(self.SDI,int(bit))
			GPIO.output(self.SRCLK, GPIO.HIGH)
			time.sleep(0.001)
			GPIO.output(self.SRCLK, GPIO.LOW)

	"""
	def hc595_in(self,dat):
		for bit in range(0, 24):
			GPIO.output(self.SDI, 0x800000 & (dat << bit))
			GPIO.output(self.SRCLK, GPIO.HIGH)
			time.sleep(0.001)
			GPIO.output(self.SRCLK, GPIO.LOW)
	"""

	def hc595_out(self):
		GPIO.output(self.RCLK, GPIO.HIGH)
		time.sleep(0.001)
		GPIO.output(self.RCLK, GPIO.LOW)

	def updateOutput(self,commands):
        # only update output if it's a button or hat press (not axis)
        if commands.TYPE = "BUTTON" or "HAT":
            rospy.loginfo(commands)
            if commands.B:
    			self.bitlist[0] = ['1']
    		else:
    			self.bitlist[0] = ['0']
            if commands.A:
    			self.bitlist[1] = ['1']
    		else:
    			self.bitlist[1] = ['0']
            if commands.Y:
    			self.bitlist[2] = ['1']
    		else:
    			self.bitlist[2] = ['0']
            if commands.X:
    			self.bitlist[3] = ['1']
    		else:
    			self.bitlist[3] = ['0']
            if commands.L:
    			self.bitlist[4] = ['1']
    		else:
    			self.bitlist[4] = ['0']
            if commands.R:
    			self.bitlist[5] = ['1']
    		else:
    			self.bitlist[5] = ['0']
            if commands.ZL:
    			self.bitlist[6] = ['1']
    		else:
    			self.bitlist[6] = ['0']
            if commands.ZR:
    			self.bitlist[7] = ['1']
    		else:
    			self.bitlist[7] = ['0']
            if commands.MINUS:
    			self.bitlist[8] = ['1']
    		else:
    			self.bitlist[8] = ['0']
            if commands.PLUS:
    			self.bitlist[9] = ['1']
    		else:
    			self.bitlist[9] = ['0']
            if commands.LCLICK:
    			self.bitlist[10] = ['1']
    		else:
    			self.bitlist[10] = ['0']
            if commands.RCLICK:
    			self.bitlist[11] = ['1']
    		else:
    			self.bitlist[11] = ['0']
            if commands.HOME:
    			self.bitlist[12] = ['1']
    		else:
    			self.bitlist[12] = ['0']
            if commands.CAPTURE:
    			self.bitlist[13] = ['1']
            else:
                self.bitlist[13] = ['0']
    		if command.UP == 1:
    			self.bitlist[14] = ['1']
    		else:
    			self.bitlist[14] = ['0']
            if commands.UP == -1:
    			self.bitlist[15] = ['1']
    		else:
    			self.bitlist[15] = ['0']
            if commands.RIGHT == 1:
    			self.bitlist[16] = ['1']
    		else:
    			self.bitlist[16] = ['0']
            if commands.RIGHT == -1:
    			self.bitlist[17:] = ['1']
    		else:
    			self.bitlist[17:] = ['0']
    		self.hc595_in()
    		self.hc595_out()

	def subscribe(self):
		rospy.init_node('rgb', anonymous=True)
		rospy.Subscriber('commands',joystick, self.updateOutput)

		# spin() simply keeps python from exiting until this node is stopped
		rospy.spin()

if __name__ == '__main__':
	subscriber = RGB()
	subscriber.subscribe()
