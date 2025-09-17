#!/usr/bin/env bash
set -euo pipefail

export NPM_CLIENT="${NPM_CLIENT:-npm}"
export AUTO_INIT="${AUTO_INIT:-true}"
export HOST="${HOST:-0.0.0.0}"
export NUXT_PORT="${NUXT_PORT:-3000}"

WORKDIR="/workspace/nuxt-app"
mkdir -p "$WORKDIR"

if [[ "$AUTO_INIT" == "true" ]]; then
  /scripts/bootstrap.sh
fi

cd "$WORKDIR"

cmd="${1:-dev}"

install_if_needed() {
  if [[ -f package.json && "${SKIP_INSTALL:-false}" != "true" ]]; then
    case "$NPM_CLIENT" in
      npm)
        npm install ;;
      pnpm)
        corepack enable || true
        pnpm install ;;
      yarn|yarnBerry|yarnModern)
        corepack enable || true
        yarn install ;;
      *)
        echo "Unknown NPM_CLIENT=$NPM_CLIENT, falling back to npm";
        npm install ;;
    esac
  fi
}

run_script() {
  local script_name="$1"; shift || true
  case "$NPM_CLIENT" in
    npm)
      npm run "$script_name" -- "$@" ;;
    pnpm)
      pnpm run "$script_name" -- "$@" ;;
    yarn|yarnBerry|yarnModern)
      yarn "$script_name" "$@" ;;
    *)
      npm run "$script_name" -- "$@" ;;
  esac
}

case "$cmd" in
  dev)
    install_if_needed
    run_script dev --host "$HOST" --port "$NUXT_PORT"
    ;;
  build)
    install_if_needed
    run_script build
    ;;
  preview)
    install_if_needed
    run_script preview --host "$HOST" --port "$NUXT_PORT"
    ;;
  setup)
    install_if_needed
    echo "Setup complete."
    ;;
  bash|sh)
    exec "$cmd" "${@:2}"
    ;;
  *)
    exec "$@"
    ;;
esac


