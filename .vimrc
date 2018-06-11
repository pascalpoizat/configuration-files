" https://dougblack.io/words/a-good-vimrc.html#colors

" colors
syntax enable 
set termguicolors
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" tabs
set tabstop=4
set softtabstop=4
set expandtab

" UI
set number
set showcmd
set cursorline
filetype indent on	" indent info in ~/.vim/ident/<language>.vim
set wildmenu
set lazyredraw
set showmatch

" searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" movement
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

" leader shortcuts
let mapleader=","

" fzf
set rtp+=/usr/local/opt/fzf

