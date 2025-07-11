@echo off
for /F "delims=" %%a in (arbol_carpetas.txt) do (
    if not "%%a"=="" (
        mkdir "%%a"
    )
)
echo Carpeta creada con éxito.
pause
