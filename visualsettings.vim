" -----Visuals-----"
set number						"Let's activate the line numbers.
set linespace=1						"Macvim-specific line height.
set guioptions-=e					"We don't want Gui tabs
set nowrap						"We don't want text wrapping
set colorcolumn=120					"Set a ruler to 120 characters limit

syntax enable
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"

" ChangeBackground changes the background mode based on macOS's `Appearance`
" setting. We also refresh the statusline colors to reflect the new mode.
" this function copied from https://github.com/fatih/dotfiles/blob/main/vimrc#L124
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
set guifont=Operator_Mono_Medium_Nerd_Font_Complete:h13				"Set the font with height
set guioptions-=l								"Will hide the scrollbar
set guioptions-=L								"Will hide the scrollbar
set guioptions-=r								"Will hide the scrollbar
set guioptions-=R								"Will hide the scrollbar

"Get rid of ugly split border
hi vertsplit guifg=bg guibg=bg							
