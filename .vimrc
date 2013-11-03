"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" POWERLINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

\set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYBINDS 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Fast saving
nmap <leader>w :w!<cr>
"toggle whitespace display with f3
map <silent> <F2> :set list! list? <CR>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nmap  <F3> :BufExplorer<CR>
nmap  <M-F3> :bn<CR>
nmap  <S-F3> :bp<CR>

" Map Ctrl+S to Save
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif

nnoremap <silent> <C-S> :<C-u>Update<CR>
" also allow ctrl+s in insert mode (do not leave insert mode )
inoremap <c-s> <c-o>Update<CR>
vnoremap <C-S> <C-C>Update<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMANDS 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tolerance for typos:
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q

" forgot sudo? use w!!
cmap w!! w !sudo tee %


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPTIONS 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"case insensitive search by default
set ic 

colo slate
set number

" show whitespaces
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_
" set listchars=tab:>-,trail:-
set nolist


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
"set lbr
"set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines



