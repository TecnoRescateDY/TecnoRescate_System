@echo off
setlocal enabledelayedexpansion

REM ╔═══════════════════════════════════════╗
REM ║       🧙‍♂️ FOXY - COLOSSUS 0.1        ║
REM ║   Instalador automático para Windows  ║
REM ╚═══════════════════════════════════════╝

echo Creando carpeta base COLossus...
mkdir Colossus
cd Colossus

REM --- BOOT_FOXY_USB ---
mkdir BOOT_FOXY_USB
cd BOOT_FOXY_USB
mkdir ControlPanel
mkdir Scripts
mkdir log

echo ^<html^>^<body^>FOXY Panel HTML^</body^>^</html^> > ControlPanel\index.html

echo @echo off > Scripts\start_foxy.sh
echo echo [🦊 FOXY] Iniciando sistema... >> Scripts\start_foxy.sh
echo mkdir log >> Scripts\start_foxy.sh
echo echo %%date%% %%time%% - FOXY iniciado >> log\sesiones.log
echo cd ControlPanel >> Scripts\start_foxy.sh
echo python -m http.server 8080 >> Scripts\start_foxy.sh

echo @echo off > Scripts\hash_checker.sh
echo echo Verificando hash... >> Scripts\hash_checker.sh

echo @echo off > Scripts\fake_ipfs_get.sh
echo echo Simulando IPFS... >> Scripts\fake_ipfs_get.sh

echo {>"foxy_index.json"
echo.  "control_panel": "QmABC123...",
echo.  "kernel": "QmXYZ789..."
echo }>>"foxy_index.json"

echo {>"foxy_passes.json"
echo.  "QmABC123...": "control_panel",
echo.  "QmXYZ789...": "kernel_access"
echo }>>"foxy_passes.json"

echo # FOXY USB iniciado >> README_USB.md

cd..

REM --- IPFS_Mock ---
mkdir IPFS_Mock
mkdir IPFS_Mock\QmABC123...
echo control_panel.zip > IPFS_Mock\QmABC123...\control_panel.zip
mkdir IPFS_Mock\QmXYZ789...
echo kernel.tar.gz > IPFS_Mock\QmXYZ789...\kernel.tar.gz
echo Simulación de IPFS offline > IPFS_Mock\README.txt

REM --- Kernel ---
mkdir Kernel
mkdir Kernel\Bitacora
echo Bitacora FOXY inicial > Kernel\Bitacora\Bitacora_General.md

mkdir Kernel\Modulos
echo Modulo starter > Kernel\Modulos\Modulo_Starter_USB.md
echo Modulo IPFS offline > Kernel\Modulos\Modulo_IPFS_Offline.md
echo Modulo panel web > Kernel\Modulos\Modulo_Panel_HTML.md

REM --- Backups ---
mkdir Backups
echo Aquí se guardan backups manuales > Backups\README.txt

REM --- Clientes ---
mkdir Clientes
mkdir Clientes\Cliente_Ejemplo01
echo Carpeta demo cliente > Clientes\Cliente_Ejemplo01\README.txt
echo Aquí se cargan carpetas por cliente > Clientes\README.txt

REM --- Bots ---
mkdir Bots
mkdir Bots\BotCervecero
echo Demo Bot Cervecero > Bots\BotCervecero\README.txt
mkdir Bots\BotContravenciones
echo Demo Bot Contravenciones > Bots\BotContravenciones\README.txt
echo Contenedor de bots activos > Bots\README.txt

REM --- Recursos ---
mkdir Recursos
mkdir Recursos\Imágenes
mkdir Recursos\PDF
mkdir Recursos\Plantillas
echo Material general centralizado > Recursos\README.txt

echo.
echo ✅ COLOSSUS 0.1 generado con éxito
echo 🦊 FOXY está listo para ejecutar su primer ciclo.

pause
