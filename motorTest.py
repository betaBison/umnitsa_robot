import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BOARD) # use RasPi pin numbers
GPIO.setwarnings(False) # don't show setup warnings

GPIO.setup(3,GPIO.OUT,initial=False)
GPIO.setup(5,GPIO.OUT,initial=False)
GPIO.setup(7,GPIO.OUT,initial=False)
GPIO.setup(8,GPIO.OUT,initial=False)
GPIO.setup(10,GPIO.OUT,initial=False)
GPIO.setup(11,GPIO.OUT,initial=False)

"""
# pin testing
ii = 0
while ii < 50:
    if ii % 2 == 0:
        GPIO.output(3,False)
        GPIO.output(5,False)
        GPIO.output(7,False)
        GPIO.output(8,False)
        GPIO.output(10,False)
        GPIO.output(11,False)
        print("going low")
    else:
        GPIO.output(3,True)
        GPIO.output(5,True)
        GPIO.output(7,True)
        GPIO.output(8,True)
        GPIO.output(10,True)
        GPIO.output(11,True)
        print("going high")
    time.sleep(2)
    ii += 1
"""

# individual motor testing
# driver board #1
time.sleep(5)
GPIO.output(3,True)
time.sleep(2)
GPIO.output(5,True)
time.sleep(2)
GPIO.output(5,False)
time.sleep(2)
GPIO.output(7,True)
time.sleep(2)
GPIO.output(7,False)
time.sleep(2)
GPIO.output(3,False)

# driver board #2
time.sleep(5)
GPIO.output(8,True)
time.sleep(2)
GPIO.output(10,True)
time.sleep(2)
GPIO.output(10,False)
time.sleep(2)
GPIO.output(11,True)
time.sleep(2)
GPIO.output(11,False)
time.sleep(2)
GPIO.output(8,False)
time.sleep(5)






