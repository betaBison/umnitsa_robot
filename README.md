# umnitsa_robot
Umnitsa comes from the englsih transliteration of the russian word "умница" clever pesron or smarty-pants.
Umnitsa is designed to be a clever robot.  

umnitsa_robot is a [metapackage](http://wiki.ros.org/catkin/package.xml#Metapackages) for all the packages run on the raspberry pi. Packages are located in the `src/` directory and a brief description is included below

## Setup
This package is currently compatible with the Raspberry Pi 3 B+ and Jetson Nano.

### Raspberry Pi
Install needed dependencies:  
`pip install`

### Jetson Nano
Install needed dependencies:  
`pip install Jetson.GPIO`

## Package Overview
### Joystick
receives input from a switch pro controller and outputs to joystick message.

### Motors
subscribes to ... and outputs motor control.  

Normal mode:  
The max throttle going forward is 71% on all motors, not 100%. This is so that moving the joystick in a steady
circle produces a steady cirlce of robot movement.  

Turbo mode:  
If the joystick is moved at all, one of the motors is set to 100% throttle

### RGB
Outputs to the UmnitsaRGB custom PCB  

### Ultrasonic
Inputs from the UmnitsaUltra custom PCB
