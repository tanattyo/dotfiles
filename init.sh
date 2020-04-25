# このDirectoryに個人用メールを紐付ける
git config --local user.name "tanattyo"
git config --local user.email "tanattyokana@gmail.com"

# シンボリックリンクの作成
sh dotfileLink.sh

# brew install
brew bundle --global
brew bundle check --global
