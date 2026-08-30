#!/usr/bin/env bash

# Omnicode Tutor - Instalación Pura (Solo Skill)
# Este script descarga ÚNICAMENTE la carpeta de la skill, sin clonar el repositorio completo.

set -e

SKILLS_DIR="$HOME/.gemini/config/skills"
SKILL_DEST="$SKILLS_DIR/omnicode-tutor"
TARBALL_URL="https://github.com/Angel-amir/omnicode-tutor/tarball/main"

echo "🎓 Iniciando la instalación pura de Omnicode Tutor..."

# 1. Asegurar que la carpeta de skills existe
mkdir -p "$SKILL_DEST"

# 2. Descargar y extraer SOLO la carpeta de la skill
echo "📥 Descargando los archivos de la skill (omitiendo el resto del repositorio)..."
curl -sSL "$TARBALL_URL" | tar -xz --strip-components=3 -C "$SKILL_DEST" --wildcards "*/skills/omnicode-tutor"

echo ""
echo "🧩 Verificando dependencias necesarias..."
DIAGRAM_DEST="$SKILLS_DIR/diagram-design"
if [ ! -d "$DIAGRAM_DEST" ]; then
    echo "📥 Instalando dependencia obligatoria: diagram-design..."
    mkdir -p "$DIAGRAM_DEST"
    curl -sSL "https://github.com/cathrynlavery/diagram-design/tarball/main" | tar -xz --strip-components=3 -C "$DIAGRAM_DEST" --wildcards "*/skills/diagram-design"
else
    echo "✅ diagram-design ya está instalado."
fi

echo ""
echo "✅ ¡Skill pura instalada con éxito en $SKILL_DEST!"
echo "No se descargó historial de git ni carpetas de desarrollo."
echo "Prueba decirle a tu agente: 'Inicia el tutor' o 'Vamos a estudiar'."
