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

" Clear search result
nnoremap <C-L> :nohl<CR><C-L>

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

" Colors and backgrounds
colorscheme jellybeans
hi Normal ctermbg=NONE
highlight clear LineNr
highlight LineNr ctermfg=DarkGray
highlight NonText ctermbg=NONE

