# ADR 0001: Implementación de Dynamic Context Loading y Flattening de Skill

**Fecha:** 2026-08-30
**Estado:** Aceptado

## Contexto
Originalmente, el orquestador del tutor (`SKILL.md`) y las referencias estaban dispersos, y las reglas globales se encontraban en un archivo `AGENTS.md` dependiente del espacio de trabajo local.

## Decisión
1. **Dynamic Context Loading:** Adoptamos una arquitectura basada en intención. `SKILL.md` actúa como el orquestador maestro que lee la petición del usuario y enruta la lectura a módulos especializados en la carpeta `references/`.
2. **Flattening de Repositorio:** El repositorio fue reestructurado para que su raíz actúe directamente como la Skill global. Esto facilita que cualquier usuario instale la skill en `~/.gemini/config/skills/omnicode-tutor`.
3. **Encapsulamiento de Reglas:** Movimos las reglas pedagógicas ("Cero Spoilers", "Método Socrático") directamente al `SKILL.md` para hacer la skill 100% portátil e independiente del espacio de trabajo.

## Consecuencias
* **Positivas:** Escalabilidad horizontal casi infinita (podemos agregar más archivos `.md` a `references/` sin saturar la ventana de contexto de la IA). La skill es ahora distribuible.
* **Negativas:** Obliga a los desarrolladores a ser meticulosos manteniendo actualizadas las rutas relativas en la matriz de enrutamiento del orquestador.
