set mouse=a
set background=dark
set number
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set laststatus=2
set clipboard=unnamed
set ruler
set cursorline
set numberwidth=1
set relativenumber "Los numeros de la columna izquierda cambian en funcion la linea en donde est el cursor

"Plugins
call plug#begin('~/.vim/plugged')

" theme
Plug 'nanotech/jellybeans.vim'

" status bar
Plug 'itchyny/lightline.vim' "Barra de estado

" typing
Plug 'jiangmiao/auto-pairs' "Cerrado de parentesis

"IDE
Plug 'mhinz/vim-signify' "Para mostrar los cambios sin commit

call plug#end()

colorscheme jellybeans
let g:jellybeans_contrast_dark="hard"
