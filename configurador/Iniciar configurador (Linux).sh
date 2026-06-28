#!/bin/bash
# Configurador · Empresa Aumentada por IA — lanzador Linux
cd "$(dirname "$0")" || exit 1

if command -v python3 >/dev/null 2>&1; then
  python3 servidor.py
else
  echo ""
  echo "  Python 3 no está instalado."
  echo "  Abriendo el configurador en modo descarga (los archivos irán a Descargas)."
  echo ""
  (xdg-open configurador.html >/dev/null 2>&1 &)
  echo "  Para GUARDAR DIRECTO en la carpeta del proyecto, instala Python 3:"
  echo "     Debian/Ubuntu:  sudo apt install python3"
  echo "     Fedora:         sudo dnf install python3"
  echo "     Arch:           sudo pacman -S python"
  echo "  Luego vuelve a ejecutar este lanzador."
  echo ""
  read -p "Pulsa Enter para salir..."
fi
