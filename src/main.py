from machine import Pin
import time

# LED Bar Configuration (GP0 - GP7)
led_pins = [Pin(i, Pin.OUT) for i in range(8)]

# 4x4 Keypad Configuration
# Rows (Outputs) | Cols (Inputs with Pull-Down)
rows = [Pin(i, Pin.OUT) for i in range(8, 12)]
cols = [Pin(i, Pin.IN, Pin.PULL_DOWN) for i in range(12, 16)]

key_map = [
    ['1', '2', '3', 'A'],
    ['4', '5', '6', 'B'],
    ['7', '8', '9', 'C'],
    ['*', '0', '#', 'D']
]

def get_key():
    for r_idx, r_pin in enumerate(rows):
        r_pin.value(1)
        for c_idx, c_pin in enumerate(cols):
            if c_pin.value() == 1:
                r_pin.value(0)
                return key_map[r_idx][c_idx]
        r_pin.value(0)
    return None

print("CODEX System Active: Scanning Keypad...")

while True:
    key = get_key()
    if key:
        print(f"Key Detected: {key}")
        # Visual response: Cycle through the LED bar
        for led in led_pins:
            led.value(1)
            time.sleep(0.05)
            led.value(0)
    time.sleep(0.1)
