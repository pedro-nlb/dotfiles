" tl;dr (see https://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless)
set nocompatible

" Enable filetype detection
filetype on

" Enable filetype-dependent plugins
filetype plugin on

" Enable filetype-dependent indentation
filetype indent on

" Indentation with hard tabs and smartindent
set shiftwidth=2
set tabstop=2

" Turn hybrid line numbers on
set number relativenumber
set nu rnu

" Show partial commands in the last line of the screen
set showcmd

" Show the current column in the status bar
set ruler

" Show as much as possible of the last line (no @'s)
set display+=lastline

" Incremental and highlighted search
set incsearch
set hlsearch

" Case insensitive search unless some uppercase letter is used
set ignorecase
set smartcase

" Show completion possibilities in the command line
set wildmenu

" Avoid having to go all the way up to <ESC>
inoremap ;; <ESC>

" Disable error sound on error messages
set noerrorbells

" Replace error sound by flash when <ESC> in normal mode
set visualbell

" Replace flash by nothing
set t_vb=


" Key mappings

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

colorscheme jellybeans
hi Normal ctermbg=NONE
highlight clear LineNr
highlight LineNr ctermfg=DarkGray
