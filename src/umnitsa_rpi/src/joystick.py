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
import numpy as np

class JoystickPublisher():
    def __init__(self):
        # initialize axes from parameter file
        self.LTOGRIGHT = J.LTOGRIGHT
        self.LTOGUP = J.LTOGUP
        self.RTOGRIGHT = J.RTOGRIGHT
        self.RTOGUP = J.RTOGUP
        self.calibration = [1.0,    # LTOG Right
                            1.0,    # LTOG Left
                            1.0,    # LTOG Up
                            1.0,    # LTOG Down
                            1.0,    # RTOG Right
                            1.0,    # RTOG Left
                            1.0,    # RTOG Up
                            1.0]    # RTOG Down


        # initilize buttons and hat from parameter file
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
        self.DOWN = J.DOWN
        self.RIGHT = J.RIGHT
        self.LEFT = J.LEFT

        self.button_pins = [J.B,
                            J.A,
                            J.Y,
                            J.X,
                            J.L,
                            J.R,
                            J.ZL,
                            J.ZR,
                            J.MINUS,
                            J.PLUS,
                            J.LCLICK,
                            J.RCLICK,
                            J.HOME,
                            J.CAPTURE]

        self.num_buttons = len(self.button_pins)
        self.button_status = np.zeros((self.num_buttons,1))

        self.hat_status = np.zeros((4,1))

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
                        self.joystick = pygame.joystick.Joystick(0)
                        self.found = True
                except pygame.error:
                    # Failed to connect to the joystick, set LEDs blue
                    pygame.joystick.quit()
                    time.sleep(0.1)
                if self.found:
                    print('Joystick found')
                    self.joystick.init()
                    self.initialized = True
            else:
                events = pygame.event.get()
                # handle events separately
                for event in events:
                    if event.type == pygame.JOYAXISMOTION:
                        self.updateAxis()
                        self.commands.TYPE = "AXIS"
                        self.updateButtonsandHats

                    elif event.type == pygame.JOYBUTTONDOWN:
                        self.updateButtonsandHats()

                    elif event.type == pygame.JOYBUTTONUP:
                        self.updateButtonsandHats()

                    elif event.type == pygame.JOYHATMOTION:
                        self.updateButtonsandHats()
                    rospy.loginfo(self.commands)
                    print(self.calibration)
                    self.command_publisher.publish(self.commands) # publish updated commands

    def updateAxis(self):
        LTOGRIGHT = self.joystick.get_axis(self.LTOGRIGHT)
        if LTOGRIGHT > 0:
            self.commands.LTOGRIGHT = self.saturate(self.calibration[0]*LTOGRIGHT)
        else:
            self.commands.LTOGRIGHT = self.saturate(self.calibration[1]*LTOGRIGHT)

        LTOGUP = self.joystick.get_axis(self.LTOGUP)
        if LTOGUP > 0:
            self.commands.LTOGUP = self.saturate(-self.calibration[2]*LTOGUP)
        else:
            self.commands.LTOGUP = self.saturate(-self.calibration[3]*LTOGUP)

        RTOGRIGHT = self.joystick.get_axis(self.RTOGRIGHT)
        if RTOGRIGHT > 0:
            self.commands.RTOGRIGHT = self.saturate(self.calibration[4]*RTOGRIGHT)
        else:
            self.commands.RTOGRIGHT = self.saturate(self.calibration[5]*RTOGRIGHT)

        RTOGUP = self.joystick.get_axis(self.RTOGUP)
        if RTOGUP > 0:
            self.commands.RTOGUP = self.saturate(-self.calibration[6]*RTOGUP)
        else:
            self.commands.RTOGUP = self.saturate(-self.calibration[7]*RTOGUP)

    def checkButtons(self):
        new_status = np.zeros((self.num_buttons,1))
        for ii in range(self.num_buttons):
            if self.joystick.get_button(self.button_pins[ii]):
                new_status[ii] = True
        XOR = abs(self.button_status - new_status)
        index_change = np.where(XOR)[0]
        self.button_status = new_status
        return index_change

    def checkHats(self):
        new_status = np.array(self.joystick.get_hat(0))
        XOR = np.clip(abs(self.hat_status - new_status),0,1)
        index_change = np.where(XOR)[0]
        self.hat_status = new_status
        return index_change

    def updateButtonsandHats(self):
        # update buttons
        index_change = self.checkButtons()
        if len(index_change) > 0:
            if self.B in index_change:
                self.commands.B = bool(self.joystick.get_button(self.B))
            if self.A in index_change:
                self.commands.A = bool(self.joystick.get_button(self.A))
            if self.Y in index_change:
                self.commands.Y = bool(self.joystick.get_button(self.Y))
            if self.X in index_change:
                self.commands.X = bool(self.joystick.get_button(self.X))
            if self.L in index_change:
                self.commands.L = bool(self.joystick.get_button(self.L))
            if self.R in index_change:
                self.commands.R = bool(self.joystick.get_button(self.R))
            if self.ZL in index_change:
                self.commands.ZL = bool(self.joystick.get_button(self.ZL))
            if self.ZR in index_change:
                self.commands.ZR = bool(self.joystick.get_button(self.ZR))
            if self.MINUS in index_change:
                self.commands.MINUS = bool(self.joystick.get_button(self.MINUS))
            if self.PLUS in index_change:
                self.commands.PLUS = bool(self.joystick.get_button(self.PLUS))
            if self.LCLICK in index_change:
                self.commands.LCLICK = bool(self.joystick.get_button(self.LCLICK))
            if self.RCLICK in index_change:
                self.commands.RCLICK = bool(self.joystick.get_button(self.RCLICK))
            if self.HOME in index_change:
                self.commands.HOME = bool(self.joystick.get_button(self.HOME))
            if self.CAPTURE in index_change:
                self.commands.CAPTURE = bool(self.joystick.get_button(self.CAPTURE))
            self.commands.TYPE = "BUTTON"

            # check for calibrate button
            if self.HOME:
                self.calibrate()

        # update Hat
        index_change = self.checkHats()
        if len(index_change) > 0:
            if self.LEFT in index_change:
                if self.joystick.get_hat(0)[self.RIGHT] == 1:
                     self.commands.RIGHT = True
                elif self.joystick.get_hat(0)[self.LEFT] == -1:
                     self.commands.LEFT = True
                else:
                    self.commands.RIGHT = False
                    self.commands.LEFT = False
            if self.UP in index_change:
                if self.joystick.get_hat(0)[self.UP] == 1:
                     self.commands.UP = True
                elif self.joystick.get_hat(0)[self.DOWN] == -1:
                     self.commands.DOWN = True
                else:
                    self.commands.UP = False
                    self.commands.DOWN = False
            self.commands.TYPE = "BUTTON"

    def calibrate(self):
        """
        calibrate the joystick to reach 1.0 on all edges
        """
        LTOGRIGHT = []
        LTOGUP = []
        RTOGRIGHT = []
        RTOGUP = []
        start = time.time()
        calibration_time = 5.0
        while time.time() - start < calibration_time:
            events = pygame.event.get()
            for event in events:
                if event.type == pygame.JOYAXISMOTION:
                    LTOGRIGHT.append(self.joystick.get_axis(self.LTOGRIGHT))
                    LTOGUP.append(-self.joystick.get_axis(self.LTOGUP))
                    RTOGRIGHT.append(self.joystick.get_axis(self.RTOGRIGHT))
                    RTOGUP.append(-self.joystick.get_axis(self.RTOGUP))

        # calibration sets highest value equal to 1.0
        self.calibration[0] = 1.0/max(LTOGRIGHT)
        self.calibration[1] = -1.0/min(LTOGRIGHT)
        self.calibration[2] = -1.0/min(LTOGUP)
        self.calibration[3] = 1.0/max(LTOGUP)
        self.calibration[4] = 1.0/max(RTOGRIGHT)
        self.calibration[5] = -1.0/min(RTOGRIGHT)
        self.calibration[6] = -1.0/min(RTOGUP)
        self.calibration[7] = 1.0/max(RTOGUP)

    def saturate(input):
        if input < -1.0:
            output = -1.0
        elif input > 1.0:
            output = 1.0
        else:
            output = input
        return output



if __name__ == '__main__':
    try:
        publisher = JoystickPublisher()
        publisher.publish()
    except rospy.ROSInterruptException:
        pass
