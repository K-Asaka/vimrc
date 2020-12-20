let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_remove_duplicates = 1
let g:asyncomplete_smart_completion = 1
let g:asyncomplete_auto_popup = 1

let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '!!'}
let g:lsp_signs_hint = {'text': '?'}

nmap <C-i>  :LspDocumentFormat<CR>
nmap <silent> <C-J> :LspDefinition<CR>
nmap <silent> gd :LspDefinision<CR>
nmap <silent> gD :LspReferences<CR>

if executable('java') && filereadable(expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.6.0.v20200915-1508.jar'))
  au User lsp_setup call lsp#register_server({
    \ 'name': 'eclipse.jdt.ls',
    \ 'cmd': {server_info->[
    \   'java',
    \   '-Declipse.application=org.eclipse.jdt.ls.core.idl',
    \   '-Dosgi.bundles.defaultStartLevel=4',
    \   '-Declipse.product=org.eclipse.jdt.ls.core.product',
    \   '-Dlog.level=ALL',
    \   '-noverify',
    \   '-Dfile.encoding=UTF-8',
    \   '-Xmx1G',
    \   '-jar',
    \   expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.6.0.v20200915-1508.jar'),
    \   '-configuration',
    \   expand('~/lsp/eclipse.jdt.ls/config_linux'),
    \   '-data',
    \   getcwd()
    \ ]},
    \ 'whitelist': ['java'],
    \ })
endif

