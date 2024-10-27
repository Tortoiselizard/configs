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
"set relativenumber "Los numeros de la columna izquierda cambian en funcion la linea en donde est el cursor

"Plugins
call plug#begin('~/.vim/plugged')

" theme
Plug 'nanotech/jellybeans.vim'

" sintaxis
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'itchyny/lightline.vim' "Barra de [estado]

" file sistem
Plug 'preservim/nerdtree' "Para navegar pir el arbol de archivos desde vim

"typing
Plug 'jiangmiao/auto-pairs' "Cerrado de parentesis
Plug 'alvan/vim-closetag' "Cerrado de etiquetas HTML y React
Plug 'tpope/vim-surround' "Para encerrar un texto entre comillas, parentesis, etc

"IDE
Plug 'mhinz/vim-signify' "Para mostrar los cambios sin commit

"git
Plug 'tpope/vim-fugitive'

"Tree
Plug 'preservim/nerdtree'


call plug#end()

colorscheme jellybeans
let g:jellybeans_contrast_dark="hard"

" Lightlane
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
