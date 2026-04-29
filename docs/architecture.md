# Arquitectura de Firmware (MicroPython - Pico W)

## Resumen
Se adopta una arquitectura mínima para proyectos Pico W en MicroPython, enfocada en separación de responsabilidades y mantenibilidad.

## Estructura de carpetas
```text
src/
  main.py        # Punto de entrada del firmware
lib/
  ...            # Módulos auxiliares reutilizables
docs/
  wiring.md      # Conexiones físicas y GPIO
  architecture.md# Este documento
```

## Estado del código fuente
El archivo principal actual contiene únicamente:

```python
# PASTE YOUR MICROPYTHON CODE HERE
```

No hay lógica funcional para desglosar módulos, flujo de control ni máquina de estados.

## Flujo de arranque esperado (cuando exista firmware real)
1. Inicialización de runtime MicroPython.
2. Configuración de GPIO/periféricos.
3. (Opcional) Inicialización de red Wi-Fi.
4. Bucle principal o scheduler cooperativo.
5. Manejo de errores y recuperación básica.

## Convenciones recomendadas
- Mantener `main.py` como orquestador y mover utilidades a `lib/`.
- Evitar efectos secundarios complejos al importar módulos.
- Nombrar funciones por responsabilidad (`init_*`, `read_*`, `publish_*`, `handle_*`).
- Documentar precondiciones de hardware en docstrings.

## Wi-Fi (si aplica)
- Consumir credenciales desde `secrets.py` no versionado.
- Implementar reintentos con timeout para conexión.
- Registrar estado de red por serial sin exponer datos sensibles.

## Validación mínima recomendada
- Arranque sin excepciones.
- Verificación de periféricos críticos.
- Confirmación de ciclo principal estable durante N minutos.
- Pruebas con desconexión/reconexión (si hay Wi-Fi).
