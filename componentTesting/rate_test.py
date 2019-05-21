#!/usr/bin/env python

import rospy

class RateTester():
	def __init__(self):
		rospy.init_node('Rate_Test_node',anonymous=False)
		self.ii = 1.
		self.time0 = rospy.get_time()
		self.my_timer = rospy.Timer(rospy.Duration(2/self.ii),self.my_callback,True)


	def my_callback(self,event):
		time1 = rospy.get_time()
		print("Timer called after " + str(time1-self.time0))
		self.time0 = time1
		#self.my_timer._period = rospy.Duration(2./self.ii)
		print("current period = " + str(2./self.ii**2))
		self.my_timer =  rospy.Timer(rospy.Duration(2/self.ii),self.my_callback,True)

	def run(self):
		r = rospy.Rate(10)

		while not rospy.is_shutdown():
			self.ii+=1
			r.sleep()


if __name__ == '__main__':
	try:
		my_test = RateTester()
		my_test.run()
	except rospy.ROSInterruptException:
		pass
