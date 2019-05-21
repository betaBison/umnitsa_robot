# PD control test

import numpy as np
import matplotlib.pyplot as plt

n_0 = 0.0
n_end = 0.1
sim_points = 15

# time vector
time = np.linspace(n_0,n_end,sim_points)

# input vector
step = 4
input = np.linspace(step,step,sim_points)

# kP gains
kP1 = 0.1
kP2 = 0.8
kP3 = 1.2
kP4 = 2.0

# resulting position vectors
initial = 2.0
P1 = [initial]
P2 = [initial]
P3 = [initial]
P4 = [initial]

for tt in range(len(time)-1):
    error1 = input[tt] - P1[tt] # find the difference between desired and actual
    prop1 = error1*kP1          # multiply by the kP gain
    P1.append(prop1 + P1[tt])   # add the new proportional gain to the current position

    error2 = input[tt] - P2[tt]
    prop2 = error2*kP2
    P2.append(prop2 + P2[tt])

    error3 = input[tt] - P3[tt]
    prop3 = error3*kP3
    P3.append(prop3 + P3[tt])

    error4 = input[tt] - P4[tt]
    prop4 = error4*kP4
    P4.append(prop4 + P4[tt])

plt.plot(time,input,time,P1,time,P2,time,P3,time,P4)
plt.legend(["input","kP1 = 0.1","kP2 = 0.8","kP3 = 1.2","kP4 = 2.0"])
plt.show()
