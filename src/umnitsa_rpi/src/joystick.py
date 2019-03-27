#!/usr/bin/env python
"""
Author: D. Knowles
Desc  : ROS node that publishes the joystick information
"""


import time
import sys
import os
import pygame
import rospy
from umnitsa_rpi.msg import joystick
import param_joystick as J




class JoystickPublisher():
    def __init__(self):
        # initialize axes from parameter file
        self.LTOGRIGHT = J.LTOGRIGHT
        self.LTOGUP = J.LTOGUP
        self.RTOGRIGHT = J.RTOGRIGHT
        self.RTOGUP = J.RTOGUP
        # initilize buttons from parameter file
        self.B = J.B
        self.A = J.A
        self.Y = J.Y
        self.X = J.X
        self.L = J.L
        self.R = J.R
        self.ZL = J.ZL
        self.ZR = J.ZR
        self.MINUS = J.MINUS
        self.PLUS = J.PLUS
        self.LCLICK = J.LCLICK
        self.RCLICK = J.RCLICK
        self.HOME = J.HOME
        self.CAPTURE = J.CAPTURE
        # initialize hat from parameter file
        self.UP = J.UP
        self.RIGHT = J.RIGHT


        self.command_publisher = rospy.Publisher('commands', joystick, queue_size=10)
        rospy.init_node('talker', anonymous=True)
        self.commands = joystick()

        sys.stdout = sys.stderr# ignore pygame messages
        os.environ["SDL_VIDEODRIVER"] = "dummy" # Removes the need to have a GUI window
        pygame.init()
        self.initialized = False
        self.found = False

    def publish(self):
        while not rospy.is_shutdown():
            if not(self.initialized):
                try:
                    pygame.joystick.init()
                    # Attempt to setup the joystick
                    if pygame.joystick.get_count() < 1:
                        # No joystick attached, set LEDs blue
                        pygame.joystick.quit()
                        time.sleep(0.1)
                    else:
                        # We have a joystick, attempt to initialise it!
                        joystick = pygame.joystick.Joystick(0)
                        self.found = True
                except pygame.error:
                    # Failed to connect to the joystick, set LEDs blue
                    pygame.joystick.quit()
                    time.sleep(0.1)
                if self.found:
                    print('Joystick found')
                    joystick.init()
                    self.initialized = True
            else:
                events = pygame.event.get()
                # handle events separately
                for event in events:
                    if event.type == pygame.JOYAXISMOTION:
                        self.commands.LTOGRIGHT = joystick.get_axis(self.LTOGRIGHT)
                        self.commands.LTOGUP = joystick.get_axis(self.LTOGUP)
                        self.commands.RTOGRIGHT = joystick.get_axis(self.RTOGRIGHT)
                        self.commands.RTOGUP = joystick.get_axis(self.RTOGUP)
                        self.commands.TYPE = "AXIS"

                    elif event.type == pygame.JOYBUTTONDOWN:
                        if joystick.get_button(self.B):
                            self.commands.B = True
                        if joystick.get_button(self.A):
                            self.commands.A = True
                        if joystick.get_button(self.Y):
                            self.commands.Y = True
                        if joystick.get_button(self.X):
                            self.commands.X = True
                        if joystick.get_button(self.L):
                            self.commands.L = True
                        if joystick.get_button(self.R):
                            self.commands.R = True
                        if joystick.get_button(self.ZL):
                            self.commands.ZL = True
                        if joystick.get_button(self.ZR):
                            self.commands.ZR = True
                        if joystick.get_button(self.MINUS):
                            self.commands.MINUS = True
                        if joystick.get_button(self.PLUS):
                            self.commands.PLUS = True
                        if joystick.get_button(self.LCLICK):
                            self.commands.LCLICK = True
                        if joystick.get_button(self.RCLICK):
                            self.commands.RCLICK = True
                        if joystick.get_button(self.HOME):
                            self.commands.HOME = True
                        if joystick.get_button(self.CAPTURE):
                            self.commands.CAPTURE = True
                        self.commands.TYPE = "BUTTON"

                    elif event.type == pygame.JOYBUTTONUP:
                        if not joystick.get_button(self.B):
                            self.commands.B = False
                        if not joystick.get_button(self.A):
                            self.commands.A = False
                        if not joystick.get_button(self.Y):
                            self.commands.Y = False
                        if not joystick.get_button(self.X):
                            self.commands.X = False
                        if joystick.get_button(self.L):
                            self.commands.L = False
                        if joystick.get_button(self.R):
                            self.commands.R = False
                        if joystick.get_button(self.ZL):
                            self.commands.ZL = False
                        if joystick.get_button(self.ZR):
                            self.commands.ZR = False
                        if joystick.get_button(self.MINUS):
                            self.commands.MINUS = False
                        if joystick.get_button(self.PLUS):
                            self.commands.PLUS = False
                        if joystick.get_button(self.LCLICK):
                            self.commands.LCLICK = False
                        if joystick.get_button(self.RCLICK):
                            self.commands.RCLICK = False
                        if joystick.get_button(self.HOME):
                            self.commands.HOME = False
                        if joystick.get_button(self.CAPTURE):
                            self.commands.CAPTURE = False
                        self.commands.TYPE = "BUTTON"

                    elif event.type == pygame.JOYHATMOTION:
                        self.commands.UP = joystick.get_hat(0)[1]
                        self.commands.RIGHT = joystick.get_hat(0)[0]
                        self.commands.TYPE = "HAT"

                    self.command_publisher.publish(self.commands) # publish updated commands


if __name__ == '__main__':
    try:
        publisher = JoystickPublisher()
        publisher.publish()
    except rospy.ROSInterruptException:
        pass
