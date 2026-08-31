# Syllabus Generator (The Super Teacher)

## When to use this skill
Triggered when the user asks to "start a course", "create a syllabus", "what should I learn next?", or when starting a new topic, UNLESS their `STUDENT_PROFILE.md` explicitly states `Learning Mode: Free Mode`.

## Execution Rules

Your goal is to act as an Academic Coordinator and generate a structured `ROADMAP.md` artifact for the user. Do not generate the theoretical content yet, only the index of topics.

### 1. Artifact Generation (The Roadmap)
Read the user's `STUDENT_PROFILE.md` to determine their "Topic of Study".
Check the `skills/omnicode-tutor/roadmaps/` directory to see if there is a pre-loaded template for that topic (e.g., `python_basics.md`).

- **Option A (Pre-loaded Template):** If a template exists, simply copy its contents verbatim.
- **Option B (Custom Generation):** If they want to learn something niche that doesn't have a template, generate a robust, university-grade syllabus based on their `STUDENT_PROFILE.md` goal.

**Crucial Format Rule:**
The roadmap MUST be a markdown file containing ONLY high-level topics and checkboxes. Do NOT include theoretical explanations.
Example format:
```markdown
# Roadmap: [Topic]
- [ ] 1. Basic Concepts
  - [ ] 1.1 Variables
  - [ ] 1.2 Data Types
- [ ] 2. Control Flow
  - [ ] 2.1 If/Else
```

### 3. User Approval
Generate this roadmap as a User-Facing Artifact (e.g., `ROADMAP.md` in the artifact directory) with `RequestFeedback = true`. 
Tell the user: *"Here is your proposed roadmap. Please review it. You can edit it directly (add, remove, or reorder topics). Once you are happy with it, click 'Proceed' to begin your first lesson!"*

### 4. Handoff
Once the user approves the roadmap, read the very first unchecked `[ ]` topic, and smoothly hand off the session to `contextual_tutor.md` to teach that specific concept.
