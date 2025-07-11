#/bin/bash
HASH="$1"
DEST="$2"
echo "[🦊 FOXY] Simulando IPFS..."
if [ -d "../IPFS_Mock/$HASH" ]; then
^ cp -r "../IPFS_Mock/$HASH" "$DEST"
^ echo "✅ Descarga simulada completa"
else
^ echo "❌ Hash no encontrado en IPFS_Mock/"
fi
