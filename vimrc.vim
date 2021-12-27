set nocompatible              				"We want the latest Vim settings/options.
" -----Plugins-----"
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
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"so ~/.vim/plugins.vim

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
" -----Visuals-----"
set number						"Let's activate the line numbers.
set linespace=5					"Macvim-specific line height.
set guioptions-=e					"We don't want Gui tabs
set nowrap
set colorcolumn=120

syntax enable
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"

" ChangeBackground changes the background mode based on macOS's `Appearance`
" setting. We also refresh the statusline colors to reflect the new mode.
function! ChangeBackground()
  if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    set background=dark   " for dark version of theme
  else
    set background=light  " for light version of theme
  endif
  colorscheme gruvbox

  try
    execute "AirlineRefresh"
  catch
  endtry
endfunction

" initialize the colorscheme for the first run
call ChangeBackground()

set t_CO=256									"Use 256 colors. This is  useful for Terminal Vim.
set guifont=Operator_Mono_Medium_Nerd_Font_Complete:h16				"Set the font with height
set guioptions-=l								"Will hide the scrollbar
set guioptions-=L								"Will hide the scrollbar
set guioptions-=r								"Will hide the scrollbar
set guioptions-=R								"Will hide the scrollbar





"-----Split Management-----"
set splitbelow
set splitright



" -----Search-----"
set hlsearch
set incsearch






" -----Plugins-----"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Stora\git\vendor\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
"/
"/ NERDTree
"/
let NERDTreeHijacNetrw = 0

"/
"/ TODO
"/

let g:todo_highlight_config = {
      \   'REVIEW': {},
      \   'IMPORTANT': {
      \     'gui_fg_color': '#ffffff',
      \     'gui_bg_color': '#ffbd2a',
      \     'cterm_fg_color': 'white',
      \     'cterm_bg_color': '214'
      \   }
      \ }


"/


"/ vim-go
"/
set autowrite
"au filetype go inoremap <buffer> . .<C-x><C-o>
"Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

"Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction


" -----Auto-Commands-----"
"Automatically source the Vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source % 
augroup END


" -----Mappings-----"
"Make it east to edit the Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit /Users/dogukanaydogdu/.vim/plugins.vim<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>

"Find a function or method inside the class easily
nmap <c-R> :CtrlPBufTag<cr>
nmap <c-E> :CtrlPMRUFile<cr>

"Split management
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"COC plugin
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> rn <Plug>(coc-rename)

"vim-Go
"Map keys for most used commands.
"Ex: `\b` for building, `\r` for running and `\b` for running test.
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

nmap <Leader>gf :GoFmt<cr>

" Print full path
map <C-f> :echo expand("%:p")<cr>
