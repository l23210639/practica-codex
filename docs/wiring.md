# Cableado y Mapeo de GPIO (Pico W)

## Alcance
Este documento describe conexiones físicas y uso de pines para Raspberry Pi Pico W.

## Supuestos actuales
- No se recibió el contenido de `diagram.json`.
- No hay uso explícito de pines en el código proporcionado.
- Se deja plantilla de mapeo para completar cuando se integre el diagrama real.

## Componentes confirmados
| Componente | Cantidad | Fuente |
|---|---:|---|
| Raspberry Pi Pico W (RP2040) | 1 | Contexto proporcionado |

## Tabla de mapeo GPIO (plantilla)
| Función | GPIO (Pico W) | Pin físico Pico W | Dirección | Voltaje | Notas |
|---|---:|---|---|---|---|
| Pendiente | GP0 | Pin 1 | IN/OUT | 3.3V | Completar con diagrama real |
| Pendiente | GP1 | Pin 2 | IN/OUT | 3.3V | Completar con diagrama real |
| Pendiente | GP2 | Pin 4 | IN/OUT | 3.3V | Completar con diagrama real |

## Referencia rápida de energía
- Lógica GPIO: **3.3V** (no tolerante a 5V en entradas digitales).
- Pines de alimentación frecuentes:
  - `3V3(OUT)` para periféricos de baja corriente.
  - `VBUS` cuando la tarjeta está alimentada por USB.
  - `GND` común para todos los módulos.

## Buenas prácticas de cableado
- Conectar todas las tierras (GND) en común.
- Validar consumo total antes de alimentar periféricos desde `3V3(OUT)`.
- Evitar conectar señales de 5V directamente a GPIO.
- Documentar toda conexión en tabla y en diagrama.

## Wokwi
1. Cargar `diagram.json` en el simulador.
2. Confirmar que nombres de pines del diagrama coinciden con la tabla.
3. Actualizar este documento tras cualquier cambio de cableado.

## Hardware real
1. Replicar el diagrama en protoboard.
2. Verificar continuidad y polaridad antes de energizar.
3. Ejecutar pruebas incrementales por periférico.
