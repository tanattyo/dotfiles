# Chezmoi

最小限のシェル設定、Git設定、miseのランタイム設定を `chezmoi` で管理します。

## セットアップ

Homebrewが利用できるmacOSで次を実行します。

```sh
brew install chezmoi mise
chezmoi init --apply https://github.com/tanattyo/dotfiles
mise install
```

Gitのユーザー情報は `~/.config/chezmoi/chezmoi.toml` に設定します。

```toml
[data]
email = "you@example.com"
name = "Your Name"
```
