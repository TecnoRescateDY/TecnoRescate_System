@echo off
REM Crear estructura de carpetas para Kernel_Daredevil_TradingBot

REM Carpeta raíz
mkdir Kernel_Daredevil_TradingBot

cd Kernel_Daredevil_TradingBot

REM Kernel_6.5 y subcarpetas
mkdir Kernel_6.5
cd Kernel_6.5
mkdir módulos
cd módulos
mkdir DareSignal_X
mkdir HardFoxy
mkdir F-Optima_Calculator
cd DareSignal_X
mkdir bitácoras
cd ..
cd HardFoxy
mkdir bitácoras
cd ..
cd ..
echo. > BITACORA.md
echo. > KERNEL.md
echo. > README.txt
cd ..

REM Kernel_6.6 y módulos
mkdir Kernel_6.6
mkdir Kernel_6.6\módulos
mkdir Kernel_6.6\módulos\DareSignal_X

REM Kernel_6.7 y módulos
mkdir Kernel_6.7
mkdir Kernel_6.7\módulos
mkdir Kernel_6.7\módulos\DareSignal_X

REM Kernel_6.8 y módulos
mkdir Kernel_6.8
mkdir Kernel_6.8\módulos
mkdir Kernel_6.8\módulos\HardFoxy

REM Backtest
mkdir backtest
echo. > backtest\Whale_Backtest_v1.md

REM Data, Indicators y Scripts
mkdir data
mkdir indicators
mkdir scripts

REM Proyectos Privados
mkdir Proyectos_Privados
mkdir Proyectos_Privados\The_Daredevil
echo. > Proyectos_Privados\The_Daredevil\Bitacora_Privada.md
echo. > Proyectos_Privados\The_Daredevil\ETHUSDT_0625_SHORT.md
echo. > Proyectos_Privados\The_Daredevil\Bitacora_Retroactiva_Proyecto.md

REM The_Daredevil_Auto y subcarpetas
mkdir The_Daredevil_Auto
cd The_Daredevil_Auto
mkdir scripts
mkdir data
mkdir backtests
mkdir utils
mkdir risk_management
echo. > setup.bat
echo. > run_backtest.bat
echo. > README.md
cd ..

REM README_GENERAL.txt vacío
echo. > README_GENERAL.txt

echo Estructura creada con éxito.
pause
