#!/usr/bin/env bash
# Script to verify that all referenced files in SKILL.md exist in the references/ folder

echo "Verifying integrity of Omnicode Tutor references..."

MISSING=0
while grep -q -o 'references/[a-zA-Z0-9_]*\.md' skills/omnicode-tutor/SKILL.md; do
    for file in $(grep -o 'references/[a-zA-Z0-9_]*\.md' skills/omnicode-tutor/SKILL.md | sort | uniq); do
        if [ ! -f "skills/omnicode-tutor/$file" ]; then
            echo "❌ ERROR: Referenced file not found: $file"
            MISSING=1
        else
            echo "✅ Found: $file"
        fi
    done
    break
done

if [ $MISSING -eq 1 ]; then
    echo "Validation failed. Check SKILL.md."
    exit 1
else
    echo "All references are intact."
    exit 0
fi
