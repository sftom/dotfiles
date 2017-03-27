" Size of GVim window
set lines=35 columns=99

" Don't display the menu or toolbar. Just the screen.
set guioptions-=m
set guioptions-=T

if has("gui_running")
    colorscheme desert
else
    colorscheme darkblue
endif

" Font.
if has('win32') || has('win64')
    " set guifont=Monaco:h16
    " http://jeffmilner.com/index.php/2005/07/30/windows-vista-fonts-now-available/
    set guifont=Ubuntu_Mono:h16:cANSI:qDRAFT
elseif has('unix')
    let &guifont="Ubuntu Mono 16"
endif
