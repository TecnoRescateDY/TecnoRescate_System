@echo off
setlocal enabledelayedexpansion

echo.
echo ╔══════════════════════════════════════╗
echo ║ ⚙️ Inyectando Inteligencia al Sistema ║
echo ║        COLOSSUS 0.1 - FOXY CORE      ║
echo ╚══════════════════════════════════════╝
echo.

REM --- START_FOXY.SH ---
> BOOT_FOXY_USB\Scripts\start_foxy.sh echo #!/bin/bash
>> BOOT_FOXY_USB\Scripts\start_foxy.sh echo echo "[🦊 FOXY] Iniciando sistema..."
>> BOOT_FOXY_USB\Scripts\start_foxy.sh echo mkdir -p log
>> BOOT_FOXY_USB\Scripts\start_foxy.sh echo echo "$(date) – FOXY iniciado en $(hostname)" ^>> log/sesiones.log
>> BOOT_FOXY_USB\Scripts\start_foxy.sh echo bash Scripts/hash_checker.sh
>> BOOT_FOXY_USB\Scripts\start_foxy.sh echo cd ControlPanel
>> BOOT_FOXY_USB\Scripts\start_foxy.sh echo python3 -m http.server 8080

REM --- HASH_CHECKER.SH ---
> BOOT_FOXY_USB\Scripts\hash_checker.sh echo #!/bin/bash
>> BOOT_FOXY_USB\Scripts\hash_checker.sh echo HASH="QmABC123..."
>> BOOT_FOXY_USB\Scripts\hash_checker.sh echo FILE="foxy_passes.json"
>> BOOT_FOXY_USB\Scripts\hash_checker.sh echo echo "[🦊 FOXY] Buscando hash: $HASH"
>> BOOT_FOXY_USB\Scripts\hash_checker.sh echo jq -e "has(\\\"$HASH\\\")" "$FILE" ^> /dev/null ^
&& echo "✅ Hash válido: acceso concedido" ^
|| echo "❌ Hash no encontrado: acceso denegado"

REM --- FAKE_IPFS_GET.SH ---
> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo #!/bin/bash
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo HASH="$1"
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo DEST="$2"
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo echo "[🦊 FOXY] Simulando IPFS..."
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo if [ -d "../IPFS_Mock/$HASH" ]; then
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo ^^^ cp -r "../IPFS_Mock/$HASH" "$DEST"
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo ^^^ echo "✅ Descarga simulada completa"
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo else
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo ^^^ echo "❌ Hash no encontrado en IPFS_Mock/"
>> BOOT_FOXY_USB\Scripts\fake_ipfs_get.sh echo fi

REM --- INDEX.HTML (PANEL) ---
> BOOT_FOXY_USB\ControlPanel\index.html echo ^<!DOCTYPE html^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<html lang="es"^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<head^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<meta charset="UTF-8" /^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<title^>FOXY Control Panel^</title^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<style^>body{background:#0e0e0e;color:#00ffcc;font-family:monospace;padding:2em}button{background:black;border:1px solid #00ffcc;color:#00ffcc;padding:1em;margin:1em;font-size:1em}h1{color:#00ffaa}^</style^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^</head^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<body^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<h1^>🦊 FOXY - Panel de Rescate^</h1^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<button onclick="alert('Iniciando proceso FOXY...')"^>🔁 Iniciar FOXY^</button^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<button onclick="alert('Backup creado...')"^>💾 Backup^</button^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<button onclick="alert('Limpieza realizada')"^>🧼 Limpieza^</button^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^<p^>Estado: 🟢 FOXY Activo^</p^>
>> BOOT_FOXY_USB\ControlPanel\index.html echo ^</body^>^</html^>

REM --- JSONs ---
> BOOT_FOXY_USB\foxy_index.json echo {
>> BOOT_FOXY_USB\foxy_index.json echo   "control_panel": "QmABC123...",
>> BOOT_FOXY_USB\foxy_index.json echo   "kernel": "QmXYZ789..."
>> BOOT_FOXY_USB\foxy_index.json echo }

> BOOT_FOXY_USB\foxy_passes.json echo {
>> BOOT_FOXY_USB\foxy_passes.json echo   "QmABC123...": "control_panel",
>> BOOT_FOXY_USB\foxy_passes.json echo   "QmXYZ789...": "kernel_access"
>> BOOT_FOXY_USB\foxy_passes.json echo }

REM --- README USB ---
> BOOT_FOXY_USB\README_USB.md echo # BOOT_FOXY_USB
>> BOOT_FOXY_USB\README_USB.md echo Este módulo permite iniciar FOXY desde un pendrive.
>> BOOT_FOXY_USB\README_USB.md echo Ejecutar `start_foxy.sh` para comenzar.

REM --- KERNEL .MDs ---
> Kernel\Bitacora\Bitacora_General.md echo # Bitácora FOXY General
>> Kernel\Bitacora\Bitacora_General.md echo Sistema iniciado correctamente. Se detectaron módulos funcionales.

> Kernel\Modulos\Modulo_Starter_USB.md echo # Módulo: Starter USB
>> Kernel\Modulos\Modulo_Starter_USB.md echo Este módulo prepara el entorno mínimo de ejecución para FOXY.

> Kernel\Modulos\Modulo_IPFS_Offline.md echo # Módulo: IPFS Offline
>> Kernel\Modulos\Modulo_IPFS_Offline.md echo Simula hashes sin conexión, útil en entornos reciclados.

> Kernel\Modulos\Modulo_Panel_HTML.md echo # Módulo: Panel Web Local
>> Kernel\Modulos\Modulo_Panel_HTML.md echo Interfaz básica de control desde navegador.

echo.
echo ✅ Inyección completa de contenido en COLOSSUS 0.1
echo 🚀 Listo para ejecutar en terminal, navegador o pendrive.

pause
