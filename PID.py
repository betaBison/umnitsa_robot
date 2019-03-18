"""
Author: D. Knowles
Desc  : generalized PID control
"""
import time

class PID():
    def __init__(self,kp,ki,kd,limit_lower,limit_upper):
        self.kp = kp                    # proportional gain

        self.ki = ki                    # integral gain
        self.integrator = 0.0           # integrator summation
        self.time_previous = 0.0        # previous time for integrator and derivative
        self.error_previous = 0.0       # previous error for integrator

        self.kd = kd                    # derivative gain
        self.actual_previous = 0.0      # previous value for derivative

    def update(self,command,actual):
        """
        update throttle command with new values
        """
        # update time
        if self.time_previous == 0.0:
            self.time_previous = time.time() # if first time in loop, set previous time
        time_now = time.time()  #current time
        dt = time_now - self.time_previous  # time step between updates
        self.time_previous = time_now # update previous time for next udpdate

        error = command - actual # error between command and actual
        integrator = self.integratorUpdate(error,dt)   # update integrator
        derivative = self.derivativeUpdate(actual,dt)  # update derivative
        throttle_command = self.kp*error + self.ki*self.integrator - self.kd*derivative # calculated force out
        throttle_command = self.saturate(f_out)    # saturate throttle command
        return throttle_command

    def integratorUpdate(error,dt):
        """
        update integrator using trapezoidal rule
        """
        self.integrator += (error + self.error_previous)*(dt/2.) # trapezoidal rule
        self.error_previous = error # update previous value for next update

        return self.integrator

    def derivativeUpdate(actual,dt):
        """
        update derivative calculation
        """
        derivative = (actual - self.actual_previous)/dt # calculate derivative
        self.actual_previous = actual # update previous value for next update

        return derivative

    def saturate(self,input):
        """
        saturate between the given lower and upper limit
        """
        if input <= self.limit_lower:
            output = self.limit_lower
        elif output >= self.limit_upper:
            output = self.limit_upper
        else:
            output = input
        return output
