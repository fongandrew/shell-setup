#!/bin/bash

sudo apt-get update
sudo apt install build-essential libssl-dev libreadline-dev zlib1g-dev python3 python-minimal python-pip python3-pip

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

. ~/.nvm/nvm.sh
nvm install --lts

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

export PATH="$HOME/.rbenv/bin:$PATH"
rbenv install 2.4.3
eval "$(rbenv init -)"
rbenv shell 2.4.3
gem install bundler

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# For Windows / Ubuntu interop more than anything else
git config core.fileMode false

./setup-shell.sh


