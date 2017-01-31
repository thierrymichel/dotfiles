alias reload='. ~/.zshrc'
alias cls='clear' # Good 'ol Clear Screen command

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~' # `cd` is probably faster to type though
alias -- -='cd -'

# Shortcuts
alias home='cd ~'
alias s='cd ~/Sites'
alias sites='cd ~/Sites'
alias d='cd ~/Designs'
alias designs='cd ~/Designs'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias data='cd /Volumes/Data'
alias epic='cd /Volumes/Data/EPIC'
alias gh='cd /Volumes/Data/GitHub'
alias µ='micro'
alias st='subl .'

# Webserver
alias server='python -m SimpleHTTPServer 8000'
alias jsonserver='json-server --watch dev/db.json'
# https://osxfuse.github.io/
# https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh
alias remote='sshfs tmi@devbox.epic-sys.io:/home/tmi ~/Mount -p 22 -ovolname=DEVBOX -o auto_cache,reconnect,defer_permissions,noappledouble'
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

# npm
alias ni="npm install"
alias nun="npm uninstall"
alias nup="npm update"

# PHP MAMP
alias phpmamp='/Applications/MAMP/bin/php/php5.5.14/bin/php'

# EPIC
alias tmi='ssh tmi'
