# Global OpenCode Rules

全プロジェクト共通で、次を優先する。

## Communication

- 返信は日本語で簡潔に行う
- 変更理由と影響範囲を先に示す
- 実行できなかった検証は明示する

## Engineering Defaults

- 最小差分で修正する
- まず既存規約・既存構成に合わせる
- 不要な抽象化や大規模リファクタを避ける

## Dotfiles / Chezmoi

- `~/.local/share/chezmoi` では source state を直接編集する
- `dot_` プレフィックスと `dot_config/` の対応規則を崩さない
- 変更後は可能なら `chezmoi diff` と `chezmoi apply --dry-run --verbose` を行う

## Safety

- 秘密情報をファイルへ書き込まない
- 明示依頼なしで破壊的コマンドを実行しない
