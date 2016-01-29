syntax enable
colorscheme eddie


"----------General Settings---------"
set backspace=indent,eol,start                                        "Make backspaces behave like every other editor
let mapleader = ','

set number
set relativenumber

set guifont=Droid\ Sans\ Mono:h14

" Convert tabs to spaces
set expandtab

" Set the tab size
set shiftwidth=4
set softtabstop=4

" Auto-indent files
filetype plugin indent on

"Allows us to use aliases
set shellcmdflag=-ic


"----------Load CrtlP---------"
set runtimepath^=~/.vim/bundle/ctrlp.vim


"----------Search---------"
set hlsearch
set incsearch


"----------Mappings---------"

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>= gg=G<cr>


"----------Auto-Commands---------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
