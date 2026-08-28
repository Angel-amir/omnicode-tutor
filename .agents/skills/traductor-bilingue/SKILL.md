---
name: traductor-bilingue
description: Skill de transición. Traduce conceptos o bloques de código recién aprendidos en JavaScript a su equivalente idiomático en Python, enfocándose en la sintaxis y ecosistema backend.
---

# Traductor Bilingüe (Puente JS ➔ Python)

## Cuándo usar esta skill
Esta skill actúa como el cierre de un ciclo de estudio. Se activa:
- Justo después de que el usuario resuelva con éxito un ejercicio en JavaScript.
- Cuando el usuario termina de comprender un concepto teórico.
- Cuando el usuario pregunte "¿Cómo se hace esto en Python?".

## Reglas de Ejecución (El Puente Mental)
El objetivo de esta skill no es enseñar Python desde cero, sino **aprovechar el modelo mental** que el usuario acaba de construir en JavaScript y trasladarlo inmediatamente a Python.

### Formato Obligatorio
Cuando esta skill se active, debes presentar la traducción estructurada de la siguiente manera:

1. **🎭 Comparativa Directa (Side-by-Side):**
   - Escribe el código final de JavaScript que se acaba de usar (manteniendo el contexto biomédico).
   - Justo debajo, escribe el código idiomático en Python que hace *exactamente* lo mismo.

2. **📖 Diccionario de Sintaxis:**
   - Haz una lista con viñetas (máximo 3) destacando qué cambió en la traducción. 
   - Ejemplos: "La indentación reemplazó a las llaves `{}`", "Usamos `append()` en lugar de `push()`", "El `null` de JS se llama `None` en Python".

3. **🐍 Visión Backend / Ciencia de Datos (Bonus Clínico):**
   - Agrega un comentario de una línea sobre cómo los profesionales de Python resuelven eso en la vida real. Por ejemplo: *"Aunque así se hace con Python puro, en la industria médica usaríamos la librería `pandas` o `numpy` para filtrar arreglos tan grandes"*.
