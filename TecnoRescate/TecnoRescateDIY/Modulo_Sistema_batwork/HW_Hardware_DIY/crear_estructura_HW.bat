@echo off
REM ============================================
REM [HW] GENERADOR DE MODULO: HARDWARE_DIY
REM Sistema TecnoRescate v3.0 - Foxy Kernel
REM Autor: Adry 🧙‍♂️
REM --------------------------------------------
REM USO:
REM 1. Ejecutar desde la raíz deseada
REM 2. Crea carpeta y plantilla de registro [HW]
REM ============================================

echo.
echo 🛠️ Generando estructura [HW] - Hardware_DIY...
echo.

REM === Crear estructura ===
mkdir HW_Hardware_DIY\Registro 2>nul

REM === Crear archivo de ejemplo ===
set FILE=HW_Hardware_DIY\[HW]_Plantilla_Ejemplo.txt

echo [HW] REGISTRO DE HARDWARE_DIY > "%FILE%"
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

echo ✅ Estructura [HW] creada con éxito.
start "" "%FILE%"

pause
