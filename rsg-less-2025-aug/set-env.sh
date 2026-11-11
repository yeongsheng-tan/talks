#!/usr/bin/env bash
# Sourced by devbox init_hook: no `set -e`, it would leak into the interactive shell.

export PS1="(devbox)$PS1"
export NODE_HOME="$(readlink -f "$(command -v node)" | sed -E 's/\/bin\/node//g')"
export SOURCE_REPO_NAME=${PWD##*/}

RULE="$(printf '─%.0s' {1..72})"
row() { printf '  %-10s %s\n' "$1" "$2"; }
echo "$RULE"
echo "  $SOURCE_REPO_NAME · development environment"
echo "$RULE"
row "devbox"    "$(devbox version)"
row "node"      "$(node --version)"
row "node home" "$NODE_HOME"
echo "$RULE"
unset RULE; unset -f row

# corepack enable/prepare + PATH handled by devbox nodejs plugin (DEVBOX_COREPACK_ENABLED).
# corepack's nix package bundles its own node (24.x); the generated pnpm shim's
# shebang pins it, so pnpm runs under node 24 and trips engines.node (>=26).
# Re-point the shim at the project node on PATH.
PNPM_SHIM="$DEVBOX_COREPACK_BIN_DIR/pnpm"
if [ -L "$PNPM_SHIM" ]; then
  PNPM_JS="$(readlink -f "$PNPM_SHIM")"
  rm -f "$PNPM_SHIM"   # symlink into the read-only nix store
  printf '#!/usr/bin/env bash\nexec node "%s" "$@"\n' "$PNPM_JS" > "$PNPM_SHIM"
  chmod +x "$PNPM_SHIM"
fi

echo "Setting up PNPM..."
pnpm --frozen-lockfile recursive install
# non-fatal: a failed hook aborts `devbox run`, blocking the very command needed to fix the lockfile
[ $? -eq 0 ] || echo "⚠ pnpm install failed. After a packageManager bump run: pnpm install --no-frozen-lockfile"
