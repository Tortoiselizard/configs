"-------------------------------------------------------GENERAL CONFIGURATIONS---------------------------------
set nocp  "Desactiva compatibilidad con Vi
set hidden  "Permite cambiar entre buffers con modificaciones sin tener que guardar previamente

syntax enable   "Activa el resaltado de sintaxis

set textwidth=0   "Desactiva el límite de texto por línea

set number  "Activa la columna de números
set relativenumber			"Activa la columna de números de forma relativa al cursor
set numberwidth=1     "Establece 1 como valor mínico para la columna de números
set cursorline      "Resalta la línea completa donde se encuentra el cursor

set mouse=a				"Activa el mouse

set laststatus=2			"Activa la línea de status todo el tiempo

set encoding=utf-8			"Especifica la codificación de caracteres del archivo

set showmatch       "Cuando el cursor está sobre un paréntesis, corchete o llave, resalta el par correspondiente

filetype plugin indent on		"Activa la detección de tipos de archivo (.js, .py, etc) y asigna los plugins e indentación correspondientes

"Cambiar el tiempo que Vim espera por comandos
set timeoutlen=500        "Reduce el tiempo de espera para mapeos a 0.2 seg

"Cursor
if exists('&t_SI') && exists('&t_EI')
  let &t_SI = "\e[6 q"   		"Cursor de línea vertical en modo Insert
  let &t_EI = "\e[2 q"   		"Cursor de bloque en modo Normal
  let &t_SR = "\e[4 q"   		"Cursor de subrayado en modo Replace
endif

"Resaltado de coincidencias
set hlsearch "Activa el resaltado de búsqueda
nnoremap <silent> <Esc> :let @/ = ""<CR>

"-------------------------------------------------Plugins --------------------------------------------
call plug#begin('~/.vim/plugged')

"Sintaxis
Plug 'sheerun/vim-polyglot'		"Biblioteca de lenguajes de programación para resaltado de sintaxys, indentación, etc

"Satus bar
Plug 'itchyny/lightline.vim'		"Tema de la barra de estado

"Theme
Plug 'nanotech/jellybeans.vim'		"Tema de Vim
Plug 'morhetz/gruvbox'		"Tema de Vim
Plug 'tortoiselizard/matrix.vim'		"Tema de Vim

"Tree
Plug 'scrooloose/nerdtree'		"Habilita el explorador de sistemas NERTree
Plug 'Xuyuanp/nerdtree-git-plugin'		"Habilita el marcado de git en archivos sin commit con el explorador de sistemas NERTree

"Typing
Plug 'jiangmiao/auto-pairs'		"Cerrado de parentesis, corchetes, etc
Plug 'alvan/vim-closetag'		"Cerrado de etiquetas HTML y React
Plug 'tpope/vim-surround'		"Para encerrar un texto entre comillas, parentesis, etc

"Autocomlete
Plug 'neoclide/coc.nvim', {'branch': 'release'}    "Agrega autocompletado semejante al de vscode
Plug 'habamax/vim-godot'        "Para resaltar la sintaxis de Godot

"IDE
Plug 'editorconfig/editorconfig-vim'    "Para hacer configuraciones básicas del archivo (tabulación, espaciado, etc)
Plug 'junegunn/fzf.vim'     "Para integrar fzf con vim
Plug 'junegunn/fzf'     "Para integrar fzf con vim
Plug 'terryma/vim-multiple-cursors'     "Para tener varios cursores
Plug 'easymotion/vim-easymotion'      "Para hacer búsquedas de texto rápidas y visuales en el archivo actual
Plug 'mhinz/vim-signify'		"Para mostrar los cambios sin commit
Plug 'yggdroot/indentline'		"Para mostrar la indentación en funciones o bloques de código
Plug 'scrooloose/nerdcommenter'		"Para commentar código

"Debugger
Plug 'puremourning/vimspector'		"Para usar el depurador para nodejs

"Linter
"Plug 'neoclide/coc.nvim', {'branch': 'release'}    "Agrega autocompletado semejante al de vscode

"Git
Plug 'tpope/vim-fugitive'		"Para usar git desde Vim

call plug#end()

"-------------------------------------------PLUGINS CONFIGURATIONS---------------------------------------

"Theme
colorscheme gruvbox       "Para seleccionar el theme de vim
set background=dark       "Para usar la versión dark
highlight Search ctermbg=yellow ctermfg=black guibg=yellow guifg=black

"NERTree
let NERDTreeShowHidden = 1    "Permite que se muestren archivos ocultos 

