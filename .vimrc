
set encoding=utf-8

if v:lang=~"utf8$" || v:lang=~"UTF-8$"
        set fileencodings=utf-8
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Plugin Instructions
" http://vimawesome.com/

call vundle#begin()
" Let Vundle manage itself.
" Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-git'
Plugin 'tyru/open-browser.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'lervag/vimtex'
Plugin 'davidhalter/jedi-vim'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
" Plugin 'altercation/vim-colors-solarized'
call vundle#end()

filetype plugin indent on

set ai " autoindent
syntax enable
set background=dark
" colorscheme solarized
set backup
set bs=indent,eol,start
set history=50
set linebreak
set nocp
set nolist
set number
set ru
set sc " showcmd command autocomplete
set tw=72
set vb " visualbell
set viminfo='20,\"50
set wmnu
set wrap
set wrapmargin=8
set ww=<,>,h,l

syntax on
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} setlocal textwidth=80

let g:user_emmet_mode='a'
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall
