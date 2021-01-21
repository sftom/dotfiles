
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }
call plug#end()

syntax enable

set hidden
set number
set relativenumber
set background=dark
set mouse=a
set inccommand=split

colorscheme gruvbox

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>cc :!gcc %<cr>

nnoremap <C-p> :Files<cr>
nnoremap <C-f> :Ag<space>
nnoremap <C-o> :NERDTreeToggle<cr>

let g:ycm_global_ycm_extra_conf = '/home/sftom/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:python_support_python2_require = 0

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
