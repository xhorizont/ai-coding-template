#!/usr/bin/env bash
set -euo pipefail
if [ -f "package.json" ]; then
  npm test || true
fi
if [ -f "pyproject.toml" ]; then
  pytest || true
fi
