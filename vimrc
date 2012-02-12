set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.


set modelines=0

" change mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden          " open a new file with :e and just hide the old buffer
set nowrap          " don't wrap lines
set tabstop=4       "a tab is four spaces
set backspace=indent,eol,start
                    "allow backspacking over everything in insert mode
set autoindent      "always set autoindent
set copyindent      "copy the previos indentation on autoindenting
set number          "always show line numbers
set shiftwidth=4    "number of spaces to use for autoindenting
set shiftround      "multiple of shiftwidth when indenting with '<' and '>'
set showmatch       "show matching parenthesis
set ignorecase      "ignore case when searching
set smartcase       "ignore case if search pattern is all lowercase,
                    "case senstivie otherwise
set smarttab        "insert tabs on the start of a line according to
                    "shiftwidth not tabstop
set hlsearch        " highlight search terms
set incsearch       "show search matches as you type

set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set wildmenu
set wildmode=list:longest,full
set cursorline
set ttyfast
set ruler
set laststatus=2
"set relativenumber
set undofile

set history=1000	"remember more commands and search history
set undolevels=1000	"use many levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title		" change terminal's title
set visualbell		" don't beep
set noerrorbells	" don't beep

if &t_Co >= 256 || has("gui_running")
  colorscheme mustang
  "colorscheme lucius
endif

if &t_Co > 2 || has("gui_running")
	" switch syntax highlight on, when the terminal has colors
	syntax on
endif

set list
set listchars=tab:>·,trail:·,extends:#,nbsp:·

" autocmd filetype python set expandtab

" autocmd filetype html,xml set listchars-=tab:>.

set pastetoggle=<F2>

" set mouse=a

nnoremap ; :

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"nmap <silent> ,/ :nohlsearch<CR>

nnoremap <leader><space> :noh<cr>

cmap w!! w !sudo tee % >/dev/null 
" change current file to be opened as 'sudo' and write the file

nnoremap / /\v
vnoremap / /\v
set gdefault

nnoremap <tab> %
vnoremap <tab> %

set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

inoremap <up> <nop>
inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

au FocusLost * :wa

inoremap jj <ESC>

noremap <leader>w <C-w>v<C-w>l

if has('gui_running')
    set guifont=Inconsolata\ 9 " Consolas:h12? For Mac/Windows
endif

nnoremap <silent> <F8> :TlistToggle<CR>

" Specific settings for file types
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set softtabstop=2

"au BufRead,BufNewFile *.tmpl set filetype=mako "Am working with mako instead of cheetah
au BufRead,BufNewFile *.tmpl set filetype=mako "Am working with django instead of cheetah
au BufRead,BufNewFile *.html set filetype=jinja "Am working with django instead of cheetah

set guioptions-=T " No toolbar

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ line:%l\/%L\ col:%c%V\ pos:%o\ ascii:%b\ %P

"From sontek.net/turning-vim-into-a-modern-python-ide
let g:SuperTabDefaultCompletionType="context"

set completeopt=menuone,longest,preview