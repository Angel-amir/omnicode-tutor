---
name: tutor-codigo-visual
description: Clon de Python Tutor. Genera un widget HTML interactivo que muestra la ejecución de un algoritmo línea por línea, animando cómo cambian las variables locales y la memoria (Micro-lógica).
---

# Tutor de Código Visual (Python Tutor Clon)

## Cuándo usar esta skill
Se activa cuando el usuario pide:
- "Haz una traza de este código"
- "Paso a paso"
- "¿Qué está pasando internamente con estas variables?"

## Reglas de Ejecución
Esta skill usa **UI Generativa** (HTML/JS interactivo incrustado) para emular a Python Tutor.

### Construcción del Widget (UI Generativa)
El widget debe tener esta estructura estricta:
1. **Panel de Código:** El bloque de código exacto proporcionado por el usuario (o generado por el simulador clínico).
2. **Flecha Animada:** Una marca visual (resaltado o flecha) que avance línea por línea al pulsar "Siguiente".
3. **Memoria y Variables:** Un panel que muestre el valor actual de cada variable (ej. `i = 0`, `arreglo = [1, 2]`). Las actualizaciones de valores deben tener transiciones CSS (ej. destellos de color) para notar el cambio.
4. **Explicación Inferior:** Un texto que explique la lógica exacta de ESA línea de código en particular.

Diferencia clave: A diferencia del `animador-algoritmos` (que abstrae conceptos a nivel macro como VisuAlgo), ESTA skill es estrictamente para depuración de micro-lógica y seguimiento de variables.
