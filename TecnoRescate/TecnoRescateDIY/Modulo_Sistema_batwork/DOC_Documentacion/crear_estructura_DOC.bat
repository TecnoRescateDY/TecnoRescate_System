@echo off
REM ============================================
REM [DOC] GENERADOR DE MODULO: DOCUMENTACION
REM Sistema TecnoRescate v3.0 - Foxy Kernel
REM Autor: Adry 🧙‍♂️
REM --------------------------------------------
REM USO:
REM 1. Ejecutar desde la raíz deseada
REM 2. Crea carpeta y plantilla de registro [DOC]
REM ============================================

echo.
echo 🛠️ Generando estructura [DOC] - Documentacion...
echo.

REM === Crear estructura ===
mkdir DOC_Documentacion\Registro 2>nul

REM === Crear archivo de ejemplo ===
set FILE=DOC_Documentacion\[DOC]_Plantilla_Ejemplo.txt

echo [DOC] REGISTRO DE DOCUMENTACION > "%FILE%"
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

echo ✅ Estructura [DOC] creada con éxito.
start "" "%FILE%"

pause
