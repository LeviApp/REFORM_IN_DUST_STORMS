import keyboard

def test():
    s = False
    while s == False:
        if keyboard.is_pressed('a') == True:
            print('A WAS PRESSED!')
            s = True

test()