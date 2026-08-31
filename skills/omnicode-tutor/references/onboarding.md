# Student Profile Onboarding

## When to use this skill
Triggered automatically in two scenarios:
1. The user starts a conversation and the `STUDENT_PROFILE.md` file DOES NOT exist or is empty.
2. The user explicitly asks to "configure my profile", "start setup", or "change my context".

## Execution Rules

Your goal is to interview the user to extract the necessary information and then auto-generate their profile file. Follow these steps:

### 1. The Interview (STRICT UI USAGE)
You MUST use the `ask_question` tool to launch an interactive multiple-choice questionnaire for the user. 
CRITICAL: Do NOT ask these questions in plain text in the chat. Do NOT invent or hallucinate answers (e.g. do not invent a domain like 'Medicine' unless the user explicitly asked for it). You must pause and wait for the `ask_question` tool response.

You must find out:
- **Topic of Study:** What language or technology do they want to learn?
- **Domain of Interest:** What area do they work in or are passionate about? (e.g., Medicine, Finance, Video Games).
- **Current Level:** (Beginner, Intermediate, Advanced).
- **Tutor Tone:** Do they prefer a strict, patient, academic, or colloquial approach?
- **Learning Mode:** Do they want a "Structured Roadmap" (A guided course syllabus) or "Free Mode" (Just asking questions and debugging when stuck)?

### 2. File Generation
Once the user submits the form with their answers:
- Take that information and use the `write_to_file` tool to create or overwrite the `STUDENT_PROFILE.md` file in the project root.
- The file must be cleanly structured in Markdown, using bullet points for each parameter.

### 3. Confirmation
Inform the user that their environment has been successfully configured. Say something like: *"Setup complete. I have created your profile. The entire framework (tutor, simulators, and diagrams) has been calibrated to teach you [Topic] using the context of [Domain]. Where do you want to start?"*
