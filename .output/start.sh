#!/bin/sh
# Copilot Metrics Viewer — start script
# Requires Node.js >= 22.x

# Required
: "${NUXT_SESSION_PASSWORD:?Set NUXT_SESSION_PASSWORD (min 32 chars)}"

# Defaults
export NUXT_PUBLIC_IS_DATA_MOCKED="${NUXT_PUBLIC_IS_DATA_MOCKED:-false}"
export PORT="${PORT:-3000}"

echo "Starting Copilot Metrics Viewer on port $PORT..."
node "$(dirname "$0")/server/index.mjs"
