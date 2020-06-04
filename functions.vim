" reload nvim config
command! Reload :source ~/.config/nvim/init.vim
command! Path :echo expand('%:p')
command! ClearSearch :let @/ = ""
command! CursorColHL :set cursorcolumn!
command! TrailingSpaces RemoveTrailingSpaces
command! ClearCRLF :%s///g
command! Q :q!
command! Qa :qa!
command! Format :Autoformat
command! -nargs=0 CocFormat :call CocAction('format')
command! LimelightOff Limelight!
command! JSONfy :%s/\v^( +)([^" ]+)(\ +)?:/\1"\2"\3:/g | echo 'JSONfy done'
command! SnippetsList :echo GetAllSnippets()
command! ToggleLineNumber :set relativenumber! number!
command! ProfileStart :call ProfileStart()
command! ProfileEnd :profile pause
command! FixLineBreak :call FixLineBreak()
command! TogglePlainTextMode :call PlainTextModeToggle()
command! CD :lcd %:p:h
command! CocClear :call coc#util#close_popup()
command! Coc :call s:OpenConfig()

function! s:OpenConfig()
  let home = coc#util#get_config_home()
  if home =~# '^\~'
    let home = substitute(home, '\~', $HOME,'')
  endif
  if !isdirectory(home)
    call mkdir(home, 'p')
  endif
  execute 'vs '.home.'/coc-settings.json'
endfunction

" This function not works with vim-plug lazy-load feature
function! PlugLoaded(name)
  return (stridx(&rtp, $NVIM_HOME.'/plugged/'.a:name) >= 0)
endfunction

function! ProfileStart()
  profile start profile.log
  profile func *
  profile file *
endfunc

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc

function! PlainTextModeToggle()
  if (get(b:, 'plain_text_mode', 0) == 0)
    ALEDisable
    IndentLinesDisable
    set cc=""
    let b:plain_text_mode = 1
  else
    ALEEnable
    IndentLinesEnable
    set cc=80,100
    let b:plain_text_mode = 0
  end
endfunc

function! IndentLevel(lnum)
  return indent(a:lnum) / &shiftwidth
endfunction

function! IndentToLevel()
  let l = IndentLevel(line('.')) - 1
  if &fdl == l
    let &l:fdl = 99
  else
    let &l:fdl = l
  end
endfunction

function! GetSnipsInCurrentScope()
  return UltiSnips#SnippetsInCurrentScope()
endfunction




" noremap  <silent> <expr><F12>  &buftype =='terminal' ?
                               " \ "\<C-\><C-n>:call ToggleTerminal(g:terminal_height)\<CR>" :
                               " \ (has('nvim') ?
                               " \ "\<Esc>:call ToggleTerminal(g:terminal_height)\<CR>i" :
                               " \ "\<Esc>:call ToggleTerminal(g:terminal_height)\<CR>")

" noremap! <silent> <F12>        <Esc>:call ToggleTerminal(g:terminal_height)<CR>i
" tnoremap <silent> <F12>        <C-\><C-n>:call ToggleTerminal(g:terminal_height)<CR>




" function! ToggleTerminal(height)
  " let found_winnr = 0
  " for winnr in range(1, winnr('$'))
    " if getbufvar(winbufnr(winnr), '&buftype') == 'terminal'
      " let found_winnr = winnr
    " endif
  " endfor

  " if found_winnr > 0
    " if &buftype == 'terminal'
        " " if current window is the terminal window, close it
        " execute found_winnr . 'wincmd q'
    " else
        " " if current window is not terminal, go to the terminal window
        " execute found_winnr . 'wincmd w'
    " endif
  " else
    " let found_quickfix = 0
    " let found_bufnr = 0
    " for bufnr in filter(range(1, bufnr('$')), 'bufexists(v:val)')
      " let buftype = getbufvar(bufnr, '&buftype')
      " if buftype == 'terminal'
        " let found_bufnr = bufnr
      " elseif buftype == 'quickfix'
        " let found_quickfix = bufnr
      " endif
    " endfor
    " " if quickfix was open, close it firstly
    " if found_quickfix > 0
        " execute 'cclose'
    " endif
    " if found_bufnr > 0
      " if &lines > 30
        " execute 'botright ' . a:height . 'split'
        " execute 'buffer ' . found_bufnr
      " else
        " botright split
        " execute 'buffer ' . found_bufnr
      " endif
    " else
      " if &lines > 30
        " if has('nvim')
          " execute 'botright ' . a:height . 'split term://' . &shell
        " else
          " botright terminal
          " resize a:height
        " endif
      " else
        " if has('nvim')
          " execute 'botright split term://' . &shell
        " else
          " botright terminal
        " endif
      " endif
    " endif
  " endif
" endfunction





" A third example on how to use this function to extract all snippets of
" current buffer: >

function! GetAllSnippets()
  call UltiSnips#SnippetsInCurrentScope(1)
  let l:count = 0
  for [key, info] in items(g:current_ulti_dict_info)
    let l:count += 1
    echo "[".key."]\t\t@".l:count."\t(".info.description.")\t".info.location
  endfor
  return l:count
endfunction

function! FixLineBreak()
  e ++ff=dos
  set ff=unix
  w
endfunction
