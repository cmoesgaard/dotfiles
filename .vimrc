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
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/a.vim'
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

""""""""""""""""""""""""""""""""""""""""
" # General stuff
""""""""""""""""""""""""""""""""""""""""
" Set shell to bash
set shell=/bin/bash

" Enable syntax highlighting
syntax on

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

" YCM config
" let g:ycm_confirm_extra_conf = 0

" Limit syntax highlighting
let g:tex_conceal = ""
syntax sync minlines=256

""""""""""""""""""""""""""""""""""""""""
" # Ultisnips/YCM compatability
""""""""""""""""""""""""""""""""""""""""
let g:ycm_key_list_previous_completion=['<Up>']

let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

""""""""""""""""""""""""""""""""""""""""
" # Airline
""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""
" # Color
""""""""""""""""""""""""""""""""""""""""
colorscheme jellybeans
" set background=dark
" hi Normal ctermbg=none
" hi NonText ctermbg=none

""""""""""""""""""""""""""""""""""""""""
" # Key bindings
""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><F3> :A<CR>
nnoremap <silent><F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <silent><F6> :make<CR>
nnoremap <silent><F7> :!./a.out<CR>
" nnoremap <silent><F9> :RainbowParenthesesToggle<CR>
nnoremap <silent><F10> :NERDTreeFocus<CR>
nnoremap <silent><F11> :NERDTreeToggle<CR>
nnoremap <silent><F12> :TagbarToggle<CR>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""""""""""""""""""""""""""""""""""""""""
" # Indentation options
""""""""""""""""""""""""""""""""""""""""
" Indentation settings for cindent
set cinoptions=l1,g0,(0,u0,U0

""""""""""""""""""""""""""""""""""""""""
" # cwb.vim
""""""""""""""""""""""""""""""""""""""""
" let g:CWBPath = "/home/knas/cwb/xccscwb.x86-linux"
" au FileType cwb nnoremap <silent><F5> :OpenInCWB <CR>
" au FileType cwb nnoremap <silent><F6> :OpenAndRunCommandInCWB <CR>

