" Enable mouse usage
set mouse=a

" Show line numbers:
set number 

" Clipboard
set clipboard=unnamedplus
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
