#!/usr/bin/env python

"""
Author: D. Knowles
Desc  : ROS node that publishes ultrasonic data
"""

import time
import rospy
from umnitsa_rpi.msg import ultrasonic
import param_RPiPins as P
import RPi.GPIO as GPIO

class UltrasonicPublisher():
	def __init__(self):
		self.speedofsound = 343.0   # [m/s]
		self.minDistance = 0.0      # [m]
		self.maxDistance = 5.0      # [m]
		self.maxTime = (self.maxDistance*2.0)/self.speedofsound

		# pull the right pin numbers from the parameter file
		self.ULTRA1_TRIG = P.ULTRA1_TRIG
		self.ULTRA1_ECHO = P.ULTRA1_ECHO
		self.ULTRA2_TRIG = P.ULTRA2_TRIG
		self.ULTRA2_ECHO = P.ULTRA2_ECHO
		self.ULTRA3_TRIG = P.ULTRA3_TRIG
		self.ULTRA3_ECHO = P.ULTRA3_ECHO
		self.ULTRA4_TRIG = P.ULTRA4_TRIG
		self.ULTRA4_ECHO = P.ULTRA4_ECHO

		GPIO.setmode(GPIO.BOARD)    # use RasPi pin numbers
		GPIO.setwarnings(False)     # don't show setup warnings
		GPIO.setup(self.ULTRA1_TRIG,GPIO.OUT,initial=False)
		GPIO.setup(self.ULTRA1_ECHO,GPIO.OUT,initial=False)
		GPIO.setup(self.ULTRA2_TRIG,GPIO.OUT,initial=False)
		GPIO.setup(self.ULTRA2_ECHO,GPIO.OUT,initial=False)
		GPIO.setup(self.ULTRA3_TRIG,GPIO.OUT,initial=False)
		GPIO.setup(self.ULTRA3_ECHO,GPIO.OUT,initial=False)
		GPIO.setup(self.ULTRA4_TRIG,GPIO.OUT,initial=False)
		GPIO.setup(self.ULTRA4_ECHO,GPIO.OUT,initial=False)

		self.triggers = [self.ULTRA1_TRIG,
						 self.ULTRA2_TRIG,
						 self.ULTRA3_TRIG,
						 self.ULTRA4_TRIG]

		self.echoes = [self.ULTRA1_ECHO,
					   self.ULTRA2_ECHO,
					   self.ULTRA3_ECHO,
					   self.ULTRA4_ECHO]

		# setup publisher
		print("step 1 done")
		self.ultrasonic_publisher = rospy.Publisher('ultrasonic_distance',ultrasonic, queue_size=10)
		print("step 2 done")
		rospy.init_node('ultrasonic_sensors',anonymous=True)
		print("step 3 done")
		self.ultrasonic_distance = ultrasonic()
		print("step 4 done")
		self.rate = rospy.Rate(5) # 10 Hz output rate
		print("step 5 done")
		# wait for sensor to settle
		time.sleep(5)
		print("step 6 done")

	def publish(self):
		while not rospy.is_shutdown():
			self.updateMeasurements()
			rospy.loginfo(self.ultrasonic_distance)
			self.ultrasonic_publisher.publish(self.ultrasonic_distance) # publish updated distances
			self.rate.sleep()

	def updateMeasurements(self):
		print("step 8 done")
		for ii in range(len(self.triggers)):
			# send 0.01ms pulse
			GPIO.output(self.triggers[ii],True)
			time.sleep(0.00001)
			GPIO.output(self.triggers[ii],False)

			# initialize both times
			start = time.time()
			stop = time.time()

			while GPIO.input(self.echoes[ii]) == 0:
				start = time.time()
				if start - stop > self.maxTime:
					break

			while GPIO.input(self.echoes[ii]) == 1:
				stop = time.time()
				if stop - start > self.maxTime:
					break

			elapsed = stop - start  # elapsed time
			distance = (elapsed * self.speedofsound) / 2.   # distance = time * velocit
			distance = self.clip(distance)

			self.ultrasonic_distance[ii] = distance # update distance
			print("step 9 done",ii)
		print("step 10 done)

	def clip(self,input):
		if input < self.minDistance:
			output = self.minDistance
		elif input > self.maxDistance:
			output = self.maxDistance
		else:
			output = input
		return output



if __name__ == '__main__':
	try:
		publisher = UltrasonicPublisher()
		print("step 7 done")
		publisher.publish()
	except rospy.ROSInterruptException:
		GPIO.cleanup()
