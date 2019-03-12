"""
Author: D. Knowles
Desc  : main control architecture for umnitsa robot
"""

import time
from motorControl import MotorControl

def main():
    motors = MotorControl()

    for ii in range(100):
        throttle = ii/100.0
        motors.cw(throttle)
        time.sleep(0.1)
    motors.disable()

    for ii in range(100):
        throttle = ii/100.0
        motors.ccw(throttle)
        time.sleep(0.1)
    motors.disable()

    for ii in range(100):
        throttle = ii/100.0
        motors.forward(throttle)
        time.sleep(0.1)
    motors.disable()

    for ii in range(100):
        throttle = ii/100.0
        motors.backward(throttle)
        time.sleep(0.1)
    motors.disable()



if __name__ == "__main__":
    main()
