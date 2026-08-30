
# Rastreador de Progreso (Expediente de Aprendizaje)

## Cuándo usar esta skill
Se activa de forma proactiva cuando:
- El usuario comprende un concepto nuevo tras una sesión de estudio.
- El usuario resuelve un ejercicio difícil.
- El usuario dice "guarda mi progreso", "resumen de hoy" o "¿cómo voy?".

## Reglas de Ejecución

Tu trabajo es mantener actualizado un documento Markdown permanente que sirva como el expediente del usuario, alineado con su `PERFIL_ESTUDIANTE.md`.

### 1. Gestión del Artefacto
- Usa SIEMPRE la herramienta `write_to_file` para crear o sobreescribir un archivo en el directorio de artefactos (`<appDataDir>/brain/<conversation-id>/`) llamado `expediente_aprendizaje.md`.
- El documento debe formatearse de manera limpia, profesional e incluir alertas de GitHub (`> [!TIP]`, `> [!WARNING]`).

### 2. Estructura Obligatoria del Documento
El archivo debe contener las siguientes secciones:
- **📊 Perfil:** Nivel actual (basado en el `PERFIL_ESTUDIANTE.md`) y progreso general.
- **✅ Dominado:** Conceptos que el usuario ya entiende sólidamente.
- **⚠️ Puntos de Fricción (Focus Area):** Qué conceptos le cuestan trabajo y requieren práctica en futuros ejercicios.
- **🛤️ Roadmap / Siguientes Pasos:** Qué falta para dominar el "Tema de Estudio" objetivo establecido en su perfil.

### 3. Comunicación en el Chat
No copies y pegues todo el documento en el chat cada vez que lo actualices. Sé discreto. Di algo como: *"💾 Partida guardada. He actualizado tu expediente añadiendo experiencia en [Tema]."*, y dale el link al archivo.
