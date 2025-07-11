
@echo off
title 🦊 Organizador TecnoRescate DIY
color 0A

echo.
echo [🦊] Iniciando organización del sistema TecnoRescate...
echo.

:: Crear nueva estructura
mkdir TecnoRescateDIY
mkdir TecnoRescateDIY\SalaReuniones
mkdir TecnoRescateDIY\Clientes
mkdir TecnoRescateDIY\Laboratorio
mkdir TecnoRescateDIY\Repuestos
mkdir TecnoRescateDIY\Finanzas
mkdir TecnoRescateDIY\Bots
mkdir TecnoRescateDIY\Papelera\Respaldo_Archivos_2025_06

:: Mover carpetas existentes
move "Sala de Reuniones" TecnoRescateDIY\SalaReuniones
move Clientes TecnoRescateDIY\Clientes
move Laboratorio TecnoRescateDIY\Laboratorio
move Repuestos TecnoRescateDIY\Repuestos
move "Panel de Control" TecnoRescateDIY\Finanzas
move "Bots automatizados" TecnoRescateDIY\Bots

:: Copiar consola principal si está en raíz
copy index.html TecnoRescateDIY\index.html

:: Crear README en cada carpeta
echo Sala de Reuniones para coordinación y trabajo colaborativo. > TecnoRescateDIY\SalaReuniones\README🧙‍♂️💻.txt
echo Carpeta de gestión de clientes y perfiles técnicos. > TecnoRescateDIY\Clientes\README🧙‍♂️💻.txt
echo Laboratorio de pruebas, formularios y hardware DIY. > TecnoRescateDIY\Laboratorio\README🧙‍♂️💻.txt
echo Almacenamiento y control de repuestos técnicos. > TecnoRescateDIY\Repuestos\README🧙‍♂️💻.txt
echo Finanzas y control administrativo. > TecnoRescateDIY\Finanzas\README🧙‍♂️💻.txt
echo Bots personalizados y módulos automatizados. > TecnoRescateDIY\Bots\README🧙‍♂️💻.txt

echo.
echo [✅] Organización completa. Archivos movidos y READMEs generados.
pause
