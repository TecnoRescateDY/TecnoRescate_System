@echo off
REM === Script para generar listado de carpetas y archivos ===
REM Fecha: %date%
REM Usuario: Adry - TecnoRescate 🦊

cd /d "%~dp0"
echo Generando estructura de carpetas...

tree /a /f > "05_Backups\tree-a_log.txt"

echo.
echo 🦊 Listado generado con éxito en: 05_Backups\tree-a_log.txt
pause
