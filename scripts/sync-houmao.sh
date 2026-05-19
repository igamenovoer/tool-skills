#!/usr/bin/env bash
set -euo pipefail

houmao_root="${1:-../houmao}"
source_dir="${houmao_root%/}/src/houmao/agents/assets/system_skills"
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
target_dir="$repo_root/houmao"

if [[ ! -d "$source_dir" ]]; then
  echo "Houmao system skills source not found: $source_dir" >&2
  exit 1
fi

mkdir -p "$target_dir"

rsync -a --delete \
  --exclude='__pycache__/' \
  --exclude='*.pyc' \
  --include='houmao-*/***' \
  --exclude='*' \
  "$source_dir/" "$target_dir/"

