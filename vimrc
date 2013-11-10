
syntax enable

set number
set shiftwidth=2
set tabstop=2
set background=dark
set ruler
set expandtab
filetype plugin indent on     " required!

colorscheme solarized

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required! 
Bundle 'gmarik/vundle'
Bundle 'terryma/vim-multiple-cursors.git'



