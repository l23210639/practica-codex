# Plantilla de Documentación Técnica para Raspberry Pi Pico W (RP2040)

## Resumen
Este repositorio está preparado para documentar y organizar un proyecto de **Raspberry Pi Pico W** usando **MicroPython**, priorizando estructura limpia y trazabilidad técnica sin alterar la lógica base del firmware.

> Estado actual: el código fuente proporcionado contiene solo un marcador de posición (`# PASTE YOUR MICROPYTHON CODE HERE`).

## Objetivo
- Estandarizar la estructura del repositorio para Pico W.
- Documentar arquitectura, cableado y mapeo GPIO.
- Facilitar ejecución en **Wokwi** y en hardware real.
- Mantener seguridad básica de credenciales si se agrega Wi-Fi.

## Estructura propuesta (MicroPython)
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

## Características de la plantilla
- Organización mínima recomendada para firmware en MicroPython.
- Documentación base lista para ampliar cuando se incorpore lógica real.
- Sección de despliegue para simulación y para tarjeta física.
- Reglas para manejo seguro de credenciales Wi-Fi.

## Componentes (derivados del material disponible)
Con la información entregada en este turno no se incluyó un `diagram.json` con contenido real, por lo que solo se puede confirmar:

- 1 × Raspberry Pi Pico W (RP2040 con Wi‑Fi)

Si compartes el `diagram.json` real (Wokwi), se completa la lista exacta de periféricos, resistencias, sensores y actuadores.

## Mapeo GPIO actual
No hay asignaciones de pines en el código fuente entregado. Ver tabla base en `docs/wiring.md` para documentar el mapeo cuando exista lógica funcional.

## Flujo de trabajo recomendado
1. Colocar firmware en `src/main.py` sin cambiar comportamiento funcional.
2. Colocar módulos auxiliares en `lib/`.
3. Actualizar `docs/architecture.md` con módulos y flujo.
4. Actualizar `docs/wiring.md` con conexiones reales y GPIO definitivos.

## Ejecución en Wokwi
1. Crear un proyecto de Raspberry Pi Pico W en Wokwi.
2. Copiar el contenido de `src/main.py` al archivo `main.py` del simulador.
3. Cargar `diagram.json` del proyecto (si aplica).
4. Ejecutar simulación y validar salida en consola/serial.

## Ejecución en hardware real (Pico W)
1. Instalar MicroPython en la tarjeta (archivo UF2 oficial de Pico W).
2. Conectar la tarjeta por USB.
3. Usar Thonny, mpremote o ampy para copiar:
   - `src/main.py` → `/main.py` en la Pico W
   - archivos de `lib/` → `/lib/` en la Pico W
4. Reiniciar la tarjeta y monitorear por serial.

## Wi-Fi (seguridad de credenciales)
Si el firmware usa Wi-Fi:
- No guardar SSID/contraseña en `main.py` hardcodeadas para producción.
- Usar archivo local no versionado (ejemplo: `secrets.py`) y agregarlo a `.gitignore`.
- En documentación, mostrar variables de ejemplo sin valores reales.

Ejemplo de plantilla segura:
```python
# secrets.py (NO subir al repositorio)
WIFI_SSID = "TU_SSID"
WIFI_PASSWORD = "TU_PASSWORD"
```

## Nota de alcance
Este repositorio está orientado a **documentación técnica y estructura**. No se modificó la lógica principal debido a que no se proporcionó lógica funcional más allá del marcador de posición.
