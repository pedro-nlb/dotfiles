" tl;dr (see https://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless)
set nocompatible

" Enable filetype detection
filetype on
" Enable filetype-dependant plugins
filetype plugin on
" Enable filetype-dependant indentation
filetype indent on

" Turn hybrid line numbers on
set number relativenumber
set nu rnu

" Indentation with hard tabs and smartindent
set shiftwidth=2
set tabstop=2

" Disable error sound at the end of line etc
set noerrorbells

" Incremental and highlighted search
set incsearch
set hlsearch

" Options
"set wildmenu
"set showcmd

" Usability options
"set ignorecase
"set smartcase
"set ruler
"set confirm
"set cmdheight=2
"set number
"set display+=lastline

" Colors and themes
"colorscheme inkpot
"colorscheme jellybeans
"colorscheme onedark

" Key mappings
"nnoremap <CAPS> <Esc>

"nnoremap <F5> <Esc> :w <bar> :! pdflatex % <CR>
" Compile
nnoremap <F2> <Esc>:w<CR> :! latexmk -pdf -silent main.tex<CR>
inoremap <F2> <Esc>:w<CR> :! latexmk -pdf -silent main.tex<CR>
vnoremap <F2> <Esc>:w<CR> :! latexmk -pdf -silent main.tex<CR>
" Compile (verbose)
nnoremap <F3> <Esc>:w<CR> :! latexmk -pdf main.tex<CR>
inoremap <F3> <Esc>:w<CR> :! latexmk -pdf main.tex<CR>
vnoremap <F3> <Esc>:w<CR> :! latexmk -pdf main.tex<CR>
" Compile and open pdf
nnoremap <F5> <Esc>:w<CR>:! latexmk -pdf -silent main.tex<CR>:! xdg-open 2>/dev/null main.pdf &<CR>
inoremap <F5> <Esc>:w<CR>:! latexmk -pdf -silent main.tex<CR>:! xdg-open 2>/dev/null main.pdf &<CR>
vnoremap <F5> <Esc>:w<CR>:! latexmk -pdf -silent main.tex<CR>:! xdg-open 2>/dev/null main.pdf &<CR>
" Compile and open pdf on the tablet
nnoremap <F6> <Esc>:w<CR>:! latexmk -pdf -silent main.tex<CR>:! termux-open main.pdf &<CR>
inoremap <F6> <Esc>:w<CR>:! latexmk -pdf -silent main.tex<CR>:! termux-open main.pdf &<CR>
vnoremap <F6> <Esc>:w<CR>:! latexmk -pdf -silent main.tex<CR>:! termux-open main.pdf &<CR>
" Clear search result
nnoremap <C-L> :nohl<CR><C-L>
" Clean auxiliary files
nnoremap <F10> <Esc>:w<CR>:! latexmk -c<CR>
inoremap <F10> <Esc>:w<CR>:! latexmk -c<CR>
vnoremap <F10> <Esc>:w<CR>:! latexmk -c<CR>
