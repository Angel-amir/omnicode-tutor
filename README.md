# Omnicode Tutor Framework 🎓

Un framework open-source diseñado para transformar agentes de Inteligencia Artificial (Antigravity / Gemini) en tutores pedagógicos estrictos. En lugar de darte la respuesta y hacerte el trabajo, este framework obliga a la IA a utilizar el Método Socrático, animaciones de memoria y simulaciones de datos para garantizar un aprendizaje profundo y real.

## 🚀 Filosofía (Anti-Spoilers)

Los Modelos de Lenguaje actuales son "perezosos" y complacientes: si tienes un error, te escupen el código corregido. Eso arruina la curva de aprendizaje. 

Este framework interviene la arquitectura del agente imponiendo:
1. **Cero Spoilers:** Prohibición absoluta de dar la solución.
2. **Regla de las 3 Vidas:** Solo tras 3 intentos fallidos, el tutor ofrece una intervención directa.
3. **Calidad Visual Estricta:** Uso obligatorio de diagramas editoriales (HTML/SVG) y UI generativa para explicar conceptos lógicos y arquitectónicos.

## ⚙️ Arquitectura: Dynamic Context Loading

A diferencia de prompts monolíticos, Omnicode utiliza **Carga de Contexto Dinámico**. El `SKILL.md` maestro actúa como un enrutador inteligente que lee la intención del estudiante y carga el módulo pedagógico adecuado (desde `references/`) **sin saturar la memoria** del agente:

- `tutor_contextual.md`: Teoría con analogías de tu dominio (ej. Finanzas, Videojuegos).
- `metodo_socratico.md`: Interrogación guiada interactiva para debugear código.
- `simulador_datos.md`: Generación de datasets realistas con "ruido" intencional.
- `inspector.md` / `animador.md`: Pruebas de estrés y visualización de memoria.

## 📦 Instalación Global (Plug-and-Play)

Omnicode Tutor está empaquetado como una **Skill Global**. Una vez instalado, podrás invocarlo en *cualquier* proyecto en el que estés trabajando.

### Opción A: Instalación Automática (Recomendada)
Ejecuta este comando en tu terminal para clonar e instalar la skill en tu configuración local:
```bash
curl -sSL https://raw.githubusercontent.com/Angel-amir/omnicode-tutor/main/scripts/install.sh | bash
```

### Opción B: Instalación Manual
1. Clona este repositorio:
   ```bash
   git clone https://github.com/Angel-amir/omnicode-tutor.git
   ```
2. Crea un enlace simbólico que apunte EXCLUSIVAMENTE a la carpeta de la skill:
   ```bash
   mkdir -p ~/.gemini/config/skills
   ln -s "$(pwd)/omnicode-tutor/skills/omnicode-tutor" ~/.gemini/config/skills/omnicode-tutor
   ```

## 🎮 Primeros Pasos

1. Abre cualquier proyecto de código en tu editor.
2. Habla con tu agente y dile: *"Inicia Omnicode Tutor"* o *"Ayúdame a estudiar"*.
3. El tutor detectará si tienes un archivo de perfil en ese proyecto. Si no, lanzará un **cuestionario de Onboarding interactivo**.
4. Se autogenerará un archivo `PERFIL_ESTUDIANTE.md` en la raíz de tu proyecto, calibrando el lenguaje de programación, tu área de interés y tu nivel.

---
*Construido aplicando patrones de escalabilidad arquitectónica para sistemas de agentes autónomos.*
