" https://dougblack.io/words/a-good-vimrc.html#colors

" pathogen
" execute pathogen#infect()

" plug
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
call plug#end()

" colors
syntax enable 
set termguicolors
colorscheme nord

" fonts
if has("gui_running")
        set guifont=Fira\ Code\ iScript:h18
else
        " set the font using your terminal preferences (tested with iTerm2)
        set t_ZH=[3m
        set t_ZR=[23m
endif
highlight Comment cterm=italic

" tabs
set tabstop=4
set softtabstop=4
set expandtab

" UI
set number
set showcmd
set cursorline
filetype plugin indent on	" indent info in ~/.vim/ident/<language>.vim
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
let maplocalleader=","

" fzf
set rtp+=/usr/local/opt/fzf

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

