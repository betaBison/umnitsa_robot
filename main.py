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
        throttle = 1.0
        motors.cw(throttle)
        time.sleep(0.1)
    motors.disable()
    time.sleep(5)

    print("starting ccw")
    for ii in range(100):
        throttle = 1.0
        motors.ccw(throttle)
        time.sleep(0.1)
    motors.disable()
    time.sleep(5)

    print("starting forward")
    for ii in range(100):
        throttle = 1.0
        motors.forward(throttle)
        time.sleep(0.1)
    motors.disable()
    time.sleep(5)

    print("starting backward")
    for ii in range(100):
        throttle = 1.0
        motors.backward(throttle)
        time.sleep(0.1)
    motors.disable()
    time.sleep(5)

    print("starting right")
    for ii in range(100):
        throttle = 1.0
        motors.right(throttle)
        time.sleep(0.1)
    motors.disable()
    time.sleep(5)

    print("starting left")
    for ii in range(100):
        throttle = 1.0
        motors.left(throttle)
        time.sleep(0.1)
    motors.disable()
    time.sleep(5)

    print("end of script")

    y =
    side =



if __name__ == "__main__":
    main()
