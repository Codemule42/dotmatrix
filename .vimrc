" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" " plugins under the ~/.vim/bundle directory
call pathogen#infect("~/.vimbundles")

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

syntax on
filetype plugin indent on

" Don't kill buffers, just hide them.
set hidden

" Don't make sounds.
set visualbell

set wildmenu
set wildmode=list:longest

set guifont=Menlo:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

augroup vimrc
  autocmd!
  autocmd GuiEnter * set guioptions-=T columns=120 lines=70 number
augroup END

let g:molokai_original = 0
colorscheme molokai

if has("gui_running")
   " set default size: 90x35
   set columns=90
   set lines=35
   " No menus and no toolbar
   set guioptions-=m
   set guioptions-=T
endif

set tabstop=2 " tab size = 2
set shiftwidth=2 " soft space = 2

" Don't make backup or swap files.
set nobackup
set noswapfile

