syntax on
set cmdheight=2
set hlsearch
set lazyredraw
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set cursorline
set cc=80

" auto indent
set tabstop=2
set shiftwidth=2
set smartindent
set smarttab
set expandtab
set wrap

" column 80 marker
set colorcolumn=80

set number
" <Ctrl-l> redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

" theme
source $HOME/.tomorrow-theme/vim/colors/Tomorrow-Night-Eighties.vim

" mouse
set mouse=a
if has('mouse_sgr')
	set ttymouse=sgr
endif
