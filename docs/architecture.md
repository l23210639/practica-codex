# Arquitectura del Firmware (MicroPython, Pico W)

## 1) Objetivo funcional
Detectar pulsaciones en un keypad 4x4 mediante escaneo de matriz y confirmar cada tecla con:
1. Mensaje por serial (`Key Detected: X`)
2. Efecto visual tipo chaser sobre salidas GP0–GP7.

## 2) Estructura lógica del código

### Inicialización de salidas LED
- `led_pins = [Pin(i, Pin.OUT) for i in range(8)]`
- Reserva GP0 a GP7 como salidas digitales.

### Inicialización de keypad
- Filas: GP8–GP11 como `Pin.OUT`.
- Columnas: GP12–GP15 como `Pin.IN` con `Pin.PULL_DOWN`.
- `key_map` traduce posición [fila][columna] a carácter.

### Función `get_key()`
Patrón de escaneo matricial clásico:
1. Activa una fila (`r_pin.value(1)`).
2. Lee columnas para detectar nivel alto.
3. Si detecta columna activa, devuelve la tecla mapeada.
4. Desactiva fila y continúa.

### Bucle principal
- Invoca `get_key()` continuamente.
- Si hay tecla:
  - Imprime en serial.
  - Recorre `led_pins` con encendido/apagado de 50 ms por LED.
- Espera base de 100 ms por iteración.

## 3) Verificación de consistencia con el diagrama
- **Keypad:** consistente al 100% con conexiones GP8–GP15.
- **LED bar:** el código espera 8 LEDs; el JSON incluye solo 1 LED en GP0.

## 4) Consideraciones de diseño (sin alterar comportamiento)
- El escaneo y temporización actual son correctos para demostración básica.
- No hay antirrebote explícito; puede haber repetición de teclas si se mantiene pulsada.
- La lógica actual prioriza simplicidad y trazabilidad.

## 5) Optimización documental recomendada
Sin cambiar la lógica de negocio:
- Mantener este `main.py` como referencia funcional mínima.
- Si el proyecto crece, separar en módulos:
  - `lib/keypad.py` (escaneo y keymap)
  - `lib/led_bar.py` (animaciones)
  - `main.py` (orquestación)

## 6) Seguridad Wi‑Fi
Este firmware no usa red. En caso de ampliar con Pico W Wi‑Fi:
- Aislar credenciales en `secrets.py` no versionado.
- Nunca exponer SSID/password en commits.
