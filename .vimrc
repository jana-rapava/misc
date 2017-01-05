let $BASH_ENV = "~/.bash_aliases"
colorscheme elflord
set nocompatible
syntax on
set ruler
set number
set tabpagemax=100
set showtabline=2
set showcmd
"set showmatch
"set mouse=a
set smartcase
"set smartindent
"set smarttab
set lazyredraw
set ttyfast
set noerrorbells
set hidden
set nostartofline
set title

" quickfix
map <C-n> :cn<CR>
map <C-m> :cp<CR>

inoremap jj <Esc>

" Remove any trailing whitespace that is in the file
" autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Cool tab completion stuff
"set wildmenu
"set wildmode=list:longest,full

if has("autocmd")
  filetype plugin indent on
endif
set tabstop=4
set shiftwidth=4
set expandtab

autocmd BufNewFile,BufRead *.ecpp   set syntax=c
"autocmd BufWinLeave *.* mkview!
"autocmd BufWinEnter *.* silent loadview
