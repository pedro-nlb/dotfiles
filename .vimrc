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
set incsearch

" Indentation options
set shiftwidth=4
set softtabstop=4

" Colors and themes
"colorscheme inkpot
"colorscheme jellybeans

" Key mappings
"nnoremap <F5> <Esc> :w <bar> :! pdflatex % <CR>
" Compile
nnoremap <F2> <Esc>:w<CR> :! latexmk -pdf main.tex<CR>
inoremap <F2> <Esc>:w<CR> :! latexmk -pdf main.tex<CR>
vnoremap <F2> <Esc>:w<CR> :! latexmk -pdf main.tex<CR>
" Compile and open pdf
nnoremap <F5> <Esc>:w<CR>:! latexmk -pdf main.tex<CR>:! okular main.pdf &<CR>
inoremap <F5> <Esc>:w<CR>:! latexmk -pdf main.tex<CR>:! okular main.pdf &<CR>
vnoremap <F5> <Esc>:w<CR>:! latexmk -pdf main.tex<CR>:! okular main.pdf &<CR>
" Compile and open pdf on the tablet
nnoremap <F6> <Esc>:w<CR>:! latexmk -pdf main.tex<CR>:! termux-open main.pdf &<CR>
inoremap <F6> <Esc>:w<CR>:! latexmk -pdf main.tex<CR>:! termux-open main.pdf &<CR>
vnoremap <F6> <Esc>:w<CR>:! latexmk -pdf main.tex<CR>:! termux-open main.pdf &<CR>
" Clear search result
nnoremap <C-L> :nohl<CR><C-L>
" Clean auxiliary files
nnoremap <F10> <Esc>:w<CR>:! latexmk -c<CR>
" Special keys
noremap j gj
noremap k gk
noremap <Up> gk
noremap <Down> gj
"inoremap ö {
"inoremap ä }
"inoremap ü ^
"inoremap # \
"inoremap § # 
"inoremap ö begin
"inoremap ä end
"inoremap ü tikzcd
"inoremap ’ #
"inoremap ø }
"inoremap → {
"inoremap þ ^
inoremap ¹ `
inoremap ` \
inoremap ¬ \
inoremap @ ^
inoremap ~ _
inoremap £ @
inoremap € ~

au BufReadPost *.tex set syntax=tex
