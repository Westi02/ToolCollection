import pyautogui
import keyboard
running = False
def activate(key):
    global running
    if key.name == 'j':
        running = not running
        print("flipped running")
if __name__ == '__main__':
    pyautogui.PAUSE = 0.05
    keyboard.on_press(callback=activate)
    x0, y0 = pyautogui.position()
    while True:
        x, y = pyautogui.position()
        if x0 != x and y0 != y:
            x0, y0 = x, y
            print(f"x: {x}, y: {y}")
        while running:
            pyautogui.click(x=x, y=y, button="left")
