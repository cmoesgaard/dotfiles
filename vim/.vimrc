    """"""""""""""""""""""""""""""""""""""""
" # Vundle
""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

" Bundles
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Rykka/riv.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'justinmk/vim-sneak'
Plugin 'wannesm/wmnusmv.vim'
Plugin 'burnettk/vim-angular'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'altercation/vim-colors-solarized'

""""""""""""""""""""""""""""""""""""""""
" # General stuff
""""""""""""""""""""""""""""""""""""""""
" Set shell to bash
set shell=/bin/bash

" Enable syntax highlighting
syntax enable

" Enable filetype plugins
filetype plugin indent on

" Spaces as tabs and tab widths
set expandtab
set shiftwidth=4
set softtabstop=4

" Show line numbers
set number 

" Font
set guifont=Inconsolata\ 10

" Disable backup stuff
set nobackup
set nowb
set noswapfile

" Enable wildmenu
set wildmenu

" Hide compiled files
set wildignore=*.o,*~

" Always show current position
set ruler

" Enable cursor line
set cursorline

" Limit syntax highlighting
let g:tex_conceal = ""
syntax sync minlines=256

""""""""""""""""""""""""""""""""""""""""
" # Airline
""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""
" # Color
""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized
let g:solarized_termcolors=16

""""""""""""""""""""""""""""""""""""""""
" # Key bindings
""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><F6> :make<CR>
" nnoremap <silent><F9> :RainbowParenthesesToggle<CR>
nnoremap <silent><F10> :NERDTreeFocus<CR>
nnoremap <silent><F11> :NERDTreeToggle<CR>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""""""""""""""""""""""""""""""""""""""""
" # Indentation options
""""""""""""""""""""""""""""""""""""""""
" Indentation settings for cindent
set cinoptions=l1,g0,(0,u0,U0
