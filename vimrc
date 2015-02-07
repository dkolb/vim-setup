" Some basic config
set nocp
set backspace=indent,eol,start
set title
syntax on
set colorcolumn=80

" If in GUI, use mouse, otherwise disable.
if has('gui_running')
    set mouse=a
else
    set mouse=
endif

"Read .vimrc, .exrc, and .gvimrc files in current directory.
set exrc

"Indention
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"use kj to exit insert mode
"Using kj in english is crazy.
inoremap kj <Esc>


" Load modules
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
syntax on
filetype plugin indent on

" Configure HTML Indent ~/.vim/bundle/indent-html
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1  = "inc"

" Configure JSHint
let g:jshintconfig = "~/.vim/jshint-config.json"

" Configure SuperTab
let g:SuperTabDefaultCompletionType = "context"

" GUI runs as solarized.  Terminal is already using
" solarized.
if has('gui_running')
    set background=dark
    colorscheme solarized
endif

" Special NERDTree set up for GUI's.
if has('gui_running')
    let NERDTreeMouseMode=2
endif

" Show NERDTree all the time.
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$']
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
