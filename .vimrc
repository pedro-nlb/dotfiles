" Features
set nocompatible
filetype indent plugin on
syntax on

" Options
set wildmenu
set showcmd
set hlsearch

" Usability options
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set confirm
set mouse=a
set cmdheight=2
set number

" Indentation options
set shiftwidth=4
set softtabstop=4
set expandtab

" Colors and themes
colorscheme jellybeans

" Key mappings
nnoremap <F5> <Esc> :w <bar> :! pdflatex % && xdg-open %:t:r.pdf <CR>
inoremap <F5> <Esc> :w <bar> :! pdflatex % && xdg-open %:t:r.pdf <CR>
nnoremap <C-L> :nohl<CR><C-L>
