filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'arcticicestudio/nord-vim'
"Go related
Plugin 'fatih/vim-go'
Plugin 'neoclide/coc.nvim'
"End of Go related
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Plugin 'sakshamgupta05/vim-todo-highlight'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


