""" encoding {{{
scriptencoding utf8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp-3,euc-jp,cp932
set fileformats=unix,dos,mac
""" }}}

""" dein github api token {{{
if filereadable(expand('~/.dein.token')) && !exists('g:dein#install_github_api_token')
  source ~/.dein.token
endif
""" }}}

if &compatible
  set nocompatible
endif

augroup vimrc
  autocmd!
augroup END

if has("syntax")
  syntax on
endif

""" cursor {{{
set backspace=indent,eol,start
set cursorline
set matchpairs+=<:>,":",':'
set virtualedit=block
set whichwrap=b,s,h,l,[,],<,>,~
""" }}}

""" view {{{
hi Comment ctermfg=2
set shellslash
set showmatch matchtime=1
set showcmd
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set title
set number
set tags+=tags;
set ambiwidth=double
set showmode
set textwidth=0
set wrap
set display+=lastline
""" }}}

""" command line {{{
set cmdheight=2
""" }}}

""" scroll bar {{{
set scrolloff=8
set sidescrolloff=16
set sidescroll=1
""" }}}

""" completion {{{
set wildmenu
set wildmode=list:longest
set pumheight=5
""" }}}

""" indent tab space {{{
set cinoptions+=:0
set autoindent
set smartindent
set expandtab
set showbreak=>\ 
set tabstop=4
set softtabstop=4
set shiftwidth=4
""" }}}

""" folding {{{
set foldmethod=marker
set foldlevel=2
set foldcolumn=3
set nofoldenable
set viewdir=~/.vim/view
""" }}}

""" bell {{{
set noerrorbells
set visualbell t_vb=
""" }}}

""" clipboard {{{
set clipboard=unnamed,autoselect
""" }}}

""" swapchoice ReadOnly {{{
augroup swapchoice-readonly
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
augroup END
""" }}}

