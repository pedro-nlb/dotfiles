set number
set mouse=a
colorscheme jellybeans

nnoremap <F5> <Esc> :w <bar> :! pdflatex % && xdg-open %:t:r.pdf <CR>
inoremap <F5> <Esc> :w <bar> :! pdflatex % && xdg-open %:t:r.pdf <CR>
