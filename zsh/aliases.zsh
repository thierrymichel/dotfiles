alias reload='. ~/.zshrc'
alias cls='clear' # Good 'ol Clear Screen command
alias c='clear'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~' # `cd` is probably faster to type though
alias -- -='cd -'

# Shortcuts
alias home='cd ~'
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads'
## Projects
alias gh='cd ~/GitHub'
alias p='cd ~/Projects'
alias pj='cd ~/Projects'
## Applications
alias µ='micro'

# Webserver
alias server='python -m SimpleHTTPServer 8000'
alias jsonserver='json-server --watch dev/db.json'
# https://osxfuse.github.io/
# https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh
alias remote='sshfs tmi@devbox.epic-sys.io:/home/tmi ~/Mount -p 22 -o auto_cache,reconnect,defer_permissions,noappledouble,volname=tmi'
alias unremote='sudo umount ~/Mount'

# Get week number
alias week='date +%V'

# Recursively delete `.DS_Store` files
alias cleanup='find . -type f -name "*.DS_Store" -ls -delete'

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash='sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'

# Show/hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'

# Gandi deployment function
# Usage example: deploy 150862 xrun.be build
deploy() {
    ssh $1@git.dc2.gpaas.net 'deploy ${2}.git ${3}'
}

# List declared aliases, functions
alias listaliases="alias | sed 's/=.*//'"
alias listfunctions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'" # show non _prefixed functions

# node / npm
ng() {
  export NODE_PATH=`npm root -g` # NODE_PATH for requiring global modules
}
alias ni="npm install"
alias nun="npm uninstall"
alias nup="npm update"

# EPIC
alias tmi='ssh tmi'
## Commands
alias start='epic site start'
alias destroy='epic site destroy'
## Fast commands
alias eds='epic deploy staging'
alias edl='epic deploy live'
alias eg='epic gulp'
alias egb='epic gulp build'
alias eni='epic npm install'
alias enu='epic npm uninstall'
alias enl='epic npm ls'
alias ess='epic site start'
alias esd='epic site destroy'

gulprm() {
  docker rm -f `docker ps --format="table {{.Names}}" | grep local-gulp`
}
