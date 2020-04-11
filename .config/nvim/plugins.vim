call plug#begin()

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" utils
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/BufOnly.vim'
Plug 'chrisbra/Recover.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ui
Plug 'romainl/apprentice'
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jeffkreeftmeijer/vim-numbertoggle', { 'on': [] }
Plug 'Yggdroot/indentLine'
Plug 'elzr/vim-json'

" syntax
Plug 'sheerun/vim-polyglot'
" Plug 'pangloss/vim-javascript'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'leafgarland/typescript-vim'

" c#
Plug 'omnisharp/omnisharp-vim'

" tools
Plug 'vimwiki/vimwiki'

call plug#end()
