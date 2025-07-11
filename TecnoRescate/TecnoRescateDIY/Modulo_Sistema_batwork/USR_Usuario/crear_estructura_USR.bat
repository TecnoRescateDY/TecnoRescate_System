@echo off
REM ============================================
REM [USR] GENERADOR DE MODULO: USUARIO
REM Sistema TecnoRescate v3.0 - Foxy Kernel
REM Autor: Adry 🧙‍♂️
REM --------------------------------------------
REM USO:
REM 1. Ejecutar desde la raíz deseada
REM 2. Crea carpeta y plantilla de registro [USR]
REM ============================================

echo.
echo 🛠️ Generando estructura [USR] - Usuario...
echo.

REM === Crear estructura ===
mkdir USR_Usuario\Registro 2>nul

REM === Crear archivo de ejemplo ===
set FILE=USR_Usuario\[USR]_Plantilla_Ejemplo.txt

echo [USR] REGISTRO DE USUARIO > "%FILE%"
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

echo ✅ Estructura [USR] creada con éxito.
start "" "%FILE%"

pause
