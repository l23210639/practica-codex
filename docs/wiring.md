# Cableado y Validación de GPIO (Raspberry Pi Pico W)

## 1) Componentes detectados en el JSON de Wokwi
Derivado estrictamente de `parts` en el JSON proporcionado:

| Componente | Cantidad | ID(s) |
|---|---:|---|
| Raspberry Pi Pico W | 1 | `pico` |
| Keypad 4x4 (`wokwi-keypad64`) | 1 | `keypad` |
| LED individual azul | 1 | `led0` |
| Resistor 220 Ω | 1 | `r0` |

## 2) Mapeo GPIO real observado en `connections`

### Keypad (coincide con el firmware)
| Señal keypad | GPIO Pico W | Rol en firmware |
|---|---|---|
| R1 | GP8  | Fila salida |
| R2 | GP9  | Fila salida |
| R3 | GP10 | Fila salida |
| R4 | GP11 | Fila salida |
| C1 | GP12 | Columna entrada PULL_DOWN |
| C2 | GP13 | Columna entrada PULL_DOWN |
| C3 | GP14 | Columna entrada PULL_DOWN |
| C4 | GP15 | Columna entrada PULL_DOWN |

### LED(s)
| Señal | GPIO Pico W | Trayectoria |
|---|---|---|
| LED0 ánodo | GP0 | `pico:GP0 -> r0 -> led0:A` |
| LED0 cátodo | GND | `pico:GND.1 -> led0:C` |

## 3) Validación lógica vs hardware

### Coincidencias correctas
- Escaneo matricial 4x4 con filas en GP8–GP11 y columnas en GP12–GP15.
- Uso de `Pin.PULL_DOWN` en columnas es consistente con estrategia de activación por fila.
- Confirmación serial de tecla detectada.

### Diferencia crítica detectada
- **Firmware:** define barra de 8 LEDs en GP0–GP7.
- **JSON actual:** cablea **solo 1 LED** (GP0 con un resistor).

## 4) Impacto de la diferencia
- El firmware no falla: inicializar GP1–GP7 como salida sin carga conectada es válido.
- El efecto visual “chaser” completo **no será observable** en Wokwi con el JSON actual.
- Solo se verá actividad real en el LED conectado a GP0.

## 5) Recomendación de alineación (sin cambiar lógica)
Para respetar el comportamiento pretendido del firmware, el diagrama debe añadir:
- 7 LEDs extra (GP1–GP7).
- 7 resistores extra (recomendado 220 Ω a 330 Ω por LED).
- Retorno común a GND para cada LED.

## 6) Ejecución y verificación
### En Wokwi
1. Cargar este `main.py`.
2. Cargar el JSON actual.
3. Presionar teclas del keypad.
4. Verificar en serial `Key Detected: <tecla>`.
5. Verificar parpadeo en LED de GP0.

### En hardware real
- Si implementas barra de 8 LEDs física en GP0–GP7, verás el chaser completo.
- Si solo conectas 1 LED en GP0, verás confirmación mínima equivalente a Wokwi actual.
