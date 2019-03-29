"#######################################################################
"
"                   Neovim Settings
"                    by Travs Riggs
"
"#######################################################################


"-----------------------------------------------------------------------
" To use my current vimrc for Neovim:
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
"-----------------------------------------------------------------------

"#######################################################################
"           General

" Enable use of the mouse for all modes
set mouse=a

" Attempt to determine the type of a file based on its name and possibly
" its contents. Use this to allow intelligent auto-indenting for each
" filetype, and for plugins that are filetype specific.
filetype indent plugin on

" Better command-line completion
set wildmenu

" Tabs & Spacing
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" Allow switching between unsaved buffers
set hidden

" Searching
set ignorecase
set smartcase

syntax on

"#######################################################################
"               Editor Display

" set t_Co=256
" set termguicolors

" Add Comment and Max Line column stripes
if (exists('+colorcolumn'))
  set colorcolumn=73,100
  highlight ColorColumn ctermbg=black
endif

"--------------------------------------------------------------
"   Highlight the current cursor line with an underline
set cursorline
" Highlight it with a black background
hi CursorLine   cterm=NONE ctermbg=black guibg=black

"--------------------------------------------------------------
" Change background while in insert mode to black
"au InsertEnter * hi Normal ctermbg=black guibg=black
"au InsertLeave * hi Normal ctermbg=None guibg=None

"--------------------------------------------------------------
" Change background of current line while in insert mode to black
" autocmd InsertEnter * highlight CursorLine ctermbg=black guibg=black
" autocmd InsertLeave * highlight CursorLine ctermbg=NONE guibg=NONE
" autocmd InsertLeave * set cursorline

" Show Line Numbers
set number

"#######################################################################
"               Navigation

" For Splits
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"#######################################################################
"#######################################################################
"               Plugins
call plug#begin('~/.local/share/nvim/plugged')

" General
Plug 'tpope/vim-sensible'

" NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Git
Plug 'airblade/vim-gitgutter'

" Comments
Plug 'tpope/vim-commentary'

" Linting
Plug 'neomake/neomake'
" Plug 'w0rp/ale' " For realtime linting

" Syntax
Plug 'sheerun/vim-polyglot'

" Whitespace
Plug 'ntpeters/vim-better-whitespace'

" Window Management
Plug 'rbgrouleff/bclose.vim'
Plug 'vim-scripts/ZoomWin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Search
Plug 'mileszs/ack.vim'

" Themes
Plug 'altercation/vim-colors-solarized'

call plug#end()

"#######################################################################
"               Plugin Configurations
"#######################################################################

"--------------------------------------------------------------
"   NERDTree Plugin Configuration
" Hide .pyc files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
map <Leader>1 :NERDTreeToggle<CR>

" Start nerdtree automatically
" autocmd vimenter * NERDTree

" Open Nerdtree tab on startup only if a directory is given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close vim if nerdtree is only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"--------------------------------------------------------------
"   Ack Plugin
" Use Silver Searcher if available
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

"--------------------------------------------------------------
"   Airline
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1

"--------------------------------------------------------------
"   Neomake
" When writing a buffer (no delay).
call neomake#configure#automake('w')
let g:neomake_open_list = 2

"--------------------------------------------------------------
"   Polyglot Syntax Highlighting
let g:python_highlight_space_errors = 0
let g:python_highlight_all = 1

"--------------------------------------------------------------
"   Better Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
" Don't show trailing white space on current line
let g:current_line_whitespace_disabled_hard=1
let g:current_line_whitespace_disabled_soft=1

