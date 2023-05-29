""" status bar {{{
set laststatus=2
set statusline=%F%m%r
set statusline+=%=
set statusline+=\|\ %{&fileformat},%{&fileencoding}%{(&bomb?\"(bom)\":\"\")}
set statusline+=\ \|\ %Y
set statusline+=\ \|\ %l/%L,%02v
""" }}}

