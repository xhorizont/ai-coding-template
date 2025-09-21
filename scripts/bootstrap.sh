#!/usr/bin/env bash
set -euo pipefail
echo "Bootstrapping project..."
cp -n .env.example .env || true
echo "Done."
