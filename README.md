# Chezmoi

![CI](https://github.com/tanattyo/dotfiles/workflows/CI/badge.svg)
![lint](https://github.com/tanattyo/dotfiles/workflows/lint/badge.svg)

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

Brew インストール（<https://brew.sh/index_ja）>

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

chezmoi をインストールする

```bash
brew install chezmoi
```

ドットファイルをインストール

```bash
chezmoi init --apply https://github.com/tanattyo/dotfiles.git
```

ステートを記入

```chezmoi edit chezmoi.toml
```

```toml
[data]
    email="tanattyokana@gmail.con"
    name="Hayate Tanaka"
```

## よく使うコマンド

### .dotfiles

```bash
git clone https://github.com/tanattyo/dotfiles.git .dotfiles
cd .dotfiles
git submodule update --init --recursive
bash init.sh
brew bundle --global
bash langconf.sh
```

### chezmoi

```bash
chezmoi cd
chezmoi add .Brewfile
chezmoi edit .Brewfile
chezmoi apply
```

### Brew

```bash
brew bundle --global
brew bundle cleanup --global --force
brew bundle dump
```
