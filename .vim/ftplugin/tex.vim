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
" Clean auxiliary files
nnoremap <F10> <Esc>:w<CR>:! latexmk -c<CR>
inoremap <F10> <Esc>:w<CR>:! latexmk -c<CR>
vnoremap <F10> <Esc>:w<CR>:! latexmk -c<CR>
