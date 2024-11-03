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

