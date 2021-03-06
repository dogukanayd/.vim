" -----Mappings-----"
"Make it east to edit the Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>vdoc :e ~/.vim/README.md<cr>

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
autocmd FileType go nmap <leader>rt  <Plug>(go-test)
autocmd FileType go nmap <Leader>gf :GoFmt<cr>
autocmd FileType go nmap <Leader>gd :GoDef<cr>
autocmd FileType go nmap <Leader>gat :GoAddTags<cr>
autocmd FileType go nmap <Leader>gl :GoMetaLinter<cr>
autocmd FileType go nmap <Leader>gt :GoAlternate<cr>
autocmd FileType go nmap <D-C-R> :GoTestFunc<cr>

" Print full path
map <C-f> :echo expand("%:p")<cr>



"----- Laravel Specific -----"
autocmd FileType php nmap <Leader>lm :!php artisan make:
autocmd FileType php nmap <Leader>lfc :CtrlP<cr>app/Http/Controllers/
autocmd FileType php nmap <Leader>lfs :e<cr>app/Services/
autocmd FileType php nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<cr>
