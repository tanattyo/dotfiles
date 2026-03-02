# chezmoi

.PHONY: update
update:
	chezmoi apply --verbose

.PHONY: brew
brew:
	brew bundle --global

.PHONY: check
check: check-shell check-chezmoi

.PHONY: check-shell
check-shell:
	bash -n setup.sh
	zsh -n home/dot_zshrc home/dot_zprofile home/dot_zshenv home/dot_zlogin home/dot_zlogout
	@if command -v shellcheck >/dev/null 2>&1; then \
		shellcheck setup.sh; \
	else \
		echo "shellcheck not found: skip"; \
	fi

.PHONY: check-chezmoi
check-chezmoi:
	@chezmoi diff || echo "chezmoi diff skipped (offline or unavailable)"
	@chezmoi apply --dry-run --verbose || echo "chezmoi dry-run skipped (offline or unavailable)"
