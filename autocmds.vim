" autocmd BufRead *.js set isk-=.
" autocmd BufRead *.jsx set isk-=.
" autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd filetype crontab setlocal nobackup nowritebackup

autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,u ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,m - [ ]
autocmd Filetype markdown inoremap <buffer> ,g ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ，1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ，2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ，3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ，4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
autocmd Filetype markdown inoremap <buffer> ,h ---<Enter><Space>layout:post<Enter>title:"<++>"<Enter>subtitle:"<++>"<Enter>date:"<++>"<Enter>author:"alm"<Enter>header-img:"<++>"<Enter>catalog:true<Enter>tags:<Enter><Space>-"<++>"<Enter><BackSpace>---

autocmd Filetype markdown inoremap <buffer> ,p <div<Space>align="center"><Enter><img<Space>src="<++>"<Space>width="100%"<Space>height="100%"<Space>alt="<++>"/><Enter></div><Enter><++>


autocmd Filetype markdown inoremap <buffer> ,v <div<Space>align="center"><Enter><++><Enter></div><Enter><++>


autocmd Filetype markdown inoremap <buffer> ,s  <span<Space>style='color:<++>'><++></span>

autocmd Filetype markdown inoremap <buffer> ,sv  width="100%"

autocmd Filetype markdown inoremap <buffer> ,t \|<Space><++><Space>\|<Space><++><Space>\|<Space><++><Space>\|<Enter>\|<Space>:----:<Space>\|<Space>:----:<Space>\|<Space>:----:<Space>\|<++>
