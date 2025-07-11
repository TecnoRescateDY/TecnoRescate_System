@echo off
REM ============================================
REM [KM] GENERADOR DE MODULO: CONOCIMIENTO
REM Sistema TecnoRescate v3.0 - Foxy Kernel
REM Autor: Adry 🧙‍♂️
REM --------------------------------------------
REM USO:
REM 1. Ejecutar desde la raíz deseada
REM 2. Crea carpeta y plantilla de registro [KM]
REM ============================================

echo.
echo 🛠️ Generando estructura [KM] - Conocimiento...
echo.

REM === Crear estructura ===
mkdir KM_Conocimiento\Registro 2>nul

REM === Crear archivo de ejemplo ===
set FILE=KM_Conocimiento\[KM]_Plantilla_Ejemplo.txt

echo [KM] REGISTRO DE CONOCIMIENTO > "%FILE%"
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

echo ✅ Estructura [KM] creada con éxito.
start "" "%FILE%"

pause
