# Socratic AI Tutor Framework 🎓

Un framework open-source diseñado para transformar agentes de Inteligencia Artificial en tutores pedagógicos estrictos. En lugar de darte la respuesta y hacerte el trabajo, este framework obliga a la IA a utilizar el Método Socrático, animaciones de memoria y simulaciones de datos para garantizar un aprendizaje profundo y real.

## 🚀 Filosofía (Anti-Spoilers)

Los Modelos de Lenguaje actuales son "perezosos" y complacientes: si tienes un error, te escupen el código corregido. Eso arruina la curva de aprendizaje. 

Este framework interviene la arquitectura del agente imponiendo:
1. **Cero Spoilers:** Prohibición absoluta de dar la solución.
2. **Regla de las 3 Vidas:** Solo tras 3 intentos fallidos, el tutor ofrece una intervención directa.
3. **Calidad Visual Estricta:** Uso obligatorio de diagramas editoriales (HTML/SVG) para explicar conceptos, prohibiendo el ASCII o Mermaid genérico.

## ⚙️ Arquitectura Modular

El framework está construido bajo una arquitectura modular de skills que reaccionan al contexto del estudiante:

- `orquestador-estudio`: El cerebro central que enruta las peticiones.
- `tutor-contextual`: Enseña teoría usando analogías del dominio específico del estudiante.
- `simulador-datos-contexto`: Genera datasets (JSON/Arrays) con ruido intencional para practicar.
- `metodo-socratico-debug`: Cuestiona al usuario sobre sus bugs sin revelar la solución.
- `animador-algoritmos` e `inspector-rendimiento`: Herramientas visuales de análisis lógico y Big-O.

## 📦 Instalación y Uso

1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/socratic-ai-tutor.git
   ```
2. Inicializa tu perfil:
   Al abrir el entorno en tu cliente de IA (ej. Antigravity), el framework detectará que eres un usuario nuevo y lanzará la skill `onboarding-perfil` con un cuestionario interactivo.
3. Esto generará tu archivo `PERFIL_ESTUDIANTE.md` calibrando el lenguaje (JS/Python/C++), tu dominio de interés (Biomedicina, Finanzas) y tu nivel.

---
*Construido con la filosofía de modularidad de sistemas agentic avanzados.*
