#!/usr/bin/env python

## Simple talker demo that published std_msgs/Strings messages
## to the 'chatter' topic

import rospy
from std_msgs.msg import String
from umnitsa_rpi.msg import console_controller



def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    pub2 = rospy.Publisher('commands',console_controller, queue_size=50)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    value = 0.0
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(hello_str)
        pub.publish(hello_str)

        new_command = console_controller()
        value += 0.1
        new_command.LTOGRIGHT = value
        pub2.publish(new_command)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
