set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimplyFold'
let g:SimpylFold_docstring_preview=1
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Set defaults
"set nu
"set smartindent
"set tabstop=4
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Remapping
inoremap jk <esc>
"
 "split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za

" Enable folding
set foldmethod=indent
set foldlevel=99
set number
set encoding=utf-8
set statusline+=%F

" F4 t0 toggle search highlightning on/off 
:noremap <F4> :set hlsearch! hlsearch?<CR>

let python_highlight_all=1

syntax on


" colorscheme
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif


call togglebg#map("<F5>")
"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'CONDA_DEFAULT_ENV' in os.environ:
"  project_base_dir = os.environ['CONDA_DEFAULT_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/python3')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
"
