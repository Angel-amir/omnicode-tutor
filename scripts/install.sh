#!/usr/bin/env bash

# Omnicode Tutor - Script de Instalación Rápida
# Este script clona el repositorio y lo enlaza a la carpeta de configuración de skills de Antigravity.

set -e

REPO_URL="https://github.com/Angel-amir/omnicode-tutor.git"
DEST_DIR="$HOME/.local/share/omnicode-tutor-repo"
SKILLS_DIR="$HOME/.gemini/config/skills"
SKILL_LINK="$SKILLS_DIR/omnicode-tutor"

echo "🎓 Iniciando la instalación de Omnicode Tutor..."

# 1. Verificar si git está instalado
if ! command -v git &> /dev/null; then
    echo "❌ Error: 'git' no está instalado. Por favor instálalo primero."
    exit 1
fi

# 2. Clonar o actualizar el repositorio
if [ -d "$DEST_DIR" ]; then
    echo "🔄 Actualizando repositorio existente en $DEST_DIR..."
    cd "$DEST_DIR"
    git pull origin main
else
    echo "📥 Clonando repositorio en $DEST_DIR..."
    git clone "$REPO_URL" "$DEST_DIR"
fi

# 3. Asegurar que la carpeta de skills existe
echo "📂 Preparando directorio de skills de Antigravity en $SKILLS_DIR..."
mkdir -p "$SKILLS_DIR"

# 4. Crear el enlace simbólico
if [ -L "$SKILL_LINK" ] || [ -d "$SKILL_LINK" ]; then
    echo "🔗 Removiendo enlace simbólico anterior..."
    rm -rf "$SKILL_LINK"
fi

echo "🔗 Creando enlace simbólico..."
ln -s "$DEST_DIR" "$SKILL_LINK"

echo ""
echo "✅ ¡Omnicode Tutor instalado con éxito!"
echo "Ahora puedes usarlo en cualquier proyecto simplemente hablando con tu agente."
echo "Prueba decirle: 'Inicia el tutor' o 'Vamos a estudiar'."
