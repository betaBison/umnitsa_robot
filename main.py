"""
Author: D. Knowles
Desc  : main control architecture for umnitsa robot
"""

import time
from motorControl import MotorControl

def main():
    motors = MotorControl()
    motors.disable()

    time.sleep(5)

    print("starting cw")
    for ii in range(100):
        throttle = 1.0
        motors.cw(throttle)
    motors.disable()
    time.sleep(5)

    """
    print("starting ccw")
    for ii in range(100):
        throttle = 1.0
        motors.ccw(throttle)
    motors.disable()
    time.sleep(5)

    print("starting forward")
    for ii in range(100):
        throttle = 1.0
        motors.forward(throttle)
    motors.disable()
    time.sleep(5)

    print("starting backward")
    for ii in range(100):
        throttle = 1.0
        motors.backward(throttle)
    motors.disable()
    time.sleep(5)

    print("starting right")
    for ii in range(100):
        throttle = 1.0
        motors.right(throttle)
    motors.disable()
    time.sleep(5)

    print("starting left")
    for ii in range(100):
        throttle = 1.0
        motors.left(throttle)
    motors.disable()
    time.sleep(5)
    """

    print("end of script")



if __name__ == '__main__':
    try:
        while True:
            main()

    except KeyboardInterrupt:
        motors.disable()
