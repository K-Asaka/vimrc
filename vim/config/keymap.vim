""" key map
""" -- inc,dec {{{
nnoremap + <C-a>
nnoremap - <C-x>
""" }}}

""" -- move {{{
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
""" }}}

""" -- window move {{{
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
""" }}}

""" -- yank {{{
nnoremap Y y$
""" }}}

""" -- cancel hilight {{{
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>
""" }}}

