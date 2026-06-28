#!/bin/bash
# Configurador · Empresa Aumentada por IA — lanzador macOS
cd "$(dirname "$0")" || exit 1

if command -v python3 >/dev/null 2>&1; then
  python3 servidor.py
else
  echo ""
  echo "  Python 3 no está instalado en este Mac."
  echo "  Abriendo el configurador en modo descarga (los archivos irán a Descargas)."
  echo ""
  open configurador.html
  echo "  Para GUARDAR DIRECTO en la carpeta del proyecto, instala Python 3:"
  echo "     https://www.python.org/downloads/macos/"
  echo "  (o ejecuta en Terminal:  xcode-select --install )"
  echo "  Luego vuelve a abrir este lanzador."
  echo ""
  read -p "Pulsa Enter para salir..."
fi
