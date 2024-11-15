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
"set relativenumber "Los numeros de la columna izquierda cambian en funcion la linea en donde est el cursor
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim


colorscheme jellybeans
"let g:jellybeans_contrast_dark="hard"
let NERDTreeShowHidden=1

" Cursor en línea cuando estás en modo inserción
if &term =~ 'xterm'
  let &t_SI = "\e[6 q"
  let &t_EI = "\e[2 q"
endif

