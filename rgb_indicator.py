"""
Author: D. Knowles
Desc  : generalized PID control
"""
import RPi.GPIO as GPIO
import time

class RGB():
	def __init__(self):
		GPIO.setmode(GPIO.BOARD)

		self.SDI = 37
		self.RCLK = 38
		self.SRCLK = 40

		GPIO.setup(self.SDI, GPIO.OUT, initial=GPIO.LOW)
		GPIO.setup(self.RCLK, GPIO.OUT, initial=GPIO.LOW)
		GPIO.setup(self.SRCLK, GPIO.OUT, initial=GPIO.LOW)

		self.off = np.zeros((24,1))
		self.on = np.ones((24,1))
		self.LED0 = [0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80]	#original mode
		self.LED1 = [0x01,0x03,0x07,0x0f,0x1f,0x3f,0x7f,0xff]	#blink mode 1
		self.LED2 = [0x01,0x05,0x15,0x55,0xb5,0xf5,0xfb,0xff]	#blink mode 2
		self.LED3 = [0x02,0x03,0x0b,0x0f,0x2f,0x3f,0xbf,0xff]	#blink mode 3

	def print_msg():
		print('Program is running...')
		print('Please press Ctrl+C to end the program...')

	def hc595_in(dat):
		for bit in range(0, 8):
			GPIO.output(self.SDI, 0x80 & (dat << bit))
			GPIO.output(self.SRCLK, GPIO.HIGH)
			time.sleep(0.001)
			GPIO.output(self.SRCLK, GPIO.LOW)

	def hc595_out():
		GPIO.output(self.RCLK, GPIO.HIGH)
		time.sleep(0.001)
		GPIO.output(self.RCLK, GPIO.LOW)

	def loop():
		WhichLeds = self.LED0	# Change Mode, modes from LED0 to LED3
		sleeptime = 0.1		# Change speed, lower value, faster speed
		while True:
			for i in range(0, len(WhichLeds)):
				self.hc595_in(WhichLeds[i])
				self.hc595_out()
				time.sleep(sleeptime)

			for i in range(len(WhichLeds)-1, -1, -1):
				self.hc595_in(WhichLeds[i])
				self.hc595_out()
				time.sleep(sleeptime)

	def destroy():   # When program ending, the function is executed.
		GPIO.cleanup()

if __name__ == '__main__':
	test = RGB()
	test.print_msg()
	try:
		test.loop()
	except KeyboardInterrupt:
		test.destroy()
