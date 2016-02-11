"""
Author: D. Knowles
Desc  : generalized PID control
"""
import RPi.GPIO as GPIO
import time
import numpy as np

class RGB():
	def __init__(self):
		GPIO.setmode(GPIO.BOARD)

		self.SDI = 37
		self.RCLK = 38
		self.SRCLK = 40

		GPIO.setwarnings(False)	#don't show setup warnings
		GPIO.setup(self.SDI, GPIO.OUT, initial=GPIO.LOW)
		GPIO.setup(self.RCLK, GPIO.OUT, initial=GPIO.LOW)
		GPIO.setup(self.SRCLK, GPIO.OUT, initial=GPIO.LOW)

		self.off = np.zeros((24,1))
		self.on = [0xFFFFFF,0x0,0xFFFFFF,0x0,0xFFFFFF,0x0]
		self.LED0 = [0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,
                     0x100,0x200,0x400,0x800,0x1000,0x2000,0x4000,0x8000,
                     0x10000,0x20000,0x40000,0x80000,0x100000,0x200000,0x400000,0x800000]	#original mode
		self.LED1 = [0x01,0x03,0x07,0x0f,0x1f,0x3f,0x7f,0xff]	#blink mode 1
		self.LED2 = [0x01,0x05,0x15,0x55,0xb5,0xf5,0xfb,0xff]	#blink mode 2
		self.LED3 = [0x02,0x03,0x0b,0x0f,0x2f,0x3f,0xbf,0xff]	#blink mode 3
		self.LED4 = [0xE00000,0x0,0x1C0000,0x0,0x38000,0x0,0x7000,0x0]

	def print_msg(self):
		print('Program is running...')
		print('Please press Ctrl+C to end the program...')

	def hc595_in(self,dat):
		for bit in range(0, 24):
			GPIO.output(self.SDI, 0x800000 & (dat << bit))
			GPIO.output(self.SRCLK, GPIO.HIGH)
			time.sleep(0.001)
			GPIO.output(self.SRCLK, GPIO.LOW)

	def hc595_out(self):
		GPIO.output(self.RCLK, GPIO.HIGH)
		time.sleep(0.001)
		GPIO.output(self.RCLK, GPIO.LOW)

	def loop(self):
		WhichLeds = self.LED0	# Change Mode, modes from LED0 to LED3
		sleeptime = 0.5		# Change speed, lower value, faster speed
		while True:
			for i in range(0, len(WhichLeds)):
				self.hc595_in(WhichLeds[i])
				self.hc595_out()
				time.sleep(sleeptime)

	def destroy(self):   # When program ending, the function is executed.
		self.hc595_in(0x0)
		self.hc595_out()
		GPIO.cleanup()

if __name__ == '__main__':
	test = RGB()
	test.print_msg()
	try:
		test.loop()
	except KeyboardInterrupt:
		test.destroy()
