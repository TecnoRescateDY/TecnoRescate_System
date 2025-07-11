#/bin/bash
echo "[🦊 FOXY] Iniciando sistema..."
mkdir -p log
bash Scripts/hash_checker.sh
cd ControlPanel
python3 -m http.server 8080
