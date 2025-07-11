#/bin/bash
HASH="QmABC123..."
FILE="foxy_passes.json"
echo "[🦊 FOXY] Buscando hash: $HASH"
jq -e "has(\\\"$HASH\\\")" "$FILE" > /dev/null &
