"Features
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
set ruler
set confirm
set mouse=a
set cmdheight=2
set number
set display+=lastline

" Indentation options
set shiftwidth=4
set softtabstop=4

" Colors and themes
"colorscheme inkpot
"colorscheme jellybeans

" Key mappings
"nnoremap <F5> <Esc> :w <bar> :! pdflatex % <CR>
nnoremap <F5> <Esc> :w <bar> :! latexmk -pdf % && okular %:t:r.pdf & <CR>
"inoremap <F5> <Esc> :w <bar> :! pdflatex % <CR>
"inoremap <F5> <Esc> :w <bar> :! pdflatex % && okular %:t:r.pdf <CR>
nnoremap <C-L> :nohl<CR><C-L>
noremap j gj
noremap k gk
noremap <Up> gk
noremap <Down> gj

"call plug#begin()
"Plug 'lervag/vimtex'
"let g:tex_flavor='latex'
"let g:vimtex_view_method='okular'
"let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'
"call plug#end()