"Lightlane
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

"fzf
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

"coc
"Activa el resaltado de errores en tiempo real
set signcolumn=yes
" Auto-fix with ESLint on save for JS/TS files
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx :CocCommand eslint.executeAutofix

"---------------------------------------------------------------Mapps--------------------------------------------------

" Mapear Ctrl + j para moverse a la ventana inferior
nnoremap <C-j> <C-w>j
" Mapear Ctrl + k para moverse a la ventana superior
nnoremap <C-k> <C-w>k
" Mapear Ctrl + h para moverse a la ventana izquierda
nnoremap <C-h> <C-w>h
" Mapear Ctrl + l para moverse a la ventana derecha
nnoremap <C-l> <C-w>l

let mapleader = " " "Establece la barra espaciadora como tecla lider

" Lista buffers y pide número
nnoremap <leader>bl :ls<CR>:b<Space>
" Buffer anterior (como :bp)
nnoremap <leader>bp :b#<CR>
" Siguiente buffer (Tab)
nnoremap <Tab> :bnext<CR>
" Anterior buffer (Shift + Tab)
nnoremap <S-Tab> :bprevious<CR>
" Moverte al buffer n
nnoremap <leader>b :buffer<Space>
" Eliminar buffer sin cerrar la ventana
nnoremap <leader>bd :bdelete<CR>

"------------------nerdtree

"Abre/cierra NERDTree con <leader>n
nnoremap <leader>no :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

"------------------fzf.vim

"Ejecuta :Files con <leader>findf
nnoremap <leader>ff :Files<CR>
"Ejecuta :Rg con <leader>findt
nnoremap <leader>ft :Rg<CR>

"------------------coc.nvim

" Muestra las sugerencias de autocompletado
inoremap <silent><expr> <C-k> coc#refresh()

" Usa <cr> (Enter) para confirmar la selección...
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Ir a la definición/declaración/implementación/referencias
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Renombrar el símbolo bajo el cursor
nmap <leader>rn <Plug>(coc-rename)

" Mostrar la documentación flotante al pasar el cursor (hover)
nmap <silent> K :call CocAction('doHover')<CR>

" Mostrar errores/advertencias en la lista de ubicación
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Corregir errores de código (Quickfix/Code Action)

" Resaltar todas las referencias de la palabra bajo el cursor
xmap <silent> lh <Plug>(coc-highlight)
nmap <silent> lh <Plug>(coc-highlight)

" Comando para instalar extensiones de Coc
command! -nargs=0 CocInstall :call coc#util#install()

" Configuración para coc-eslint
" Es importante configurar esto para que coc-eslint funcione correctamente
let g:coc_global_extensions = ['coc-eslint', 'coc-json', 'coc-html', 'coc-css', 'coc-tsserver']

"-----------------------vim-node-inspect

"nnoremap <silent><leader>dd :NodeInspectStart<cr>
"nnoremap <silent><leader>dr :NodeInspectRun<cr>
"nnoremap <silent><leader>dc :NodeInspectConnect("127.0.0.1:9229")<cr>
"nnoremap <silent><leader>ds :NodeInspectStepOver<cr>
"nnoremap <silent><leader>di :NodeInspectStepInto<cr>
"nnoremap <silent><leader>do :NodeInspectStepOut<cr>
"nnoremap <silent><leader>dq :NodeInspectStop<cr>
"nnoremap <silent><leader>db :NodeInspectToggleBreakpoint<cr>
"nnoremap <silent><leader>da :NodeInspectRemoveAllBreakpoints<cr>
"nnoremap <silent><leader>dw :NodeInspectToggleWindow<cr>

"let g:nodeinspect_window_pos = 'left'

"-----------------------vimspector

" Mapeo para VimspectorWatch de la palabra bajo el cursor
function! VimspectorWatchWord()
    " Obtiene la palabra bajo el cursor
    let word = expand("<cword>")
    " Llama a VimspectorWatch con la palabra como argumento
    execute "VimspectorWatch " . word
endfunction

nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>dq :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nmap <Leader>dn <Plug>VimspectorStepOver
nmap <Leader>di <Plug>VimspectorStepInto
nmap <Leader>do <Plug>VimspectorStepOut
nmap <Leader>dr <Plug>VimspectorRestart
" Mapea la función a <leader>dw en modo normal
nnoremap <leader>dw :call VimspectorWatchWord()<CR>

nnoremap <Leader>db :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dB :call vimspector#ClearBreakpoints()<CR>


