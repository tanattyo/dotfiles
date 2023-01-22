![CI](https://github.com/tanattyo/dotfiles/workflows/CI/badge.svg)
![lint](https://github.com/tanattyo/dotfiles/workflows/lint/badge.svg)

# .dotfiles

```
git clone https://github.com/tanattyo/dotfiles.git .dotfiles
cd .dotfiles
git submodule update --init --recursive
bash init.sh
brew bundle --global
bash langconf.sh
```

## chezmoi
```
chezmoi cd
chezmoi add .Brewfile
chezmoi edit .Brewfile
chezmoi apply
```

## Brew
```bash
brew bundle --global
brew bundle cleanup --global --force
brew bundle dump
```
