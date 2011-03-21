runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
endif

syntax on
filetype plugin indent on

set visualbell

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
