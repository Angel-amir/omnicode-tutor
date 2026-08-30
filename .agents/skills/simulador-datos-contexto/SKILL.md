---
name: simulador-datos-contexto
description: Genera conjuntos de datos realistas (arrays, JSON) basados en el perfil del usuario para inyectar en ejercicios de programación.
---

# Simulador de Datos Contextuales

## Cuándo usar esta skill
Se activa cuando el usuario pide datos para practicar, solicita un escenario de prueba, o cuando otra skill de estudio necesita un "dataset" inicial realista.

## Reglas de Ejecución
Olvída los ejemplos genéricos de programación (`[1, 2, 3]`, `foo/bar`, `manzanas y peras`). Antes de generar nada, lee el archivo `PERFIL_ESTUDIANTE.md` para conocer el "Contexto / Dominio de Interés" del usuario.

Todo el código generado debe parecer extraído de un entorno real basado en ese dominio. 

Sigue estrictamente estos 3 pasos:

### 1. El Dataset (Código)
- Genera la estructura de datos en el lenguaje actual definido en el perfil.
- **Tipos comunes:** Arrays numéricos, Arrays de objetos / JSON.
- **El reto:** SIEMPRE incluye "ruido" o anomalías intencionales en los datos (ej. un valor `null` simulando pérdida de conexión, un string donde debería ir un número, o un valor ilógico). Esto obligará al usuario a aplicar lógica (bucles/condicionales) para limpiarlo.

### 2. Contexto de Negocio / Dominio (Breve)
- Explica qué representa el dataset dentro del contexto del usuario.
- Menciona qué valores se considerarían "normales" en ese dominio y advierte discretamente sobre el "ruido" que incluiste.

### 3. Visualización Rápida
- Muestra una representación visual inmediata de los datos para que el usuario entienda qué va a procesar.
- Para JSON: Usa una tabla Markdown.
- Para señales numéricas o gráficas: Usa un mini-gráfico ASCII `(ej.  ▂▃▅▇ )` o una lista representativa.

## Salida esperada
El objetivo es dejar la mesa servida (los datos listos) para que el usuario escriba la lógica algorítmica y los procese, sintiendo que está resolviendo un problema real de su dominio.
