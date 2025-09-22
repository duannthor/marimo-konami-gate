#!/usr/bin/env bash
set -euo pipefail
if [[ $# -lt 1 ]]; then
  echo "Usage: $0 path/to/notebook.py" >&2
  exit 1
fi
marimo export html-wasm "$1" -o docs --mode run
