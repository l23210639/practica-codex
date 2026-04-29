# Plantilla de Plan de Pruebas

## 1) Objetivo del plan de pruebas
Describe qué vas a validar de tu propuesta y prototipo mínimo.

## 2) Casos de prueba (tabla)
| ID | Caso de prueba | Entrada | Resultado esperado | Resultado obtenido | Estado (Pendiente/OK/Falla) |
|----|----------------|---------|--------------------|--------------------|-----------------------------|
| CP-01 |  |  |  |  |  |
| CP-02 |  |  |  |  |  |
| CP-03 |  |  |  |  |  |

## 3) Pruebas manuales
- Lista pasos manuales para validar ejecución básica.
- Incluye comandos exactos que usarás.

## 4) Pruebas con errores
- Define al menos 2 pruebas con entradas inválidas o escenarios de fallo.
- Describe el comportamiento esperado ante error.

## 5) Pruebas mínimas por lenguaje
> No uses frameworks de testing; solo validación manual y evidencia simple.

- **ARM64 Assembly:**
  - Compila (si aplica) y ejecuta un caso nominal.
  - Valida al menos un manejo básico de entrada o salida.
- **C:**
  - Compila sin errores críticos.
  - Ejecuta un caso nominal y un caso de error.
- **Python:**
  - Ejecuta `main.py` sin excepciones en caso nominal.
  - Ejecuta un caso de error controlado.
- **Bash:**
  - Ejecuta script con permisos correctos.
  - Valida manejo de argumento faltante o inválido.

## 6) Criterios para considerar la práctica terminada
- Propuesta documentada completa.
- Caso de uso completo y coherente.
- Estructura del repositorio limpia y funcional.
- Evidencia de pruebas mínimas registradas.
- Alcance pequeño respetado.
