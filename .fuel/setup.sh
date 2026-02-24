#!/usr/bin/env bash
set -euo pipefail

# ── Fuel env defaults ──────────────────────────────────────────────
FUEL_PORT_BASE="${FUEL_PORT_BASE:-8000}"
FUEL_PROJECT_PATH="${FUEL_PROJECT_PATH:-$(cd "$(dirname "$0")/.." && pwd)}"

echo "=== Readalize Website Setup ==="
echo "Project path: ${FUEL_PROJECT_PATH}"

# ── Validate static files exist ────────────────────────────────────
for f in index.html styles.css app.js; do
  if [ ! -f "${FUEL_PROJECT_PATH}/${f}" ]; then
    echo "WARNING: Expected file missing: ${f}"
  fi
done

# ── No dependencies to install (pure static site) ─────────────────
echo "Static site — no dependencies to install."

# ── Print key URLs for detection ───────────────────────────────────
echo "App URL: http://localhost:${FUEL_PORT_BASE}"

echo "Setup complete."
