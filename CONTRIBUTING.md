# Contribution Guide 🤝

Thank you for your interest in improving the Omnicode Tutor Framework!

This project seeks to expand the pedagogical capabilities of AI agents. When creating new modules or contributing, you must strictly adhere to our architecture.

## Creating a New Module

Any new module must be located in the `skills/omnicode-tutor/references/` folder.
Do not put massive theoretical rules directly inside the `SKILL.md` orchestrator.

**Correct Flow:**
1. Write your module (e.g., `design_patterns.md`) focusing on specific pedagogy.
2. Update the routing matrix in `SKILL.md` by instructing the agent to load and read your reference file when a specific trigger occurs.

## Types of Accepted Modules

1. **Contextual:** Must MANDATORILY read the `STUDENT_PROFILE.md` file to mimic the user's domain and environment.
2. **Generic:** Universal tools (performance analyzers, RAM visualizers) that work regardless of the chosen programming language.

## Visual Quality
We do not accept Pull Requests that use ASCII or Mermaid diagrams for output to the student. Any visual output must integrate with the `diagram-design` skill to ensure editorial design quality.
