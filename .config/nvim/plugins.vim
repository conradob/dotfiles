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
Plug 'kassio/neoterm'
Plug 'jiangmiao/auto-pairs'

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

" js
Plug 'xabikos/vscode-javascript'

" c#
Plug 'omnisharp/omnisharp-vim'

" ruby and rails
Plug 'vim-ruby/vim-ruby'
Plug 'thoughtbot/vim-rspec'

" tools
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-dadbod'
" Plug 'wakatime/vim-wakatime'

call plug#end()
