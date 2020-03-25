source ~/.config/nvim/plugins.vim

let mapleader = ','

" access system clipboard
set clipboard=unnamedplus

" Searching
set path+=**
set wildignore+=**/node_modules/**
set wildmenu
set ignorecase
set smartcase

"" clean highlight
map <silent> <Esc> :nohlsearch<CR>

" visual
filetype plugin indent on
set novb
set diffopt+=vertical
set signcolumn=yes
set tabstop=4
set shiftwidth=4
set expandtab
set noshowmode
set splitbelow
set splitright
set cursorline
set relativenumber
set number
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" close all other buffers
nmap <silent> <leader>bD :BufOnly<CR>
nmap <silent> <leader>bd :bd!<CR>

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Map :W to :w
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q

" move code blocks easier
vnoremap < <gv
vnoremap > >gv

if !exists('g:vscode')
    source ~/.config/nvim/plugins-cfg.vim
endif
