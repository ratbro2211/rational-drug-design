#!/usr/bin/env bash
set -euo pipefail

VINA_BIN="${VINA_BIN:-vina}"
if ! command -v "$VINA_BIN" >/dev/null 2>&1; then
  echo "AutoDock Vina was not found. Install it or set VINA_BIN to its executable path." >&2
  exit 1
fi

for compound in toddanol toddaline toddaquinoline; do
  dir="Dock_HIV_${compound}"
  echo "Running Vina for ${compound}..."
  (
    cd "$dir"
    "$VINA_BIN" --config config.run.txt \
      --out output_reproduced.pdbqt \
      --log log_reproduced.txt
  )
done
