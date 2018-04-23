# tm's dotfiles

> Update script need to be tested and improved…

## Install

On a sparkling fresh installation of MacOS:

```
sudo softwareupdate -i -a
xcode-select --install
```

Install the dotfiles with Git

```
git clone https://github.com/thierrymichel/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
scripts/bootstrap
```

## Documentation

### > dotfiles

- `coding/babelrc.symlink`
- `coding/editorconfig.symlink`
- `coding/env.symlink`
- `coding/eslintrc.json.symlink`
- `coding/sass-lint.yml.symlink`
- `git/git_commit_msg.symlink`
- `git/gitconfig.local.symlink`
- `git/gitconfig.symlink`
- `git/gitignore_global.symlink`
- `mackup/mackup.cfg.symlink`
- `mackup.symlink`
- `phpcs.symlink`
- `zsh/zshrc.symlink`

### > install

1. Homebrew (see [`Brewfile`](Brewfile]))
2. Node
    - `nvm`
    - Latest `node` LTS version
    - Update `npm`
    - global modules (see [`node/install.sh`](node/install.sh))
3. MacOS "defaults settings"
4. Applications update (Mac AppStore)
5. Git LFS
6. Php Code Sniffer
7. Set ZSH as default

### > backup

- `mackup backup` (+ sync DropBox)
- SSH keys
