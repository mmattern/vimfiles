au BufRead,BufNewFile *.aspx   set filetype=aspvbs
au BufRead,BufNewFile *.inc    set filetype=html
"au BufRead,BufNewFile *.cshtml set filetype=cs
au BufRead,BufNewFile *.cshtml set filetype=html
au BufRead,BufNewFile *.master set filetype=html
au BufRead,BufNewFile *.rt set filetype=html

"au BufNewFile,BufRead *html,*asp set softtabstop=2
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.ts set ft=javascript
au BufNewFile,BufRead *.hamlbars set ft=haml

autocmd BufRead,BufNewFile $HOME/Source/Repos/* set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
autocmd BufRead,BufNewFile c:/wamp/www/steve-jobs/github/* set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufRead,BufNewFile c:/wamp/www/toy/bb/* set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

match ErrorMsg '\s\+$'

function! TrimWhiteSpace()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
