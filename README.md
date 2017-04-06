My dotfiles

# Installation:

```terminal
git clone git://github.com/sftom/dotfiles.git ~/.vim
```
## Create symlinks:

```terminal
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc
```

## Switch to the `~/.vim` directory, and fetch submodules:

```terminal
cd ~/.vim
git submodule init
git submodule update
```
