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
" Compile
nnoremap <F2> <Esc> :w <bar> :! latexmk -pdf main.tex & <CR>
inoremap <F2> <Esc> :w <bar> :! latexmk -pdf main.tex & <CR>
vnoremap <F2> <Esc> :w <bar> :! latexmk -pdf main.tex & <CR>
" Compile and open pdf
nnoremap <F5> <Esc> :w <bar> :! latexmk -pdf main.tex && okular main.pdf & <CR>
inoremap <F5> <Esc> :w <bar> :! latexmk -pdf main.tex && okular main.pdf & <CR>
vnoremap <F5> <Esc> :w <bar> :! latexmk -pdf main.tex && okular main.pdf & <CR>
"inoremap <F5> <Esc> :w <bar> :! pdflatex % <CR>
"inoremap <F5> <Esc> :w <bar> :! pdflatex % && okular %:t:r.pdf <CR>
nnoremap <C-L> :nohl<CR><C-L>
noremap j gj
noremap k gk
noremap <Up> gk
noremap <Down> gj
inoremap ö {
inoremap ä }
inoremap ü ^
inoremap # \
inoremap ’ #
inoremap ø [
inoremap þ ]

au BufReadPost *.tex set syntax=tex
