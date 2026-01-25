# chezmoi

.PHONY: update
update:
	chezmoi apply --verbose

.PHONY: brew
brew:
	brew bundle --global