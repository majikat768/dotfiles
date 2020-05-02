" line numbers
set number relativenumber

" status
set ruler

set novisualbell

filetype plugin indent on

set background=dark
syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set scrolloff=3

au BufNewFile,BufRead *.ejs set filetype=html


call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'kyoz/purify',{'rtp': 'vim'}
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

colorscheme gruvbox
