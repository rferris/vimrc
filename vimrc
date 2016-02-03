set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ------------
" Other VUndle plugins here...
Plugin 'github-theme'
Plugin 'The-NERD-tree'

" ------------ 
call vundle#end()
filetype plugin indent on 
" -------------

syntax on
set expandtab
set tabstop=4
set shiftwidth=4
colorscheme github

"----------- NERD tree
" Start automatically
"autocmd vimenter * NERDTree
" Start automatically if nothing else
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Control-n to toggle
map <C-n> :NERDTreeToggle<CR>
" Close window if only NERDTree is open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"---------------------
" Backup and swap
set backup
set backupdir=~/.vim/private/bup
set dir=~/.vim/private/swp
