# Estructura del Repositorio

## Árbol de directorios recomendado
```text
nombre-del-proyecto/
├── README.md
├── docs/
│   ├── propuesta.md
│   ├── caso_de_uso.md
│   ├── estructura_repositorio.md
│   └── plan_de_pruebas.md
├── src/
│   └── main.<ext>
├── scripts/
│   └── run.sh
└── tests/
    └── test_plan.md
```

## Explicación de cada carpeta
- `docs/`: documentación principal de planeación, alcance y pruebas.
- `src/`: código fuente mínimo del prototipo.
- `scripts/`: scripts utilitarios para ejecutar o validar de forma simple.
- `tests/`: checklist y evidencias de verificación manual.

## Explicación de cada archivo
- `README.md`: guía general de la actividad, reglas y entregables.
- `docs/propuesta.md`: definición del problema, solución y alcance.
- `docs/caso_de_uso.md`: narrativa de interacción del usuario con el sistema.
- `docs/estructura_repositorio.md`: estándar de organización del proyecto.
- `docs/plan_de_pruebas.md`: plan formal de pruebas mínimas.
- `src/main.<ext>`: punto de entrada del prototipo (Python, C, Bash o Assembly).
- `scripts/run.sh`: script base para ejecutar de forma controlada.
- `tests/test_plan.md`: checklist breve para validar entrega final.

## Reglas para nombrar archivos
- Usa minúsculas.
- Usa guion bajo para separar palabras cuando aplique.
- Evita espacios y acentos en nombres de archivo.
- Mantén nombres cortos, claros y consistentes.

## Reglas para evitar desorden
- No dupliques documentos con el mismo propósito.
- No crees carpetas extra sin una razón clara.
- Mantén una sola versión de cada plantilla.
- Todo cambio relevante debe reflejarse en `README.md` o `docs/`.

## Nota de tamaño y complejidad
Mantén pocos archivos y funciones pequeñas. Esta práctica evalúa primero la calidad de documentación y planeación, no la cantidad de código.
