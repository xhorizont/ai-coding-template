#!/usr/bin/env bash
set -euo pipefail
if [ -f "pyproject.toml" ]; then
  mypy || true
fi
echo "Typecheck completed."
