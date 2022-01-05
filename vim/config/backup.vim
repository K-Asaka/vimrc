""" Backup {{{
if &backup
    let s:tmp_dir = $HOME . "/vimtmp"

    if !isdirectory(s:tmp_dir)
        call mkdir(s:tmp_dir)
    endif

    let &directory = s:tmp_dir
    let &backupdir = s:tmp_dir
    let &undodir = s:tmp_dir

    set backupcopy=auto
    set backupext=.vbak
endif
""" }}}

