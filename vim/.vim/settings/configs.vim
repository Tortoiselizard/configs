:vert diffsplit archivo2
set hidden
set nocompatible
set mouse=a
filetype plugin on
"set background=dark
set number
syntax enable
"set showcmd
set encoding=utf-8
"set showmatch
set laststatus=2
"set clipboard=unnamed
"set ruler
"set cursorline
"set numberwidth=1
set relativenumber "Los numeros de la columna izquierda cambian en funcion la linea en donde est el cursor

colorscheme jellybeans
"let g:jellybeans_contrast_dark="hard"
let NERDTreeShowHidden=1

" Cursor en línea cuando estás en modo inserción
if exists('&t_SI') && exists('&t_EI')
  let &t_SI = "\e[6 q"   " Cursor de línea vertical en modo Insert
  let &t_EI = "\e[2 q"   " Cursor de bloque en modo Normal
  let &t_SR = "\e[4 q"   " Cursor de subrayado en modo Replace
endif

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
