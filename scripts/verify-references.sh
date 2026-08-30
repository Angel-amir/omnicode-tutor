#!/usr/bin/env bash
# Script para verificar que todos los archivos referenciados en SKILL.md existen en la carpeta references/

echo "Verificando integridad de las referencias de Omnicode Tutor..."

MISSING=0
while grep -q -o 'references/[a-zA-Z0-9_]*\.md' SKILL.md; do
    for file in $(grep -o 'references/[a-zA-Z0-9_]*\.md' SKILL.md | sort | uniq); do
        if [ ! -f "$file" ]; then
            echo "❌ ERROR: Archivo referenciado no encontrado: $file"
            MISSING=1
        else
            echo "✅ Encontrado: $file"
        fi
    done
    break
done

if [ $MISSING -eq 1 ]; then
    echo "Fallo en la validación. Revisa SKILL.md."
    exit 1
else
    echo "Todas las referencias están intactas."
    exit 0
fi
