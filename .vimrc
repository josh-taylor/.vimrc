syntax enable
colorscheme eddie

set nocompatible                                                      "Makes vim a lot more useful

"----------Vundle---------"

"Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tobyS/vmustache'                        "Mustache engine

Plugin 'SirVer/ultisnips'                       "Snippets engine

Plugin 'tobyS/pdv'                              "PHPDocumentor plugin


call vundle#end()
filetype plugin indent on

"----------PhpDocumentor For Vim---------"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
inoremap <F2> :call pdv#DocumentWithSnip()<CR>


"----------General Settings---------"
set backspace=indent,eol,start                                        "Make backspaces behave like every other editor
let mapleader = ','

set number
set relativenumber

"----------Visuals---------"
set guifont=Droid\ Sans\ Mono:h14

set linespace=12

" Remove scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"----------Formatting---------"
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

if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/node_modules/*

"----------Search---------"
set hlsearch
set incsearch


"----------Split Management---------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

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
