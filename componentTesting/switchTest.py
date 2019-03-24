# Load library functions we want
import time
import os
import sys
import pygame

# Re-direct our output to standard error, we need to ignore standard out to hide some nasty print statements from pygame
sys.stdout = sys.stderr

# Settings for the joystick
axisUpDown = 1                          # Joystick axis to read for up / down position
axisUpDownInverted = False              # Set this to True if up and down appear to be swapped
axisLeftRight = 2                       # Joystick axis to read for left / right position
axisLeftRightInverted = False           # Set this to True if left and right appear to be swapped
buttonSlow = 8                          # Joystick button number for driving slowly whilst held (L2)
slowFactor = 0.5                        # Speed to slow to when the drive slowly button is held, e.g. 0.5 would be half speed
buttonFastTurn = 9                      # Joystick button number for turning fast (R2)
interval = 0.00                         # Time between updates in seconds, smaller responds faster but uses more processor time

os.environ["SDL_VIDEODRIVER"] = "dummy" # Removes the need to have a GUI window
pygame.init()
#pygame.display.set_mode((1,1))
print('Waiting for joystick... (press CTRL+C to abort)')
while True:
    try:
        try:
            pygame.joystick.init()
            # Attempt to setup the joystick
            if pygame.joystick.get_count() < 1:
                # No joystick attached, set LEDs blue
                pygame.joystick.quit()
                time.sleep(0.1)
            else:
                # We have a joystick, attempt to initialise it!
                joystick = pygame.joystick.Joystick(0)
                break
        except pygame.error:
            # Failed to connect to the joystick, set LEDs blue
            pygame.joystick.quit()
            time.sleep(0.1)
    except KeyboardInterrupt:
        # CTRL+C exit, give up
        print('User aborted')
        sys.exit()
print('Joystick found')
joystick.init()

try:
    print('Press CTRL+C to quit')
    # Loop indefinitely
    running = True
    while running:
        # Get the latest events from the system
        hadEvent = False
        events = pygame.event.get()
        # Handle each event individually
        for event in events:
            if event.type == pygame.QUIT:
                # User exit
                print("exiting")
            elif event.type == pygame.JOYBUTTONDOWN:
                # A button on the joystick just got pushed down
                if joystick.get_button(0):
                    print("Button 0")
                elif joystick.get_button(1):
                    print("Button 1")
                elif joystick.get_button(2):
                    print("Button 2")
                elif joystick.get_button(3):
                    print("Button 3")
                elif joystick.get_button(4):
                    print("Button 4")
                elif joystick.get_button(5):
                    print("Button 5")
                elif joystick.get_button(6):
                    print("Button 6")
                elif joystick.get_button(7):
                    print("Button 7")
                elif joystick.get_button(8):
                    print("Button 8")
                elif joystick.get_button(9):
                    print("Button 9")
                elif joystick.get_button(10):
                    print("Button 10")
                elif joystick.get_button(11):
                    print("Button 11")
                elif joystick.get_button(12):
                    print("Button 12")
                elif joystick.get_button(13):
                    print("Button 13")
                elif joystick.get_button(14):
                    print("Button 14")
                elif joystick.get_button(15):
                    print("Button 15")
            elif event.type == pygame.JOYAXISMOTION:
                # A joystick has been moved
                if joystick.get_axis(0):
                    axis0 = joystick.get_axis(0)
                    print("Axis 0 = %f" % axis0)
                if joystick.get_axis(1):
                    axis1 = joystick.get_axis(1)
                    print("Axis 1 = %f" % axis1)
                if joystick.get_axis(2):
                    axis1 = joystick.get_axis(2)
                    print("Axis 2 = %f" % axis1)
                if joystick.get_axis(3):
                    axis1 = joystick.get_axis(3)
                    print("Axis 3 = %f" % axis1)
            elif event.type == pygame.JOYHATMOTION:
                print("HAT! =",joystick.get_hat(0))





        # Wait for the interval period
        time.sleep(interval)
except KeyboardInterrupt:
    # CTRL+C exit
    print('User shutdown')
finally:
    print("do this stuff")
