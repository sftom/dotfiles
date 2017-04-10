My dotfiles

# Installation:

```terminal
git clone git://github.com/sftom/dotfiles.git ~/.vim
```
## Create symlinks:

### on Unix/MacOSX Systems

```terminal
ln -s ~/Documents/development/dotfiles/.vim/.vimrc ~/.vimrc
ln -s ~/Documents/development/dotfiles/.vim/.gvimrc ~/.gvimrc
ln -s ~/Documents/development/dotfiles/.vim/ ~/.vim
```
### on Windows Systems

```terminal
mklink "%USERPROFILE%\.vimrc" "%USERPROFILE%\Documents\development\dotfiles\.vim\.vimrc"
mklink "%USERPROFILE%\.gvimrc" "%USERPROFILE%\Documents\development\dotfiles\.vim\.gvimrc"
mklink /d "%USERPROFILE%\.vim" "%USERPROFILE%\Documents\development\dotfiles\.vim"
```

## Switch to the `~/.vim` directory, and fetch submodules:

```terminal
cd ~/.vim
git submodule init
git submodule update
```
