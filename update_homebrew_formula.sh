#!/bin/bash
set -euo pipefail

TEMPLATE="./template/template.rb"

OUTPUT_PATH="./Formula/am.rb"

eval "cat > $OUTPUT_PATH <<EOF
$(cat $TEMPLATE)
EOF"
