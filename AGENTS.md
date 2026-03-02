# Dotfiles (chezmoi) Project Rules

このリポジトリは `chezmoi` の source state です。`home/` 配下を編集して dotfiles を管理します。

## Scope

- 対象: `home/`, `install/`, `setup.sh`, `Makefile`, `README.md`
- 原則: 変更は最小差分で行い、既存の運用方針を優先する

## Repository Conventions

- `home/dot_*` はホームディレクトリの dotfile に対応する
- `home/dot_config/...` は `~/.config/...` に対応する
- `*.tmpl` は `chezmoi` テンプレートとして扱う
- 生成物や一時ファイルはコミットしない

## Edit Workflow

1. 変更対象ファイルを特定し、関連ファイルのみ読む
2. source state (`home/...`) を直接編集する
3. 影響範囲に応じて最小限の検証を行う
4. 変更内容と検証結果を簡潔に共有する

## Validation

- シェル編集時: `bash -n setup.sh` または `zsh -n <file>`
- `chezmoi` 差分確認: `chezmoi diff`（利用可能な場合）
- 適用確認: `chezmoi apply --dry-run --verbose`（利用可能な場合）

## Agent Auto-Fix Loop

- エージェントは必ず `make check` を実行してから作業を完了する
- `make check` で NG が出た場合、次を優先して自動修正する
- 修正対象: 構文エラー、未クォート変数、明らかなパスミス、壊れた alias、ハードコードされた `$HOME` パス
- 非修正対象: 意図判断が必要な設定値・ツール選定・大規模リファクタ
- 修正後は `make check` を再実行し、結果を共有する
- `shellcheck` の `SC2034` と `SC1090` は zsh 設定では原則許容し、bash スクリプトの警告を優先する

## Safety

- 破壊的操作（大量削除、履歴改変）は明示依頼がある場合のみ
- 機密情報（API キー、トークン、実アカウント情報）を追加しない
- 関連のないファイルは変更しない
