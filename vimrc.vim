set nocompatible              				"We want the latest Vim settings/options.

so ~/.vim/plugins.vim

set noerrorbells             				"No beeps
set backspace=indent,eol,start				"Make backspace behave like every other editor.
let mapleader = ','					"The default leader is \, but comma is much better.
set linespace=5						"Macvim-specific line-height.
set mouse=a						"Enable mouse mode
set noswapfile               				"Don't use swapfile
set nobackup                 				"Don't create annoying backup files
set ignorecase               				"Search case insensitive...
set smartcase                				" ... but not it begins with upper case
set nocursorcolumn           				"speed up syntax highlighting
set nocursorline
set encoding=UTF-8

"Visuals
so ~/.vim/visualsettings.vim

"-----Split Management-----"
set splitbelow
set splitright


" -----Search-----"
set hlsearch
set incsearch


" -----Plugins-----"
so ~/.vim/ctrlp.vim
so ~/.vim/nerdtree.vim
so ~/.vim/todo.vim
so ~/.vim/vim-go.vim
so ~/.vim/greplace.vim

" -----Auto-Commands-----"
"Automatically source the Vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source % 
augroup END

so ~/.vim/mappings.vim
