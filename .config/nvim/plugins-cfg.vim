call plug#load('vim-numbertoggle')

" theme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
filetype plugin on
syntax on
set termguicolors
function! MyHighlights() abort
    hi Pmenu ctermbg=238 ctermfg=250 cterm=NONE guibg=#1c1c1c guifg=#bcbcbc gui=NONE
    hi CocErrorSign ctermfg=Red guibg=#1c1c1c guifg=#ff0000
    hi CocWarningSign ctermfg=Brown guibg=#1c1c1c guifg=#ff922b
    hi CocInfoSign ctermfg=Yellow guibg=#1c1c1c guifg=#fab005
    hi CocHintSign ctermfg=Blue guibg=#1c1c1c guifg=#15aabf
    hi GitAddedSign guibg=#1c1c1c guifg=#87AF87
    hi GitRemovedSign guibg=#1c1c1c guifg=#ff4040
    hi GitChangedSign guibg=#1c1c1c guifg=#a132f0
    hi Function ctermbg=NONE ctermfg=187 cterm=NONE guibg=NONE guifg=#d7d787 gui=NONE
    hi MatchParen ctermbg=234 ctermfg=187 cterm=NONE guibg=#1c1c1c guifg=#d7d787 gui=NONE
    hi VimwikiHeader1 guifg=#FF8700
    hi VimwikiHeader2 guifg=#C66800
    hi VimwikiHeader3 guifg=#9B5200
    hi VimwikiHeader4 guifg=#794000
    hi VimwikiHeader5 guifg=#794000
    hi VimwikiHeader6 guifg=#794000
    hi CocCodeLens guifg=#74b49b
    hi link jsxPunct Normal
    hi link jsxBraces Normal
    hi link jsxTag Normal
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END
colorscheme apprentice

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:airline_section_c='%t'
let g:airline_left_sep="\uE0C6"
let g:airline_right_sep="\uE0C7"
let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }

" window zoom
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=

" terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <silent> <leader>te :vs<Bar>:te<CR>
tnoremap <silent> <leader>Te :10split<Bar>:te<CR>
noremap <silent> <leader>te :vs<Bar>:te<CR>
noremap <silent> <leader>Te :10split<Bar>:te<CR>

" Resize Panels with Shift
set lazyredraw
set noequalalways
nnoremap <S-Down> <c-w>+
nnoremap <S-Up> <c-w>-
nnoremap <S-Left> <c-w><
nnoremap <S-Right> <c-w>>

" Keep undo history across sessions by storing it in a file
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

"" Moving tab
nmap <leader>tt :+tabm<CR>
nmap <leader>tT :-tabm<CR>

" nerdtree
set encoding=UTF-8
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
nmap <silent> <leader>1 :NERDTreeToggle<CR>
nmap <silent> <leader>2 :NERDTreeFind<CR>

" toggle invisible characters
set invlist
set list
set listchars=tab:¦\ ,trail:·,extends:❯,precedes:❮

" startify
nmap <leader>s :Startify<CR>
nmap <leader>S :SSave!<CR>
let g:startify_session_dir = '~/.vim/session'
let g:startify_session_persistence = 0
let g:startify_change_to_dir = 0
let g:startify_custom_header = [
    \ '        .-"-.',
    \ '      _/.-.-.\_',
    \ '     ( ( o o ) )',
    \ '      |/  "  \|     have fun ...',
    \ '       \ ._. /',
    \ '       /`"""`\',
    \ '      /       \'
    \]
let g:startify_session_before_save = [
    \ 'silent! tabdo NERDTreeClose'
    \ ]

" fzf
nnoremap <c-p> :GFiles<cr>
" nnoremap <c-P> :Buffers<cr>

" comenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" identline
let g:indentLine_char = '┊'
let g:indentLine_leadingSpaceEnabled='1'
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'startify', 'tagbar', 'vimfiler', 'markdown', 'minimap', 'vimwiki']
let g:indentLine_bufTypeExclude = ['help', 'nerdtree', 'startify', 'tagbar', 'vimfiler', 'markdown', 'minimap', 'vimwiki']
let g:indentLine_bufNameExclude = ['help', 'NERD_tree.*', 'startify', 'tagbar', 'vimfiler', 'markdown', 'minimap', 'vimwiki']
let g:indentLine_leadingSpaceChar='⋅'
let g:indentLine_noConcealCursor=1

let g:vim_markdown_folding_disabled=1

" formater
let g:prettier#autoformat = 0
if filereadable(findfile('.prettierrc', '.;'))
  autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx call CocAction('runCommand', 'prettier.formatFile')
endif
nmap <leader>Pd :autocmd! BufWritePre<CR>
nmap <leader>Pe :autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx call CocAction('runCommand', 'prettier.formatFile')<CR>

" coc
let g:coc_snippet_next = '<tab>'
let g:coc_global_extensions = [
\ 'coc-cspell-dicts',
\ 'coc-css',
\ 'coc-eslint',
\ 'coc-git',
\ 'coc-highlight',
\ 'coc-html',
\ 'coc-jest',
\ 'coc-json',
\ 'coc-lists',
\ 'coc-marketplace',
\ 'coc-omnisharp',
\ 'coc-prettier',
\ 'coc-snippets',
\ 'coc-solargraph',
\ 'coc-spell-checker',
\ 'coc-sql',
\ 'coc-todolist',
\ 'coc-tslint-plugin',
\ 'coc-tsserver',
\ 'coc-xml',
\ 'coc-yaml',
\ 'coc-yank'
\ ]

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
autocmd CursorHold * silent     call        CocActionAsync('highlight')
autocmd User CocJumpPlaceholder call        CocActionAsync('showSignatureHelp')
command! -nargs=0 Prettier      :CocCommand prettier.formatFile
command! -nargs=0 Format        :call       CocAction('format')
command! -nargs=0 OR            :call       CocAction('runCommand', 'editor.action.organizeImport')
command! -nargs=0 SIG           :call       CocActionAsync('showSignatureHelp')
command! -nargs=? Fold          :call       CocAction('fold', <f-args>)
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>qf <Plug>(coc-fix-current)
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> <leader>qR :CocRestart<cr>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gh <Plug>(coc-doHover)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
xmap <leader>a <Plug>(coc-codeaction-selected)
xmap <leader>f <Plug>(coc-format-selected)
vmap <leader>f <Plug>(coc-format-selected)

let g:OmniSharp_server_stdio = 1

" coc-jest
command! -nargs=0 Jest        :call CocAction('runCommand', 'jest.projectTest')
command! -nargs=0 JestCurrent :call CocAction('runCommand', 'jest.fileTest', ['%'])
command! JestInit             :call CocAction('runCommand', 'jest.init')
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

" coc-git
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
nmap gu <Plug>(coc-git-chunkUndo)
" stage chunk at the current position
nmap <silent> gS :CocCommand git.chunkStage<cr>
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<CR>

" Vimwiki
let g:vimwiki_list = [{'path': '~/Documents/Wiki/',
    \ 'syntax': 'markdown', 'ext': '.md'}]

" fugitive
nnoremap <leader>gd :Gdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" rspec
map <Leader>rst :call RunCurrentSpecFile()<CR>
map <Leader>rss :call RunNearestSpec()<CR>
map <Leader>rsl :call RunLastSpec()<CR>
map <Leader>rsa :call RunAllSpecs()<CR>

let g:rspec_command = "vertical T bundle exec rspec {spec}"
