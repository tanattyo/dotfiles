#!/bin/bash

# シンボリックリンクの作成
IGNORE_PATTERN="^\.(git|gitignore|github|huskyrc)"

echo "Create dotfile links."
for dotfile in .??*; do
    [[ $dotfile =~ $IGNORE_PATTERN ]] && continue
    ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done
echo "Success"

# このリポジトリには個人用メールを紐付ける
git config --local user.name "tanattyo"
git config --local user.email "tanattyokana@gmail.com"
