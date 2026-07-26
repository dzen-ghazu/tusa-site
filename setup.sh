#!/usr/bin/env bash
set -euo pipefail

# Allow overriding the Python command, default to python3 then python.
PYTHON_BIN="${PYTHON_BIN:-python3}"
if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
  PYTHON_BIN="python"
fi

if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
  echo "Python not found. Please install Python 3 first."
  exit 1
fi

echo "Using Python command: $PYTHON_BIN"

"$PYTHON_BIN" -m venv .venv
./.venv/bin/python -m pip install --upgrade pip
./.venv/bin/python -m pip install -r requirements.txt

echo
echo "Setup complete."
echo "Activate the environment with: source .venv/bin/activate"
