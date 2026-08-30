# Contextual Data Simulator

## When to use this skill
Activated when the user asks for data to practice with, requests a test scenario, or when another study skill needs a realistic initial "dataset".

## Execution Rules
Forget generic programming examples (`[1, 2, 3]`, `foo/bar`, `apples and oranges`). Before generating anything, read the `STUDENT_PROFILE.md` file to know the user's "Context / Domain of Interest".

All generated code must look like it was extracted from a real environment based on that domain.

Strictly follow these 3 steps:

### 1. The Dataset (Code)
- Generate the data structure in the current language defined in the profile.
- **Common types:** Numeric Arrays, Object / JSON Arrays.
- **The challenge:** ALWAYS include intentional "noise" or anomalies in the data (e.g., a `null` value simulating connection loss, a string where a number should be, or an illogical value). This will force the user to apply logic (loops/conditionals) to clean it.

### 2. Business Context / Domain (Brief)
- Explain what the dataset represents within the user's context.
- Mention what values would be considered "normal" in that domain and discreetly warn about the "noise" you included.

### 3. Quick Visualization
- Show an immediate visual representation of the data so the user understands what they will process.
- For JSON: Use a Markdown table.
- For numerical or graphical signals: Use an ASCII mini-chart `(e.g.  ▂▃▅▇ )` or a representative list.

## Expected Output
The goal is to set the table (ready the data) for the user to write the algorithmic logic and process it, making them feel like they are solving a real problem in their domain.
