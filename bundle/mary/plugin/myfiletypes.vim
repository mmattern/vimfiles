au BufRead,BufNewFile *.aspx   set filetype=aspvbs
au BufRead,BufNewFile *.inc    set filetype=html
"au BufRead,BufNewFile *.cshtml set filetype=cs
au BufRead,BufNewFile *.cshtml set filetype=html
au BufRead,BufNewFile *.master set filetype=html

"au BufNewFile,BufRead *html,*asp set softtabstop=2
au BufNewFile,BufRead *json set ft=javascript
au BufNewFile,BufRead *hamlbars set ft=haml

autocmd BufRead,BufNewFile $HOME/wamp/www/EbbTide/main/ebb-tide-main/* set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
    
