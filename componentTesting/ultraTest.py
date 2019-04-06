import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BOARD)

TRIG = 18
ECHO = 19

print("Distance Measurement In Progress")

GPIO.setup(TRIG,GPIO.OUT)
GPIO.setup(ECHO,GPIO.IN)

GPIO.output(TRIG, False)
print("Waiting For Sensor To Settle")
time.sleep(1)

def distance():
	# set Trigger to HIGH
	GPIO.output(TRIG, True)

	# set Trigger after 0.01ms to LOW
	time.sleep(0.00001)
	GPIO.output(TRIG, False)

	StartTime = time.time()
	StopTime = time.time()

	# save StartTime
	print("step1")
	while GPIO.input(ECHO) == 0:
		StartTime = time.time()
		if StartTime - StopTime > 0.029:
			return 5.0

	print("step2")
	# save time of arrival
	while GPIO.input(ECHO) == 1:
		StopTime = time.time()
		if StopTime - StartTime > 0.029:
			 return 5.0
	print("step3")
	# time difference between start and arrival
	TimeElapsed = StopTime - StartTime
	# multiply with the sonic speed (34300 cm/s)
	# and divide by 2, because there and back
	distance = (TimeElapsed * 343.00) / 2

	return distance

if __name__ == '__main__':
	try:
		while True:
			dist = distance()
			print ("Measured Distance = %.2f m" % dist)
			time.sleep(0)

		# Reset by pressing CTRL + C
	except KeyboardInterrupt:
		print("Measurement stopped by User")
		GPIO.cleanup()
