# Pico W Keypad Scanner + LED Chaser (MicroPython)

Proyecto para Raspberry Pi Pico W que escanea un keypad 4x4 (matriz) y confirma cada tecla detectada con salida serial y una animación tipo chaser en GPIO GP0–GP7.

## Resumen técnico
- **Board:** Raspberry Pi Pico W (RP2040)
- **Firmware:** MicroPython (`src/main.py`)
- **Entrada:** Keypad 4x4 en GP8–GP15
- **Salida visual esperada:** barra de 8 LEDs en GP0–GP7
- **Estado del diagrama recibido:** actualmente define solo 1 LED en GP0

## Estructura del repositorio
```text
.
├── README.md
├── src/
│   └── main.py
├── lib/
│   └── .gitkeep
└── docs/
    ├── architecture.md
    └── wiring.md
```

## Componentes (según JSON recibido)
- 1 × Raspberry Pi Pico W
- 1 × Keypad 4x4 (`wokwi-keypad64`)
- 1 × LED azul
- 1 × Resistor 220 Ω

> Nota: el firmware está preparado para 8 LEDs, pero el JSON actual solo contiene 1 LED conectado a GP0.

## Mapeo GPIO
### Keypad
- GP8  → R1
- GP9  → R2
- GP10 → R3
- GP11 → R4
- GP12 → C1
- GP13 → C2
- GP14 → C3
- GP15 → C4

### LED
- GP0 → resistor 220 Ω → ánodo LED
- cátodo LED → GND

## Ejecución en Wokwi
1. Crear proyecto **Raspberry Pi Pico W** en Wokwi.
2. Copiar `src/main.py` como `main.py`.
3. Cargar el JSON de diagrama proporcionado.
4. Iniciar simulación.
5. Presionar teclas del keypad y revisar serial:
   - `CODEX System Active: Scanning Keypad...`
   - `Key Detected: <tecla>`

## Ejecución en hardware real
1. Flashear MicroPython oficial para Pico W (UF2).
2. Copiar `src/main.py` a la raíz del sistema de archivos de la placa como `main.py`.
3. Conectar keypad 4x4 a GP8–GP15.
4. Conectar barra de 8 LEDs a GP0–GP7 (cada LED con su resistor recomendado).
5. Abrir monitor serial para observar eventos de teclado.

## Validación de consistencia
- La lógica de keypad **sí coincide** con el diagrama.
- La parte de LED bar **no coincide totalmente** con el JSON (falta GP1–GP7).
- No se modificó la lógica principal del firmware.

## Seguridad
Este proyecto no usa Wi‑Fi actualmente. Si en el futuro se integra red:
- usar `secrets.py` no versionado,
- no publicar credenciales,
- no hardcodear contraseñas en `main.py`.
