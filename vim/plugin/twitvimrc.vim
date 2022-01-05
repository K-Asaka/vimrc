""" TwitVim {{{
let twitvim_count = 50
let twitvim_browser_cmd = 'firefox'
if has('mac')
  let twitvim_browser_cmd = 'open -a /Applications/Google Chrome.app'
endif

nnoremap ,tp :<C-u>PosttoTwitter<CR>
nnoremap ,tf :<C-u>FriendsTwitter<CR><C-w>j
nnoremap ,tu :<C-u>UserTwitter<CR><C-w>j
nnoremap ,tr :<C-u>RepliesTwitter<CR><C-w>j
nnoremap ,tn :<C-u>NextTwitter<CR>
nnoremap ,ts :<C-u>SwitchLoginTwitter<CR>
autocmd FileType twitvim call s:twitvim_my_settings()

function! s:twitvim_my_settings()
  set wrap
endfunction
""" }}}

