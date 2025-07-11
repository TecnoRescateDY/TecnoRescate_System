@echo off
REM ============================================
REM [FX] GENERADOR DE MODULO: FLUJOS_TECNICOS
REM Sistema TecnoRescate v3.0 - Foxy Kernel
REM Autor: Adry 🧙‍♂️
REM --------------------------------------------
REM USO:
REM 1. Ejecutar desde la raíz deseada
REM 2. Crea carpeta y plantilla de registro [FX]
REM ============================================

echo.
echo 🛠️ Generando estructura [FX] - Flujos_Tecnicos...
echo.

REM === Crear estructura ===
mkdir FX_Flujos_Tecnicos\Registro 2>nul

REM === Crear archivo de ejemplo ===
set FILE=FX_Flujos_Tecnicos\[FX]_Plantilla_Ejemplo.txt

echo [FX] REGISTRO DE FLUJOS_TECNICOS > "%FILE%"
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

echo ✅ Estructura [FX] creada con éxito.
start "" "%FILE%"

pause
