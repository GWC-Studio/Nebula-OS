#!/usr/bin/env bash
#
# build-docs.sh — Nebula-OS 文档构建/校验脚本（可选）
#
# 用法:
#   ./scripts/build-docs.sh    # 校验文档结构与内部链接
#
# 说明:
#   GitHub Pages 无法直接渲染 Markdown，如需在线文档站点，建议配合
#   MKDocs / Docsify 等静态站点工具使用。本脚本负责 CI 中的结构与链接校验。
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# 必须存在的文件（相对仓库根目录）
REQUIRED_FILES=(
  "README.md"
  "LICENSE"
  "docs/index.md"
  "docs/getting-started.md"
  "docs/CONTRIBUTING.md"
  "docs/nebula-ai/README.md"
  "docs/nebula-ai/installation.md"
  "docs/nebula-ai/usage.md"
  "docs/nebula-theme/README.md"
  "docs/nebula-theme/installation.md"
  "docs/nebula-theme/customization.md"
  "docs/nebula-gaming/README.md"
  "docs/nebula-gaming/installation.md"
  "docs/nebula-gaming/benchmarks.md"
)

errors=0

echo "==> 校验目录结构"
for f in "${REQUIRED_FILES[@]}"; do
  if [[ -f "$ROOT_DIR/$f" ]]; then
    printf "  [OK]   %s\n" "$f"
  else
    printf "  [MISS] %s\n" "$f"
    errors=$((errors + 1))
  fi
done

echo "==> 校验内部 Markdown 链接（*.md）"
while IFS= read -r -d '' md; do
  rel="${md#"$ROOT_DIR"/}"
  base_dir="$(dirname "$md")"

  # 提取 ](xxx.md 形式的内链（不含 http(s) 绝对地址）
  while IFS= read -r link; do
    target="${link%#*}"   # 去掉锚点
    if [[ "$target" == *.md && ! -f "$base_dir/$target" ]]; then
      printf "  [BROKEN] %s -> %s\n" "$rel" "$link"
      errors=$((errors + 1))
    fi
  done < <(grep -oE '\]\([^)]*\.md[^)]*\)' "$md" \
           | sed -E 's/^\]\(//; s/\)$//' \
           | grep -vE '^(https?|ftp)://' || true)
done < <(find "$ROOT_DIR" -name '*.md' -type f -print0)

if (( errors > 0 )); then
  printf "\n发现 %d 个问题。\n" "$errors"
  exit 1
fi

printf "\n文档结构完整，所有内部链接有效 ✔\n"