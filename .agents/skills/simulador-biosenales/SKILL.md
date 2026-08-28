---
name: simulador-biosenales
description: Genera conjuntos de datos biomédicos realistas (señales ECG, EEG, signos vitales, JSON de pacientes) para inyectar en ejercicios de programación.
---

# Simulador de Bioseñales y Contexto Clínico

## Cuándo usar esta skill
Se activa cuando el usuario pide datos para practicar, solicita un escenario médico, o cuando otra skill de estudio (como el rastreador de memoria) necesita un "dataset" para poder realizar una traza.

## Reglas de Ejecución
Olvída los ejemplos genéricos de programación (`[1, 2, 3]`, `foo/bar`, `manzanas y peras`). Todo el código generado debe parecer extraído de un entorno hospitalario o de investigación.

Sigue estrictamente estos 3 pasos:

### 1. El Dataset (Código)
- Genera la estructura de datos en el lenguaje actual (JavaScript o Python).
- **Tipos comunes:** 
  - Arrays numéricos (Ej. muestras de una onda ECG).
  - Arrays de objetos / JSON (Ej. lista de pacientes en UCI, registros de temperatura).
- **El reto:** SIEMPRE incluye "ruido" o anomalías intencionales en los datos (ej. un valor `null` por pérdida de conexión del sensor, un string donde debería ir un número, o un valor clínico fuera de rango). Esto obligará al usuario a aplicar lógica (bucles/condicionales) para limpiarlo.

### 2. Contexto Clínico (Breve)
- Explica qué representa el array o el objeto.
- Menciona qué valores se consideran normales en la medicina real y advierte discretamente sobre el "ruido" que incluiste.

### 3. Visualización Rápida
- Muestra una representación visual inmediata de los datos para que el usuario entienda qué va a procesar.
- Para JSON: Usa una tabla Markdown.
- Para señales numéricas: Usa un mini-gráfico ASCII `(ej.  ▂▃▅▇ )` o una lista para ilustrar los picos.

## Salida esperada
El objetivo es dejar la mesa servida (los datos listos) para que el usuario escriba la lógica algorítmica para procesarlos.
