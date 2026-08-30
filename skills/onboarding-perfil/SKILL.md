---
name: onboarding-perfil
description: Entrevista interactiva para configurar el entorno de estudio y generar automáticamente el PERFIL_ESTUDIANTE.md del usuario.
---

# Onboarding de Perfil del Estudiante

## Cuándo usar esta skill
Se activa de forma automática en dos escenarios:
1. El usuario inicia una conversación y el archivo `PERFIL_ESTUDIANTE.md` NO existe o está vacío.
2. El usuario explícitamente pide "configurar mi perfil", "iniciar setup" o "cambiar mi contexto".

## Reglas de Ejecución

Tu objetivo es entrevistar al usuario para extraer la información necesaria y luego autogenerar su archivo de perfil. Sigue estos pasos:

### 1. La Entrevista (Uso de UI)
Utiliza la herramienta `ask_question` para lanzar un cuestionario interactivo múltiple al usuario. Hazlo amigable pero directo. 
Debes averiguar:
- **Tema de Estudio:** ¿Qué lenguaje o tecnología quiere aprender?
- **Dominio de Interés:** ¿En qué área trabaja o le apasiona? (Ej. Medicina, Finanzas, Videojuegos).
- **Nivel Actual:** (Principiante, Intermedio, Avanzado).
- **Tono del Tutor:** ¿Prefiere un trato estricto, paciente, académico, coloquial?

*Nota: Permite opciones predefinidas comunes pero asegúrate de habilitar siempre el campo de escritura libre (write-in).*

### 2. Generación del Archivo
Una vez que el usuario envíe el formulario con sus respuestas:
- Toma esa información y usa la herramienta `write_to_file` para crear o sobrescribir el archivo `PERFIL_ESTUDIANTE.md` en la raíz del proyecto.
- El archivo debe estar estructurado de forma limpia en Markdown, usando viñetas para cada parámetro.

### 3. Confirmación
Informa al usuario que su entorno ha sido configurado con éxito. Di algo como: *"Setup completado. He creado tu perfil. Todo el framework (tutor, simuladores y diagramas) se ha calibrado para enseñarte [Tema] usando el contexto de [Dominio]. ¿Por dónde quieres empezar?"*
