#!/usr/bin/env bash
# 把 repo 根目錄的研究筆記內容暫存到 _docs/（mkdocs 的 docs_dir），再建置或預覽。
#
#   ./scripts/build-site.sh stage   # 只做暫存複製
#   ./scripts/build-site.sh build   # 暫存 + 產出 site/
#   ./scripts/build-site.sh serve   # 暫存 + 本機預覽（http://127.0.0.1:8000/）
#
# 內容檔保留在 repo 根，符合 CLAUDE.md 規範；此腳本只是把它們複製進 mkdocs
# 預期的 docs_dir。新增主題資料夾會自動被一併複製，無需改這支腳本。
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

stage() {
  rm -rf _docs
  mkdir _docs
  # 複製所有研究筆記內容；排除 git/CI/工具設定與建置產物
  rsync -a \
    --exclude='.git/' \
    --exclude='.github/' \
    --exclude='.claude/' \
    --exclude='scripts/' \
    --exclude='_docs/' \
    --exclude='site/' \
    --exclude='mkdocs.yml' \
    --exclude='requirements.txt' \
    --exclude='CLAUDE.md' \
    --exclude='.DS_Store' \
    ./ _docs/
}

cmd="${1:-build}"
case "$cmd" in
  stage) stage ;;
  build) stage; mkdocs build ;;
  serve) stage; mkdocs serve ;;
  *) echo "用法: $0 [stage|build|serve]" >&2; exit 2 ;;
esac
