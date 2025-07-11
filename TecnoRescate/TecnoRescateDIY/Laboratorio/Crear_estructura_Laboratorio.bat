@echo off
REM 🛠️ Crear estructura base del Laboratorio de Revalorización Tecnológica
SET carpeta_base=TecnoRescate\TecnorescateDY\Laboratorio

REM Crear carpetas principales
mkdir "%carpeta_base%"
mkdir "%carpeta_base%\certificados"
mkdir "%carpeta_base%\datos"
mkdir "%carpeta_base%\assets"

REM Crear archivos HTML vacíos
echo.>"%carpeta_base%\index.html"
echo.>"%carpeta_base%\hoja_ingreso_equipo.html"
echo.>"%carpeta_base%\hoja_salida_equipo.html"
echo.>"%carpeta_base%\reporte_ecologico.html"
echo.>"%carpeta_base%\certificados\certificado_segunda_vida_template.html"

REM Crear archivos JSON vacíos con estructura inicial
echo [{}]>"%carpeta_base%\datos\historial.json"
echo [{}]>"%carpeta_base%\datos\impacto_ecologico.json"
echo [{}]>"%carpeta_base%\datos\equipos.json"

REM Crear archivos de estilo y assets
echo /* Estilos base del laboratorio */>"%carpeta_base%\assets\style.css"
echo <!-- Logo FOXY SVG (placeholder) -->>"%carpeta_base%\assets\logo_foxy.svg"

echo ✅ Carpeta y archivos creados correctamente en: %carpeta_base%
pause
