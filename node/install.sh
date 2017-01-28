#!/bin/sh
#
# node/nvm installations

echo "› installers:node"

# . ~/.zshrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

nvm install --lts
nvm use --lts

NODE_VERSION=$(node -v)
nvm alias default $NODE_VERSION

npm update npm -g

packages=(
  david
  yo
  gulp-cli
  vue-cli
  eslint
  babel-eslint
  jscs
  ava
  json-server
  np
  spoof
)

npm install -g "${packages[@]}"


# if test ! $(which spoof)
# then
#   npm install spoof -g
# fi
