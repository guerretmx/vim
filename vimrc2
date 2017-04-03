" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

au BufNewFile,BufRead *.py :
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab|
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css :
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

set encoding=utf-8

call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tmhedberg/SimpylFold'
"Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic'
"Plug 'nvie/vim-flake8'
" Color schemes
Plug 'flazz/vim-colorschemes'

Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'easymotion/vim-easymotion'
" Plug 'klen/python-mode'
" Distraction-free writing in vim with goyo
Plug 'junegunn/goyo.vim'
" To use:   :Tab /| --alinea con respecto al caracter |
" Debo revisar mas este plugin. Esta bien interesante
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Rethinking Vim as a tool for writers
Plug 'reedes/vim-pencil'
" cierra parentesis, y cosas así
Plug 'Townk/vim-autoclose'
" for html
Plug 'mattn/emmet-vim'
" Perform all your vim insert mode completions with Tab
" Plug 'ervandew/supertab'
Plug 'davidhalter/jedi-vim'

" Configuring for react native

Plug 'mxw/vim-jsx'
Plug 'SirVer/ultisnips'

" Currently, es6 version of snippets is available in es6 branch only
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }

Plug 'honza/vim-snippets' "optional
" And a bunch of others!
"
" Check vim/plugged/vim-react-snippets/UltiSnips/javascript.snippets to see the full list.

call plug#end()

let mapleader=","

if has('gui_running')
   colorscheme borland
else
   colorscheme borland
endif
"call togglebg#map("<F5>")

" Splits
set splitbelow
set splitright

" split navigations

nnoremap <C-L> :tabn<CR>
nnoremap <C-H> :tabp<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


" NerdTree

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Vim-Fugitive
" fugitive git bindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push origin master<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

" Easy motion

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Vim markdown

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 6

" Goyo
map <C-g> :Goyo<CR>
map <C-o> :Goyo!<CR>

" Pencil

set nocompatible
filetype plugin on       " may already be in your .vimrc

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

nnoremap <silent> Q gqap
xnoremap <silent> Q gq
nnoremap <silent> <leader>Q vapJgqap

let g:pencil#textwidth = 74


" Emmet

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Type ("_" is the cursor position):
"
" html:5_
"
" Then type <c-y>, (Ctrly,), and you should see:
"
" <!DOCTYPE HTML>
" <html lang="en">
" <head>
"     <meta charset="UTF-8">
"         <title></title>
"         </head>
"         <body>
"             _
"             </body>
"             </html>"
"
"             More Tutorials
"             https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

" https://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
"let g:pymode_rope = 0

" Documentation
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'

"Linting
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
"let g:pymode_lint_write = 1

" Support virtualenv
"let g:pymode_virtualenv = 1

" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
"let g:pymode_folding = 0

" Use <leader>l to toggle display of whitespace
"nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif

let g:jedi#auto_initialization = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"

" Adding configuration for JSX
" Taking from https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

" Check vim/plugged/vim-react-snippets/UltiSnips/javascript.snippets to see the full list.
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
