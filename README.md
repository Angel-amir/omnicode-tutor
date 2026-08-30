# Omnicode Tutor Framework 🎓

An open-source framework designed to transform Artificial Intelligence agents (Antigravity / Gemini) into strict pedagogical tutors. Instead of giving you the answer and doing the work for you, this framework forces the AI to use the Socratic Method, memory animations, and data simulations to ensure deep and real learning.

## 🚀 Philosophy (Anti-Spoilers)

Current Large Language Models are "lazy" and compliant: if you have a bug, they spit out the corrected code. That ruins the learning curve.

This framework overrides the agent's architecture by imposing:
1. **Zero Spoilers:** Absolute prohibition of giving the solution.
2. **The 3-Lives Rule:** Only after 3 failed attempts does the tutor offer direct intervention.
3. **Strict Visual Quality:** Mandatory use of editorial diagrams (HTML/SVG) and generative UI to explain logical and architectural concepts.

## ⚙️ Architecture: Dynamic Context Loading

Unlike monolithic prompts, Omnicode uses **Dynamic Context Loading**. The master `SKILL.md` acts as a smart router that reads the student's intent and loads the appropriate pedagogical module (from `references/`) **without saturating the agent's memory**:

- `contextual_tutor.md`: Theory with analogies from your domain (e.g. Finance, Video Games).
- `socratic_method.md`: Interactive guided interrogation to debug code.
- `data_simulator.md`: Generation of realistic datasets with intentional "noise".
- `inspector.md` / `animator.md`: Stress testing and memory visualization.

## 📦 Global Installation (Plug-and-Play)

Omnicode Tutor is packaged as a **Global Skill**. Once installed, you can invoke it in *any* project you are working on.

### 🧩 Requirements (Dependencies)
Omnicode Tutor requires the **`diagram-design`** skill to comply with Rule 3 (Strict Visual Quality). 
*If you use the automatic installation script (Option A), the dependency will be magically installed for you.*

### Option A: Automatic Installation (Recommended)
Run this command in your terminal to download and install the pure skill in your local configuration:
```bash
curl -sSL https://raw.githubusercontent.com/Angel-amir/omnicode-tutor/main/scripts/install.sh | bash
```

### Option B: Manual Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/Angel-amir/omnicode-tutor.git
   ```
2. Create a symbolic link pointing EXCLUSIVELY to the skill folder:
   ```bash
   mkdir -p ~/.gemini/config/skills
   ln -s "$(pwd)/omnicode-tutor/skills/omnicode-tutor" ~/.gemini/config/skills/omnicode-tutor
   ```

## 🎮 Getting Started

1. Open any code project in your editor.
2. Talk to your agent and say: *"Start Omnicode Tutor"* or *"Help me study"*.
3. The tutor will detect if you have a profile file in that project. If not, it will launch an **interactive Onboarding questionnaire**.
4. A `STUDENT_PROFILE.md` file will be auto-generated at the root of your project, calibrating the programming language, your area of interest, and your level.

---
*Built applying architectural scalability patterns for autonomous agent systems.*
