if v:lang=~"utf8$" || v:lang=~"UTF-8$"
        set fileencodings=utf-8
endif

set ai
set autoindent
set background=dark
set backup
set bs=indent,eol,start
set history=50
set linebreak
set nocompatible
set nocp
set nolist
set number
set ruler
set textwidth=0
set viminfo='20,\"50
set wrap
set wrapmargin=8

syntax on
filetype on
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} setlocal textwidth=80
