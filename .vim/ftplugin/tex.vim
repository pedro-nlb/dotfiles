" Write and compile
nnoremap __ <Esc>:w<CR> :! latexmk -pdf main.tex<CR>
" Write, compile and open pdf
nnoremap _+ <Esc>:w<CR>:! latexmk -pdf main.tex<CR>:! xdg-open 2>/dev/null main.pdf &<CR>
