#!/usr/bin/env bash

set -u

declare -r DOTFILE_REPO_URL="https://github.com/tanattyo/dotfiles"

function install_chezmoi() {
    function is_chezmoi_exists() {
        command -v chezmoi &>/dev/null
    }

    if ! is_chezmoi_exists; then
        echo "chezmoi not found. Installing..."
        sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin
        # Add ~/.local/bin to PATH if not already present
        if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
            export PATH="$HOME/.local/bin:$PATH"
        fi
    else
        echo "chezmoi is already installed."
    fi

    # Initialize chezmoi with the dotfiles repository.
    chezmoi init --apply $DOTFILE_REPO_URL
}

function install_homebrew() {
    function is_homebrew_exists() {
        command -v brew &>/dev/null
    }

    if ! is_homebrew_exists; then
        echo "Homebrew not found. Installing..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed."
    fi
}

function main() {
    install_chezmoi
    install_homebrew
}

main