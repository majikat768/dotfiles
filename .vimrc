call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
Plug 'kyoz/purify',{'rtp':'vim'}
Plug 'drewtempelmeyer/palenight.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

call plug#end()

" Enable syntax highlighting
syntax on
" Set background to dark by default
set background=dark

colorscheme dracula
" colorscheme monokai
" colorscheme solarized

" smarter autoindent
filetype plugin indent on

" Use spaces instead of tabs, with width of 4
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" search
set ignorecase
set smartcase
set incsearch
set hlsearch

" show matching parens
set showmatch

set backspace=indent,eol,start

" Show both absolute and relative line numbers
set number          " absolute line numbers
set relativenumber  " relative line numbers

" Detailed status line at the bottom
set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}]\ [POS=%l,%v]\ [Line:%L]\ [%p%%]\ [fileformat=%{&fileformat}]

" Disable all beep and visual bell alerts
set noerrorbells
set novisualbell
set t_vb=
set belloff=all
