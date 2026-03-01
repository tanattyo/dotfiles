---
name: chezmoi-maintainer
description: Maintain dotfiles in a chezmoi source-state repository safely and efficiently. Use when editing files under home/, mapping source state to destination files, checking apply impact, or validating dotfile changes before commit.
---

# Chezmoi Maintainer

この skill は `chezmoi` リポジトリでの安全な変更フローを固定化する。

## Core Workflow

1. 対象を source state で特定する
2. 関連ファイルのみ最小差分で編集する
3. 検証を実行する
4. 変更内容と検証結果を簡潔に報告する

## Path Mapping Rules

- `home/dot_zshrc` -> `~/.zshrc`
- `home/dot_gitconfig.tmpl` -> `~/.gitconfig`
- `home/dot_config/<name>/...` -> `~/.config/<name>/...`

不明な場合は `chezmoi managed` や `chezmoi source-path` で確認する。

## Validation Checklist

- シェル関連を編集したら `zsh -n` か `bash -n` を使う
- 可能なら `chezmoi diff` を実行する
- 可能なら `chezmoi apply --dry-run --verbose` を実行する
- 検証不可の場合は理由を明示する

## Guardrails

- 関連のないファイルを同時に直さない
- 明示依頼なしで破壊的操作をしない
- 機密情報を平文で追加しない
