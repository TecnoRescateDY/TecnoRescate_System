@echo off
REM ============================================
REM [KM] GENERADOR DE ESTRUCTURA DE CONOCIMIENTO
REM Sistema TecnoRescate v3.0 - Foxy Kernel
REM Autor: Adry 🧙‍♂️
REM --------------------------------------------
REM USO:
REM 1. Guardar este archivo como: crear_estructura_KM.bat
REM 2. Ejecutar desde la raíz del sistema (Ej: D:\TecnoRescate\Kernel\)
REM 3. Se crearán carpetas y un archivo ejemplo [KM]
REM ============================================

echo.
echo 🧠 Generando estructura de conocimiento [KM]...
echo.

REM === Crear carpetas ===
mkdir Laboratorio\Mente_Sintética\Conocimiento\Bitácora 2>nul
mkdir Laboratorio\Mente_Sintética\Conocimiento\Evaluaciones 2>nul
mkdir Laboratorio\Mente_Sintética\Conocimiento\Ideas 2>nul
mkdir Laboratorio\Mente_Sintética\Conocimiento\Descubrimientos 2>nul

REM === Crear archivo de ejemplo ===
set FILE=Laboratorio\Mente_Sintética\Conocimiento\[KM]_Plantilla_Ejemplo.txt

echo [KM] REGISTRO DE CONOCIMIENTO > "%FILE%"
echo Fecha: AAAA-MM-DD >> "%FILE%"
echo Tipo: Idea / Descubrimiento / Evaluación / Reflexión >> "%FILE%"
echo Origen: Experiencia propia / IA externa / Lectura / Otro >> "%FILE%"
echo. >> "%FILE%"
echo --- >> "%FILE%"
echo. >> "%FILE%"
echo 📌 TEMA / DESCRIPCIÓN: >> "%FILE%"
echo (describir brevemente el conocimiento registrado) >> "%FILE%"
echo. >> "%FILE%"
echo 🔧 DETALLE TÉCNICO: >> "%FILE%"
echo (herramientas, comandos, sistemas involucrados) >> "%FILE%"
echo. >> "%FILE%"
echo 🎯 POSIBLES APLICACIONES: >> "%FILE%"
echo (dónde podría usarse dentro del sistema o proyectos) >> "%FILE%"
echo. >> "%FILE%"
echo 🧩 CATEGORÍA: >> "%FILE%"
echo (Laboratorio / Foxy / Asistente Virtual / Diagnóstico / Kernel / etc.) >> "%FILE%"
echo. >> "%FILE%"
echo 📎 NOTAS: >> "%FILE%"
echo (comentarios personales, dudas o próximas acciones) >> "%FILE%"

echo ✅ Estructura creada con éxito.

REM === Abrir archivo generado ===
start "" "%FILE%"

pause
