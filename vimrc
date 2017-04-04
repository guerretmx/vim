"Gotta be first
let mapleader = ","
set nocompatible

filetype off

" ============ Vim-Plug =============
call plug#begin('~/.vim/plugged')

" Plugins will go here (see next step)
" Be sure to replace 'Plugin' with 'Plug'

" Managing vim-plug
Plug 'junegunn/vim-plug'
" vim-colors-solarized
Plug 'altercation/vim-colors-solarized'
" molokai theme
Plug 'tomasr/molokai'
" vim airline
Plug 'bling/vim-airline'
" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Syntastic
"Once you’ve installed Syntastic, it should syntax highlight your errors by
"displaying little marks next to the offending lines:
Plug 'scrooloose/syntastic'
"After this step, you should be able to bring up a split pane view that 
"shows your functions, variables, and other identifiers by pressing \b:
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
"When CtrlP is installed, you can press Ctrl + P to bring up a list of files. 
Plug 'kien/ctrlp.vim'

" ----- Working with Git ----------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ------ Easy motion --------
Plug 'easymotion/vim-easymotion'
" ...... tpope/vim-surround ........
Plug 'tpope/vim-surround'
" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" NeoComplcache.vim
Plug 'Shougo/neocomplcache.vim'

" reedes/vim-pencil
" Rethinking Vim as a tool for writers
Plug 'reedes/vim-pencil'

" jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'

" tpope/vim-repeat
" If you've ever tried using the . command after a plugin map, you were likely
" disappointed to discover it only repeated the last native command inside
" that map, rather than the map as a whole. That disappointment ends today.
" Repeat.vim remaps . in a way that plugins can tap into it.
"
Plug 'tpope/vim-repeat'

" -------------- Color schemes
Plug 'flazz/vim-colorschemes'

" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
Plug 'godlygeek/tabular'

" for html
Plug 'mattn/emmet-vim'
call plug#end()

" ============ Finaliza Vim-Plug ===

" ========== General Settings =========
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on

" Toggle this to "light" for light colorscheme
set background=dark

"Uncomment the next line if your terminal is not configured for solarized 
"let g:solarized_termcolors=256

" Set the colorscheme
colorscheme solarized

"if has('gui_running')
"   colorscheme borland
"else
"   colorscheme borland
"endif

" ============ bling/vim-airline settings ============
" Always show statusbar

set laststatus=2
"Fancy arrow sinbols, requires a patched font
"to install a patched font, run over to
"   https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finnaly, uncoment the next line
let g:airline_powerline_fonts = 1
"
" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled=1

" ============= NerdTree =========================

filetype plugin indent on
" Open/close NERDTree Tabs wit \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on satartup
let g:nerdtree_tabs_open_on_console_startup = 0
" ========== Syntastic ==========
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ------ Easy motion ..................
" <Leader>f{char} to move to {char}
nmap <Leader>f <Plug>(easymotion-f)
" Gif config
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" ----------- Nerd Commenter -----------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" ---------------- https://github.com/Shougo/neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" ------------- https://github.com/reedes/vim-pencil
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
augroup END

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

let g:pencil#autoformat = 1      " 0=disable, 1=enable (def)
let g:pencil#map#suspend_af = 'K'   " default is no mapping
let g:pencil#textwidth = 74
let g:pencil#joinspaces = 0     " 0=one_space (def), 1=two_spaces
let g:pencil#cursorwrap = 1     " 0=disable, 1=enable (def)
let g:airline_section_x = '%{PencilMode()}'
let g:pencil#mode_indicators = {'hard': '␍', 'auto': 'ª', 'soft': '⤸', 'off': '',}
function! Prose()
  call pencil#init()

  " manual reformatting shortcuts
  nnoremap <buffer> <silent> Q gqap
  xnoremap <buffer> <silent> Q gq
  nnoremap <buffer> <silent> <leader>Q vapJgqap

  " force top correction on most recent misspelling
  nnoremap <buffer> <c-s> [s1z=<c-o>
  inoremap <buffer> <c-s> <c-g>u<Esc>[s1z=`]A<c-g>u

  " replace common punctuation
  iabbrev <buffer> -- –
  iabbrev <buffer> --- —
  iabbrev <buffer> << «
  iabbrev <buffer> >> »

  " open most folds
  setlocal foldlevel=6

  " replace typographical quotes (reedes/vim-textobj-quote)
  map <silent> <buffer> <leader>qc <Plug>ReplaceWithCurly
  map <silent> <buffer> <leader>qs <Plug>ReplaceWithStraight

  " highlight words (reedes/vim-wordy)
  noremap <silent> <buffer> <F8> :<C-u>NextWordy<cr>
  xnoremap <silent> <buffer> <F8> :<C-u>NextWordy<cr>
  inoremap <silent> <buffer> <F8> <C-o>:NextWordy<cr>

endfunction

" automatically initialize buffer by file type
autocmd FileType markdown,mkd,text call Prose()

" invoke manually by command for other file types
command! -nargs=0 Prose call Prose()
noremap <silent> <F7> :<C-u>PFormatToggle<cr>
inoremap <silent> <F7> <C-o>:PFormatToggle<cr>

" ---------------- tpope/vim-surround ---------------
"  Surround.vim is all about "surroundings": parentheses, brackets, quotes,
"  XML tags, and more. The plugin provides mappings to easily delete, change
"  and add such surroundings in pairs.
"
"  It's easiest to explain with examples. Press cs"' inside
"
""Hello world!"
"to change it to

"'Hello world!'
"Now press cs'<q> to change it to

"<q>Hello world!</q>
"To go full circle, press cst" to get

"Hello world!"
"To remove the delimiters entirely, press ds".
"
"Hello world!
"Now with the cursor on "Hello", press ysiw] (iw is a text object).
"
"[Hello] world!
"Let's make that braces and add some space (use } instead of { for no space):
"cs]{
"
"{ Hello  } world!
"Now wrap the entire line in parentheses with yssb or yss).
"
"({ Hello  } world!)
"Revert to the original text: ds{ds)
"
"Hello world!
"Emphasize hello: ysiw<em>
"
"<em>Hello</em> world!
"Finally, let's try out visual mode. Press a capital V (for linewise visual
"mode) followed by S<p class="important">.
"
"<p class="important">
"  <em>Hello</em> world!
"  </p>
"  This plugin is very powerful for HTML and XML editing, a niche which
"  currently seems underfilled in Vim land. (As opposed to HTML/XML inserting,
"  for which many plugins are available). Adding, changing, and removing pairs
"  of tags simultaneously is a breeze.
"
"  The . command will work with ds, cs, and yss if you install repeat.vim.}
"} })
""
""
"  "


" ---------------------- tpope/vim-repeat


" split navigations

nnoremap <C-L> :tabn<CR>
nnoremap <C-H> :tabp<CR>

" ------------ Tabular -------------
" :Tab \|
" :Tabular \:
