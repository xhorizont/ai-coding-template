#!/usr/bin/env bash
set -euo pipefail
echo "Repository map:"
find . -maxdepth 3 -type f | sed 's#^./##' | sort
