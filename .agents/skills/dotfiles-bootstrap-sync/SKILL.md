---
name: dotfiles-bootstrap-sync
description: Keep bootstrap-related dotfiles consistent across setup.sh, home/dot_Brewfile, and home/dot_config/mise/config.toml. Use when adding, removing, or upgrading developer tools in this dotfiles repository.
---

# Dotfiles Bootstrap Sync

この skill は初期構築系ファイルの不整合を防ぐ。

## Scope

- `setup.sh`
- `home/dot_Brewfile`
- `home/dot_config/mise/config.toml`
- 必要に応じて `README.md`

## Decision Rules

- GUI/CLI アプリ配布は `home/dot_Brewfile` を優先
- 言語ランタイム管理は `mise` 設定を優先
- `setup.sh` はブートストラップ導線に限定し、詳細セットアップを増やしすぎない

## Update Workflow

1. 変更対象ツールの配布経路を決める
2. 関連ファイルを同時に更新して整合性を保つ
3. 最低限の構文チェックを行う
4. 必要なら README の説明を更新する

## Validation Checklist

- `bash -n setup.sh`
- `brew bundle check --file=home/dot_Brewfile`（`brew` が利用可能な場合）
- `mise` 設定変更時はキー重複やタイポを目視確認する

## Guardrails

- 既存ユーザー環境を壊す強制上書きを避ける
- OS 依存処理を足す場合は条件分岐を明示する
- 影響範囲を報告時に必ず明記する
