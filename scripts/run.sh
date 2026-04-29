#!/usr/bin/env bash
set -euo pipefail

# Script plantilla para ejecutar un prototipo mínimo sin dependencias externas.
# El estudiante debe adaptar este script según el lenguaje elegido.

echo "[INFO] Iniciando script de ejecución..."

if [[ ! -d "src" ]]; then
  echo "[ERROR] No existe el directorio src/."
  exit 1
fi

# Detección simple de archivo principal en src/
if [[ -f "src/main.py" ]]; then
  echo "[INFO] Detectado src/main.py (Python)."
  echo "[INFO] Ejecutando: python3 src/main.py"
  python3 src/main.py
elif [[ -f "src/main.c" ]]; then
  echo "[INFO] Detectado src/main.c (C)."
  echo "[INFO] Compila y ejecuta manualmente, por ejemplo:"
  echo "       gcc src/main.c -o build/main && ./build/main"
elif [[ -f "src/main.sh" ]]; then
  echo "[INFO] Detectado src/main.sh (Bash)."
  echo "[INFO] Ejecutando: bash src/main.sh"
  bash src/main.sh
elif [[ -f "src/main.S" || -f "src/main.s" ]]; then
  echo "[INFO] Detectado fuente ARM64 Assembly en src/."
  echo "[INFO] Compila y ejecuta manualmente según tu entorno ARM64."
else
  echo "[WARN] No se encontró un archivo principal estándar en src/."
  echo "[WARN] Crea uno de los siguientes archivos:"
  echo "       src/main.py | src/main.c | src/main.sh | src/main.S"
  exit 1
fi

echo "[INFO] Script finalizado."
