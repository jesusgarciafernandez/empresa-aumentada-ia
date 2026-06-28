#!/bin/bash
# =====================================================================
#  Publicar en GitHub · Empresa Aumentada por IA
#  Doble clic para subir el contenido a GitHub. No necesitas saber Git.
#  Sirve tanto para la PRIMERA publicación como para actualizaciones.
#  Creado por Jesús García Fernández — https://jesusgarciafernandez.com
# =====================================================================

# --- Configuración (puedes cambiar esta URL si algún día mueves el repo) ---
REMOTE_URL="https://github.com/jesusgarciafernandez/empresa-aumentada-ia.git"
RAMA="main"

# Ir a la carpeta donde está este archivo (la raíz del proyecto)
cd "$(dirname "$0")" || exit 1

echo "============================================================"
echo "   Publicar en GitHub · Empresa Aumentada por IA"
echo "   Destino: $REMOTE_URL"
echo "============================================================"
echo ""

# Función para cerrar de forma limpia esperando una tecla
fin() {
  echo ""
  read -n 1 -s -r -p "Pulsa una tecla para cerrar esta ventana..."
  echo ""
  exit "${1:-0}"
}

# 0) ¿Está instalado git?
if ! command -v git >/dev/null 2>&1; then
  echo "❌ No tienes 'git' instalado."
  echo "   Instala GitHub Desktop (https://desktop.github.com) y vuelve a intentarlo."
  fin 1
fi

# 1) Quitar bloqueos que pudieran haber quedado de sesiones anteriores
rm -f .git/*.lock 2>/dev/null
echo "✓ Bloqueos comprobados."

# 2) Verificar que el repositorio local es válido; si está dañado, regenerarlo
#    (tu contenido de la carpeta NO se toca; solo se rehace el historial de Git)
if [ -d ".git" ] && ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "⚠ El repositorio local estaba dañado. Lo regenero sin tocar tus archivos..."
  rm -rf .git
fi
if [ ! -d ".git" ]; then
  git init -q
  echo "✓ Repositorio iniciado."
else
  echo "✓ Repositorio verificado."
fi

# 3) Asegurar identidad de Git (necesaria para guardar cambios)
if [ -z "$(git config user.name)" ]; then
  git config user.name "Jesús García Fernández"
fi
if [ -z "$(git config user.email)" ]; then
  git config user.email "contacto@jesusgarciafernandez.com"
fi

# 4) Usar el llavero de macOS para recordar las credenciales de GitHub
git config credential.helper osxkeychain 2>/dev/null

# 5) Conectar (o corregir) el destino 'origin'
if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi
echo "✓ Destino conectado (origin)."

# 6) Nombrar la rama principal como 'main'
git branch -M "$RAMA" 2>/dev/null

# 7) Preparar y guardar todos los cambios
git add -A
echo "✓ Cambios preparados."

FECHA="$(date '+%Y-%m-%d %H:%M')"
if git diff --cached --quiet && git rev-parse HEAD >/dev/null 2>&1; then
  echo "ℹ No hay cambios nuevos que guardar."
else
  git commit -q -m "Publicación del proyecto ($FECHA)"
  echo "✓ Cambios guardados (commit)."
fi

# 8) Subir a GitHub
echo ""
echo "Subiendo a GitHub (rama: $RAMA)..."
echo "  Si te pide usuario/contraseña: usa tu usuario de GitHub y, como contraseña,"
echo "  un 'token' (no tu contraseña normal). Si tienes GitHub Desktop abierto y con"
echo "  tu sesión iniciada, normalmente no te pedirá nada."
echo ""

if git push -u origin "$RAMA"; then
  echo ""
  echo "============================================================"
  echo "   ✅ Hecho. El contenido ya está en GitHub:"
  echo "   https://github.com/jesusgarciafernandez/empresa-aumentada-ia"
  echo "============================================================"
  fin 0
fi

# 9) Si el push fue rechazado, suele ser porque el repo de GitHub ya tenía
#    algún archivo (p. ej. un README creado al inicio). Intentamos integrarlo.
echo ""
echo "⚠ GitHub ha rechazado la subida. Probablemente el repositorio ya tenía"
echo "  algún archivo. Voy a intentar combinarlo automáticamente..."
echo ""

if git pull --rebase origin "$RAMA" 2>/dev/null; then
  if git push -u origin "$RAMA"; then
    echo ""
    echo "============================================================"
    echo "   ✅ Hecho (tras combinar). El contenido ya está en GitHub."
    echo "============================================================"
    fin 0
  fi
fi

# 10) Si aún falla, dar instrucciones claras sin tecnicismos
echo ""
echo "❌ No se ha podido subir automáticamente. Posibles causas:"
echo "   1) Credenciales: GitHub ya no acepta contraseña normal. Abre GitHub"
echo "      Desktop, inicia sesión con tu cuenta y vuelve a hacer doble clic aquí;"
echo "      o crea un 'token' en GitHub (Settings → Developer settings → Tokens)."
echo "   2) El repositorio de GitHub se creó con archivos que chocan con los tuyos."
echo "      En ese caso, abre el proyecto en GitHub Desktop y pulsa 'Push origin'"
echo "      (te guiará para resolverlo)."
echo ""
echo "   Tu trabajo está guardado en tu ordenador; no se ha perdido nada."
fin 1
