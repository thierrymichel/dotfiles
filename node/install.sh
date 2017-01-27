nvm install --lts
nvm use --lts

NODE_VERSION=$(node -v)
nvm alias default $NODE_VERSION

packages=(
  ava
  babel-eslint
  david
  eslint
  gulp-cli
  jscs
  json-server
  np
  spoof
  vue-cli
  yo
)

npm install -g "${packages[@]}"


# if test ! $(which spoof)
# then
#   npm install spoof -g
# fi
