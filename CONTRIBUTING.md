# Guía de Contribución 🤝

¡Gracias por tu interés en mejorar el Socratic AI Tutor Framework!

Este proyecto busca expandir las capacidades pedagógicas de los agentes IA. Al crear nuevas skills, debes apegarte estrictamente a nuestra arquitectura.

## Creando una Nueva Skill

Toda skill nueva debe ubicarse en la carpeta `skills/[nombre-de-tu-skill]/`. 
No pongas reglas teóricas masivas dentro del archivo `SKILL.md`.

**Flujo Correcto:**
1. Escribe el `SKILL.md` enfocándote en los **Triggers** (Cuándo debe activarse).
2. Si tu skill requiere teoría pesada (Ej. "Reglas de Clean Architecture"), crea un archivo Markdown en la carpeta `references/`.
3. Dentro de tu `SKILL.md`, instruye al agente a cargar y leer tu archivo de referencias cuando se active.

## Tipos de Skills Aceptadas

1. **Contextuales:** Deben leer OBLIGATORIAMENTE el `PERFIL_ESTUDIANTE.md` para mimetizarse con el entorno del usuario.
2. **Genéricas:** Herramientas universales (analizadores de rendimiento, visualizadores de RAM) que funcionan sin importar el lenguaje de programación elegido.

## Calidad Visual
No aceptamos Pull Requests que utilicen diagramas ASCII o Mermaid para las salidas hacia el estudiante. Cualquier output visual debe integrarse con el motor de renderizado HTML/SVG de diseño editorial estipulado en `AGENTS.md`.
