""" FileType {{{
augroup vimrc
  autocmd Filetype * call s:filetype(expand('<amatch>'))
augroup END

function! s:filetype(ftype) abort
  if !empty(a:ftype) && exists('*' . 's:filetype_' . a:ftype)
    execute 'call s:filetype_' . a:ftype . '()'
  else
    execute 'call s:filetype_text()'
  endif
endfunction

function! s:set_indent(tab_length, is_hard_tab) abort
  if a:is_hard_tab
    setlocal noexpandtab
  else
    setlocal expandtab
  endif
  let &l:shiftwidth  = a:tab_length
  let &l:softtabstop = a:tab_length
  let &l:tabstop     = a:tab_length
endfunction


function! s:filetype_text() abort
  call s:set_indent(4, 0)
endfunction

function! s:filetype_html() abort
  call s:set_indent(4, 1)
endfunction

function! s:filetype_htm() abort
  call s:filetype_html()
endfunction

function! s:filetype_css() abort
  call s:filetype_html()
endfunction

function! s:filetype_javascript() abort
  call s:set_indent(4, 1)
  inoremap <buffer> <C-CR> <End>;<CR>
  inoremap <buffer> jk <End>;
endfunction

function! s:filetype_typescript() abort
  call s:filetype_javascript()
endfunction

function! s:filetype_vim() abort
  call s:set_indent(2, 0)
endfunction

function! s:filetype_toml() abort
  call s:set_indent(2, 0)
endfunction

function! s:filetype_yaml() abort
  call s:set_indent(2, 0)
endfunction

function! s:filetype_sh() abort
  call s:set_indent(4, 0)
endfunction

function! s:filetype_md() abort
  call s:set_indent(4, 1)
endfunction

""" }}}

