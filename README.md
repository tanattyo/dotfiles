# Chezmoi

![CI](https://github.com/tanattyo/dotfiles/workflows/CI/badge.svg)

## chezmoi について

- ソースディレクトリは `~/.local/share/chezmoi`
- 構成ファイルは `~/.config/chezmoi/chezmoi.toml`
- ドットファイルは `dot_` が対象です

## Quick start

## Concept

- dotfile を [chezmoi](https://github.com/twpayne/chezmoi) で管理します。
- application は [brew](https://brew.sh/index_ja) で管理します。
- Brew だけ手動でダウンロードし、他はほぼ自動でセットアップできるようにします。

## 新しいマシンで使い始める

```bash
bash setup.sh
```

```toml
[data]
    email="tanattyokana@gmail.com"
    name="Hayate Tanaka"
```

## その他

- Google 日本語入力は手動でインストールしてください
<https://www.google.co.jp/ime/>
