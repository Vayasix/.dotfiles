"*************************************************************
"" Basic Setup
"*************************************************************

" Load python3
let $PYENV_PATH = expand('~/.pyenv')
let g:python_host_prog = $PYENV_PATH . '/versions/neovim2/bin/python'
let g:python3_host_prog = $PYENV_PATH . '/versions/neovim3/bin/python'

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8


"Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

"----- Indentation options ----
" Indentation settings for using 2 spaces instead of tabs.
" This will be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=2
"set tabstop=2

" Map leader to ,
let mapleader=''

"Buffer
set hidden 

"Better command-line completion
set wildmenu 

"Show partial commands in the last line of the screen
set showcmd 

" Highlight searches (use <C-L> to temporarily turn off highlighting)
set hlsearch
set incsearch
set ignorecase
set smartcase

" Directories for swp files
set nobackup
set noswapfile

" 最後のカーソル位置を復元する
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif


"*************************************************************
"" Visual Settings
"*************************************************************
set t_Co=256
set cursorline
set mousemodel=popup

"Syntax highlight ON
syntax on 
set background=dark
colorscheme molokai
"colorscheme wolfpack
" colorscheme hybrid
"colorscheme monochrome
"colorscheme off

"### Solarized ###
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256

"Display the cursor position on the last line of the screen or in the status line of a window
set ruler
"Display line numbers on the left
set number

set autoindent

"Stop certain movements from always going to the first character of a line.
set nostartofline

"status bar
set laststatus=2

" Disable visualbell
set visualbell t_vb=
set noerrorbells "error message

"Enable use of the mouse for all modes
set mouse=a

" Copy/Paste/Cut
"set clipboard=unnamed,autoselect
"set clipboard=unnamedplus
if has('clipboard')
  if has('unnamedplus') " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

"Set the command window height to 2 lines, to avoid many cases of having to
"press <Enter> to continue
set cmdheight=2
