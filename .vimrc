set nocompatible
set encoding=utf-8

if v:lang=~"utf8$" || v:lang=~"UTF-8$"
        set fileencodings=utf-8
endif

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Plugin Instructions
" http://vimawesome.com/

call vundle#begin()
" Let Vundle manage itself.
" Plugin 'gmarik/Vundle.vim'

" Plugins
" Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
" Plugin 'bling/vim-airline'
" Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
" Plugin 'tpope/vim-sleuth'
" Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-git'
" Plugin 'tyru/open-browser.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'lervag/vimtex'
" Plugin 'davidhalter/jedi-vim'

" Color schemes
" Plugin 'tomasr/molokai'
" Plugin 'flazz/vim-colorschemes'
" Plugin 'altercation/vim-colors-solarized'
call vundle#end()

let &rtp = '~/.vim/bundle/vimtex,' . &rtp
let &rtp .= ',~/.vim/bundle/vimtex/after'

filetype plugin indent on

" Automatically indent when adding a curly bracket, etc.
set autoindent
set smartindent

" Tabs should be converted to a group of 4 spaces
" This is the official Python convention
" http://www.python.org/dev/peps/pep-0008
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

syntax enable

" Font.
if has('win32') || has('win64')
    " set guifont=Monaco:h16
    " http://jeffmilner.com/index.php/2005/07/30/windows-vista-fonts-now-available/
    set guifont=Ubuntu_Mono:h16:cANSI:qDRAFT
elseif has('unix')
    let &guifont="Ubuntu Mono 16"
endif

" Set color scheme I like it.
if has("gui_running")
       colorscheme desert
else
       colorscheme darkblue
endif

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=999

set number

" Show line number, cursor position
set ruler

" Show command autocomplete
set showcmd

set tw=72
set viminfo='20,\"50
set wmnu
set wrap
set wrapmargin=8
set ww=<,>,h,l

" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\                         " buffer number
set statusline+=%f\                             " filename
set statusline+=%h%m%r%w                        " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}]    " file type
set statusline+=%=                              " right align remainder
set statusline+=0x%-8B                          " character value
set statusline+=%-14(%l,%c%V%)                  " line, character
set statusline+=%<%P                            " file position

" To insert timestamp, press F3.
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" Search as you type.
set incsearch

" Ignore case when searching.
set ignorecase

" Show autocomplete menus.
set wildmenu

" Show editing mode
set showmode

" Error bells are displayed visually.
set visualbell

syntax on
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} setlocal textwidth=80

let g:user_emmet_mode='a'
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall
