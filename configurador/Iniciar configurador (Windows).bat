@echo off
chcp 65001 >nul
cd /d "%~dp0"
title Configurador - Empresa Aumentada por IA

where python >nul 2>nul
if %errorlevel%==0 (
  python "servidor.py"
  goto :end
)
where py >nul 2>nul
if %errorlevel%==0 (
  py "servidor.py"
  goto :end
)

echo.
echo  Python no esta instalado en este equipo.
echo  Abriendo el configurador en modo descarga (los archivos iran a Descargas).
echo.
start "" "configurador.html"
echo  Para GUARDAR DIRECTO en la carpeta del proyecto, instala Python:
echo     https://www.python.org/downloads/
echo  IMPORTANTE: durante la instalacion marca la casilla "Add Python to PATH".
echo  Luego vuelve a ejecutar este lanzador.
echo.
pause

:end
