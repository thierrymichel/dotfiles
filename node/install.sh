#!/bin/sh
#
# node/nvm installations

echo "› installers:node"

# Load nvm (ZSH plugin)
. ~/.zshrc

if [ "$ENV" = 'update' ]
then
  echo '  update'
  nvm use --lts
  npm update -g
else
  echo '  install'

  nvm install --lts
  nvm use --lts

  NODE_VERSION=$(node -v)
  nvm alias default $NODE_VERSION

  npm update npm -g

  packages=(
    ava
    avn
    avn-nvm
    babel-eslint
    david
    eslint
    gulp-cli
    json-server
    np
    sass-lint
    spoof
    vsce
    vue-cli
    yo
  )

  npm install -g "${packages[@]}"

  avn setup
fi


# if test ! $(which spoof)
# then
#   npm install spoof -g
# fi
