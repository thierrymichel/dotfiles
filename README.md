# tm's dotfiles

> Update script need to be tested and improved…

## Install

On a sparkling fresh installation of MacOS:

```
sudo softwareupdate -i -a
xcode-select --install
```

Log into App Store (for mas-cli install)

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
- `coding/eslintrc.json.symlink`
- `coding/sass-lint.yml.symlink`
- `git/git_commit_msg.symlink`
- `git/gitconfig.local.symlink`
- `git/gitconfig.symlink`
- `git/gitignore_global.symlink`
- `mackup/mackup.cfg.symlink`
- `mackup.symlink`
- `phpcs.symlink`
- `vscode/github-markdown.css.symlink`
- `zsh/zshrc.symlink`

### > install

1. nvm
2. Homebrew (see [`Brewfile`](Brewfile]))
3. MacOS "defaults settings" (see [`defaults.sh`](macos/defaults.sh]))
4. ZSH: antigen + set as default
5. Installers
    - Composer
    - Git LFS
    - App Store software update
    - node LTS + global modules
    - WP-CLI

---

## Memento

### > restore

1. See [install](#install)
2. Dropbox setup + sync (it can take a while…)
3. Setup 1Password (personal, then family, then professional)
4. Install missing applications ([notes](NOTES.md))
5. Mackup (`mackup restore`)
6. Restore SSH keys
7. Open apps + add licence / register…

### > backup

1. Backup through Time Machine + Carbon Copy Cloner
2. Mackup (`mackup backup`)
3. Dropbox sync
4. Save SSH keys
