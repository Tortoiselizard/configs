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
" Plug 'editorconfig/editorconfig-vim' Para indicar el formato de tu archivo, como el espacio al usar tab
"Plug 'junegunn/fzf' Para buscar archivos y textos que esten dentro de los archivos
"Plug 'terryma/vim-multiple-cursors' Para editar el archivo con varios cursores al mismo tiempo
"Plug 'easymotion/vim-easymotion' Para buscar rapidamente en un archivo una cadena de caracteres que le indiques.
"Plug 'yggdroot/indentline' "Para marcar la indentacion de funciones en tu archivo de codigo
"Plug 'scrooloose/nerdcommenter' Para comentar rañidamente una linea de codigo.

"git
Plug 'tpope/vim-fugitive' "Para usar git desde vim

"Tree
Plug 'preservim/nerdtree'

"tmux
"Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator' 

"test
"Plug 'tyewang/vimux-jest-test' Para moverte entre diferentes paneles
"Plug 'janko-m/vim-test'

"autocomplete
"Plug 'sirver/ultisnips' Para escribir código abreviado
"Plug 'neoclide/coc.nvim', {'branch': 'release'} Para agregar autocompletado inteligent

"others
"Plug 'tpope/vim-repeat' Para poder repetir rapidamente acciones que no sean
"nativas de vim

call plug#end()

