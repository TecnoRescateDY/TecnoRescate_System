@echo off
set target=%USERPROFILE%\Desktop\Kernel_8_Foxy_Mente_Clara
mkdir "%target%"
copy "KERNEL_8.0.txt" "%target%"
copy "BITACORA_2025-06-17.txt" "%target%"
copy "README_TECNORESCATE_KERNEL_8.0.md" "%target%"
echo Archivos copiados a: %target%
pause
