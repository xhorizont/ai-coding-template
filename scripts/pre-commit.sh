#!/usr/bin/env bash
set -euo pipefail
./ai/tools/format.sh
./ai/tools/typecheck.sh
./ai/tools/run-tests.sh
