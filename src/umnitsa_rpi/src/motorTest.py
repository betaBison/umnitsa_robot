

from motors import Motors

control = Motors()

time.sleep(5)
print("starting cw")
for ii in range(100):
    throttle = (0.01*ii)
    control.cw(throttle)
    time.sleep(0.1)
control.disable()
time.sleep(5)
