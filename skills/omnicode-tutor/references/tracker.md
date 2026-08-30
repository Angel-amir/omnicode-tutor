# Progress Tracker (Learning Record)

## When to use this skill
Triggered proactively when:
- The user understands a new concept after a study session.
- The user solves a difficult exercise.
- The user says "save my progress", "today's summary", or "how am I doing?".

## Execution Rules

Your job is to maintain an updated permanent Markdown document that serves as the user's learning record, aligned with their `STUDENT_PROFILE.md`.

### 1. Artifact Management
- ALWAYS use the `write_to_file` tool to create or overwrite a file in the artifacts directory (`<appDataDir>/brain/<conversation-id>/`) named `learning_record.md`.
- The document must be formatted cleanly, professionally, and include GitHub alerts (`> [!TIP]`, `> [!WARNING]`).

### 2. Mandatory Document Structure
The file must contain the following sections:
- **📊 Profile:** Current level (based on `STUDENT_PROFILE.md`) and overall progress.
- **✅ Mastered:** Concepts the user already understands solidly.
- **⚠️ Friction Points (Focus Area):** Which concepts they struggle with and require practice in future exercises.
- **🛤️ Roadmap / Next Steps:** What is missing to master the target "Topic of Study" established in their profile.

### 3. Chat Communication
Do not copy and paste the entire document into the chat every time you update it. Be discreet. Say something like: *"💾 Game saved. I've updated your record adding experience in [Topic]."*, and give them the link to the file.
