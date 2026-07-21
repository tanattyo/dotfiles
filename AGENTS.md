# Dotfiles (chezmoi)

このリポジトリは `chezmoi` の source state です。`home/` 配下を編集して dotfiles を管理します。

## Repository Map

- `home/`: ホームディレクトリへ適用する source state
- `home/dot_config/mise/config.toml`: 言語ランタイムとCLIツールのバージョン管理
- `README.md`: 新しいマシンへの導入手順

## Repository Conventions

- 実ファイル (`~/.zshrc` など) ではなく、対応する `home/...` を編集する
- `home/dot_*` はホームディレクトリの dotfile に対応する
- `home/dot_config/...` は `~/.config/...` に対応する
- `*.tmpl` は `chezmoi` テンプレートとして扱う
- 生成物や一時ファイルはコミットしない

## Edit Workflow

1. 変更対象ファイルを特定し、関連ファイルのみ読む
2. source state (`home/...`) を直接編集する
3. 影響範囲に応じた検証を行う
4. diff を確認し、変更内容と検証結果を簡潔に共有する

## Validation

- zsh設定を変更したら `zsh -n home/dot_zshrc` を実行する
- `chezmoi diff` と `chezmoi apply --dry-run --verbose` を実行する
- 失敗が今回の変更に起因する場合は、対象範囲内で修正して再実行する
- 既存または変更範囲外の問題は勝手に修正せず、結果として報告する
- 実環境を変更する `chezmoi apply` は、ユーザーが適用を依頼した場合だけ実行する

## Review Guidelines

- source state と適用先の対応が正しいか確認する
- シェルの構文、クォート、パス、alias の破損を確認する
- 秘密情報や実アカウント固有の値が追加されていないか確認する
- 依頼と無関係な設定変更や大規模リファクタを指摘する

## Safety

- 破壊的操作（大量削除、履歴改変）は明示依頼がある場合のみ
- 機密情報（API キー、トークン、実アカウント情報）を追加しない
- ユーザーの既存変更を保持し、関連のないファイルは変更しない
