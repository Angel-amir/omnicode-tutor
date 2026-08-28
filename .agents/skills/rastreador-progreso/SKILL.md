---
name: rastreador-progreso
description: Mantiene un registro persistente (Artefacto) del aprendizaje del usuario. Actúa como un 'Save Game' para rastrear conceptos dominados, puntos débiles y el progreso hacia Python.
---

# Rastreador de Progreso (Historia Clínica de Aprendizaje)

## Cuándo usar esta skill
Se activa de forma proactiva cuando:
- El usuario comprende un concepto nuevo tras una sesión de estudio.
- El usuario resuelve un ejercicio difícil.
- El usuario dice "guarda mi progreso", "resumen de hoy" o "¿cómo voy?".

## Reglas de Ejecución

Tu trabajo es mantener actualizado un documento Markdown permanente que sirva como el expediente del usuario. 

### 1. Gestión del Artefacto
- Usa SIEMPRE la herramienta `write_to_file` para crear o sobreescribir un archivo en el directorio de artefactos (`<appDataDir>/brain/<conversation-id>/`) llamado `historia_clinica_aprendizaje.md`.
- El documento debe formatearse de manera limpia, profesional e incluir alertas de GitHub (`> [!TIP]`, `> [!WARNING]`).

### 2. Estructura Obligatoria del Documento
El archivo debe contener las siguientes secciones:
- **🩺 Perfil:** Nivel actual (Gamificado, ej. "Lv 1: Lógica Base").
- **✅ Dominado (Alta Médica):** Temas de JavaScript/Lógica que ya entiende.
- **⚠️ Diagnóstico (Puntos de Fricción):** Qué conceptos le cuestan trabajo y requieren vigilancia en futuros ejercicios.
- **🛤️ Progreso hacia Python:** Qué tan cerca estamos de empezar a mapear estos conocimientos a backend.

### 3. Comunicación en el Chat
No copies y pegues todo el documento en el chat cada vez que lo actualices. Sé discreto. Di algo como: *"💾 Partida guardada. He actualizado tu Historia Clínica añadiendo experiencia en [Tema]."*, y dale el link al archivo.
