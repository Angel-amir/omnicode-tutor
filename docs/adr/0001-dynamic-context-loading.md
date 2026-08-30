# ADR 0001: Implementation of Dynamic Context Loading and Skill Flattening

**Date:** 2026-08-30
**Status:** Accepted

## Context
Originally, the tutor's orchestrator (`SKILL.md`) and references were scattered, and the global rules were located in an `AGENTS.md` file dependent on the local workspace.

## Decision
1. **Dynamic Context Loading:** We adopted an intent-based architecture. `SKILL.md` acts as the master orchestrator that reads the user's request and routes the reading to specialized modules in the `references/` folder.
2. **Repository Restructuring:** The repository was restructured so that the `skills/omnicode-tutor/` subfolder acts purely as the skill, separating the development files (docs, scripts) from the final agent payload.
3. **Rule Encapsulation:** We moved the pedagogical rules ("Zero Spoilers", "Socratic Method") directly to `SKILL.md` to make the skill 100% portable and independent of the workspace.

## Consequences
* **Positive:** Near-infinite horizontal scalability (we can add more `.md` files to `references/` without saturating the AI's context window). Clean separation of concerns.
* **Negative:** Forces developers to be meticulous in keeping relative paths updated in the orchestrator's routing matrix.
