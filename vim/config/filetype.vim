""" FileType {{{
augroup MyFileType
  autocmd!
  au BufNewFile,BufRead *.vim setlocal filetype=vim expandtab tabstop=2 softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.toml setlocal filetype=toml expandtab tabstop=2 softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.sh setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} setlocal filetype=markdown noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
  au BufNewFile,BufRead *.{yaml,yml} setlocal filetype=yaml expandtab tabstop=2 softtabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.{html,htm} setlocal filetype=html expandtab tabstop=2 softtabstop=2 shiftwidth=2 indentexpr=""
  au BufNewFile,BufRead *.css setlocal filetype=css expandtab tabstop=2 shiftwidth=2
  au BufNewFile,BufRead *.{js,javascript} setlocal filetype=javascript expandtab tabstop=2 shiftwidth=2
augroup END
""" }}}

