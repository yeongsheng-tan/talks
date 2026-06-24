#!/usr/bin/env bash

set -eo pipefail

export PS1="(devbox)$PS1"
export NODE_PATH="$(readlink -e $(which node) | sed -E 's/\/bin\/node//g')"
export SOURCE_REPO_NAME=${PWD##*/}

echo "###################################################################################################################"
echo "                                                                                  "
echo "##   !! $SOURCE_REPO_NAME DEVELOPMENT ENVIRONMENT ;) !!"
echo "##   devbox VERSION: `devbox version`                 "
echo "##   NODE_PATH: $NODE_PATH                            "
echo "##   NODE VERSION: `node --version`                   "
echo "                                                                                  "
echo "###################################################################################################################"

# Configure Corepack manually. Devbox's built-in nodejs plugin is disabled in
# devbox.json (disable_plugin), because its generated setup-corepack.js uses
# CommonJS `require` and crashes under this project's package.json
# "type":"module". The disabled plugin still exports DEVBOX_COREPACK_BIN_DIR and
# keeps it on PATH, so we just (re)create the pnpm shim in that dir ourselves.
COREPACK_BIN_DIR="${DEVBOX_COREPACK_BIN_DIR:-${DEVBOX_PROJECT_ROOT:-$PWD}/.devbox/virtenv/corepack-bin}"
mkdir -p "$COREPACK_BIN_DIR"
case ":$PATH:" in *":$COREPACK_BIN_DIR:"*) ;; *) export PATH="$COREPACK_BIN_DIR:$PATH" ;; esac
corepack enable --install-directory "$COREPACK_BIN_DIR" pnpm >/dev/null 2>&1 || true
corepack prepare --activate >/dev/null 2>&1 || true

# corepack's nix package bundles its own node (24.x); the generated pnpm shim's
# shebang pins it, so pnpm runs under node 24 and trips engines.node (>=26).
# Re-point the shim at the project node on PATH.
PNPM_JS="$(readlink -f "$COREPACK_BIN_DIR/pnpm" 2>/dev/null || true)"
if [ -n "$PNPM_JS" ] && [ -f "$PNPM_JS" ]; then
  rm -f "$COREPACK_BIN_DIR/pnpm"   # it's a symlink into the read-only nix store
  printf '#!/usr/bin/env bash\nexec node "%s" "$@"\n' "$PNPM_JS" > "$COREPACK_BIN_DIR/pnpm"
  chmod +x "$COREPACK_BIN_DIR/pnpm"
fi

echo "Setting up PNPM..."
pnpm --frozen-lockfile recursive install

