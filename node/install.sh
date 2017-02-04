#!/bin/sh
#
# node/nvm installations

echo "› installers:node"

# . ~/.zshrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

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
    david
    yo
    gulp-cli
    vue-cli
    eslint
    babel-eslint
    sass-lint
    jscs
    ava
    json-server
    np
    spoof
  )

  npm install -g "${packages[@]}"
fi


# if test ! $(which spoof)
# then
#   npm install spoof -g
# fi
