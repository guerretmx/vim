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
"Syntastic
"Once you’ve installed Syntastic, it should syntax highlight your errors by
"displaying little marks next to the offending lines:
Plug 'scrooloose/syntastic'


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
let g:nerdtree_tabs_open_on_console_startup = 1
" ========== Syntastic ==========
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


