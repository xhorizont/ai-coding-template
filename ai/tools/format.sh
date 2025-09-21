#!/usr/bin/env bash
set -euo pipefail
if [ -f "pyproject.toml" ]; then
  ruff check --fix || true
fi
echo "Formatting completed."
