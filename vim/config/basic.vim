""" encoding {{{
scriptencoding utf8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp
set fileencodings+=eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
set fileformats=unix,dos,mac
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

filetype plugin indent on

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
au BufWinLeave * mkview
au BufWinEnter * silent loadview
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

""" Disable automatic comment insertion {{{
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
""" }}}

