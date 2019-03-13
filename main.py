"""
Author: D. Knowles
Desc  : main control architecture for umnitsa robot
"""

import time
from motorControl import MotorControl

def main():
    motors = MotorControl()
    motors.disable()

    print("starting cw")
    for ii in range(100):
        throttle = ii/100.0
        motors.cw(throttle)
        time.sleep(0.1)
    motors.disable()

    print("starting ccw")
    for ii in range(100):
        throttle = ii/100.0
        motors.ccw(throttle)
        time.sleep(0.1)
    motors.disable()

    print("starting forward")
    for ii in range(100):
        throttle = ii/100.0
        motors.forward(throttle)
        time.sleep(0.1)
    motors.disable()

    print("starting backward")
    for ii in range(100):
        throttle = ii/100.0
        motors.backward(throttle)
        time.sleep(0.1)
    motors.disable()

    print("end of script")



if __name__ == "__main__":
    main()
