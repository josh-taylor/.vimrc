syntax enable
colorscheme molokai


"----------General Settings---------"
set backspace=indent,eol,start                                        "Make backspaces behave like every other editor
let mapleader = ','

set number
set relativenumber

set guifont=Droid\ Sans\ Mono:h14


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
