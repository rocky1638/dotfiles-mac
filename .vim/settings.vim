" GENERAL VIM SETTINGS

syntax on " enable syntax processing
let g:nord_italic=1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_diff_background = 1

if $THEME == "light"
  set background=light
else
  set background=dark
endif

colorscheme nord

" force true colors to be on
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

highlight Comment cterm=italic

set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2
set expandtab " use spaces instead of actual tabs
filetype plugin indent on " load filetype-specific indent files

set splitbelow
set splitright

set encoding=utf-8
set autoindent
set showcmd
set backspace=indent,eol,start
set ttyfast
set wrap
set textwidth=79
set formatoptions=qrn1

set number " show current line number normally
set noshowmode " hide the insert indicator at bottom
set noruler
set cursorline " highlight current line
set laststatus=2
set lazyredraw " optimization
set showmatch " bracket pair colorizer
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase
set smartcase
set history=1000
set undofile
set noswapfile
set undodir="~/.undo"
set keywordprg=:DD

set keywordprg=:DD
set tags=tags;/

let mapleader=","
