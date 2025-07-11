@echo off
REM ============================================
REM [ERR] GENERADOR DE MODULO: ERRORES
REM Sistema TecnoRescate v3.0 - Foxy Kernel
REM Autor: Adry 🧙‍♂️
REM --------------------------------------------
REM USO:
REM 1. Ejecutar desde la raíz deseada
REM 2. Crea carpeta y plantilla de registro [ERR]
REM ============================================

echo.
echo 🛠️ Generando estructura [ERR] - Errores...
echo.

REM === Crear estructura ===
mkdir ERR_Errores\Registro 2>nul

REM === Crear archivo de ejemplo ===
set FILE=ERR_Errores\[ERR]_Plantilla_Ejemplo.txt

echo [ERR] REGISTRO DE ERRORES > "%FILE%"
echo Fecha: AAAA-MM-DD >> "%FILE%"
echo Tipo: Entrada / Observación / Resultado >> "%FILE%"
echo. >> "%FILE%"
echo --- >> "%FILE%"
echo. >> "%FILE%"
echo 📌 DESCRIPCIÓN: >> "%FILE%"
echo. >> "%FILE%"
echo 🔍 DETALLE: >> "%FILE%"
echo. >> "%FILE%"
echo ✅ RESULTADO / USO PREVISTO: >> "%FILE%"
echo. >> "%FILE%"
echo 📎 NOTAS: >> "%FILE%"

echo ✅ Estructura [ERR] creada con éxito.
start "" "%FILE%"

pause
