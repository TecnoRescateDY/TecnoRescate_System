@echo off
setlocal enabledelayedexpansion

:: Nombre del módulo
set MODULE=Modulo_6.6_Dictado_PDF_Local

:: Ruta base del Kernel
set BASE=D:\TecnoRescate\Kernel_6.0\Modulos

:: Crear carpeta principal
mkdir "%BASE%\%MODULE%"

:: Subcarpetas útiles
mkdir "%BASE%\%MODULE%\audio_input"
mkdir "%BASE%\%MODULE%\text_output"
mkdir "%BASE%\%MODULE%\pdf_output"
mkdir "%BASE%\%MODULE%\scripts"
mkdir "%BASE%\%MODULE%\plantillas"
mkdir "%BASE%\%MODULE%\pruebas"

echo 📂 Módulo %MODULE% creado en %BASE%
pause
