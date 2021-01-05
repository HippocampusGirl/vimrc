" Enable mouse usage
set mouse=a
set ttymouse=sgr

" Show line numbers:
set number 

" Clipboard
set clipboard=unnamed,unnamedplus
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

autocmd VimEnter * if !argc() | NERDTree | endif
autocmd BufWinEnter * NERDTreeMirror

" coc.nvim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" vim-auto-save
let g:auto_save = 0
let g:auto_save_events = ["InsertLeave", "TextChanged", "TextChangedI"]
augroup ft_markdown
	au!
	au FileType markdown let b:auto_save = 1
augroup END
