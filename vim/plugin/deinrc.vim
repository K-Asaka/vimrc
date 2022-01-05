""" dein setting {{{
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
""" }}}

""" dein path {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    if executable('git')
      execute '!git clone https://github.com/Shougo/dein.vim.git' s:dein_repo_dir
    else
      echomsg 'git does not exists.'
    endif
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
""" }}}

""" plugins {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  if filereadable(s:toml)
    call dein#load_toml(s:toml,       { 'lazy': 0 })
  endif
  if filereadable(s:lazy_toml)
    call dein#load_toml(s:lazy_toml,  { 'lazy': 1 })
  endif

  call dein#end()
  call dein#save_state()
endif
""" }}}

""" plugin installation check {{{
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
""" }}}

""" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
""" }}}

filetype plugin indent on

