![CI](https://github.com/tanattyo/dotfiles/workflows/CI/badge.svg)
![lint](https://github.com/tanattyo/dotfiles/workflows/lint/badge.svg)

# Quick start

## Concept

- dotfile を [chezmoi](https://github.com/twpayne/chezmoi) で管理します。
- application は [brew](https://brew.sh/index_ja) で管理します。
- Brew だけ手動でダウンロードし、他はほぼ自動でセットアップできるようにします。

## 新しいマシンで使い始める

Brew インストール（https://brew.sh/index_ja）

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

chezmoi をインストールする
```
brew install chezmoi
```

ドットファイルをインストール
```
chezmoi init --apply https://github.com/tanattyo/dotfiles.git
```

## よく使うコマンド

### .dotfiles

```
git clone https://github.com/tanattyo/dotfiles.git .dotfiles
cd .dotfiles
git submodule update --init --recursive
bash init.sh
brew bundle --global
bash langconf.sh
```

### chezmoi
```
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
