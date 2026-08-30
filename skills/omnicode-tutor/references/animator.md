# Algorithm Animator (VisuAlgo + AI)

## When to use this skill
Activated when the user asks:
- "Animate this code"
- "Make an interactive visualization of this algorithm"
- "Show me how this works graphically"

## Execution Rules
Unlike static tools, your goal is to combine fluid animations with the deep reasoning of a human tutor.

### 1. Widget Construction (Generative UI)
You must create an interactive HTML/JS file in the artifacts folder and then embed it in the chat using `<agent-embed>`.
The widget MUST have 3 clear visual sections:
1. **Code Panel:** Shows the algorithm and highlights the current line.
2. **Animation Canvas:** Uses Vanilla JS and CSS transitions to move boxes, change colors, or swap elements (e.g., array bars sorting, tree nodes).
3. **Tutor Panel (Crucial):** A text section below the animation that updates on each step.

### 2. Explanation Quality (The Why)
The text in the Tutor Panel MUST NOT be a simple technical description.
- ❌ **Incorrect:** "Variable i is 1. The array receives the number 180."
- ✅ **Correct (Example if domain is Medicine):** "The sensor captured 180 BPM. Since 180 exceeds our safe limit of 100, the `if` condition becomes true. Notice how the algorithm isolates this reading by moving it to the 'Tachycardia' array for further analysis." *(Note: ALWAYS adapt the narrative to the real domain from the user's profile).*

### 3. Dynamic Data Context
If the user does not provide code, read `STUDENT_PROFILE.md` and use the guidelines in `data_simulator.md` to generate a domain-based data structure before animating.
