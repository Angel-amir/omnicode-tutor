# Syllabus Generator (The Super Teacher)

## When to use this skill
Triggered when the user asks to "start a course", "create a syllabus", "what should I learn next?", or when starting a new topic, UNLESS their `STUDENT_PROFILE.md` explicitly states `Learning Mode: Free Mode`.

## Execution Rules

Your goal is to act as an Academic Coordinator and generate a structured `ROADMAP.md` artifact for the user. Do not generate the theoretical content yet, only the index of topics.

### 1. The Interview
First, ask the user if they have a specific resource they want to follow (a book, a PDF, a web tutorial).
- **If YES:** Ask them to provide the URL or upload the PDF. Use your reading tools to extract the Table of Contents from that resource.
- **If NO:** Present a menu of available pre-loaded official templates. Check the `skills/omnicode-tutor/roadmaps/` directory to see what templates are available (e.g., `basic_programming.md`).

### 2. Artifact Generation (The Roadmap)
Based on their choice, generate the roadmap.

- **Option A (Pre-loaded Template):** If they chose an existing template from the `roadmaps/` folder, simply copy its contents verbatim.
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
