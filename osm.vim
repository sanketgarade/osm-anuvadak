" prepare to start
    " from command line run `vim path/to/level0_editor.txt`
    " find '/name =', go 1 line up, and create a new file to save source (English) 'name' strings
let @n='/name =k:e en:bn'

" extract name tags
    " at the end of this macro the level0 data buffer will be open
let @q='nyy:bnp:bn@q'

" keep only names
    " go to the next buffer, remove 1st (blank) line, keep only the names on each line and save the file
let @t=':bnggdd0Gf=lx:w'

" copy the entire list of names into the system clipboard
let @c='gg"+yG'

" translate from en to lang
    " this is a separate task (of doing the actual translation) not related to vim
    " translate the copied contents of `en` file **as it is**.
    " Once the translation is done, copy the translated text **as it is**.
    " get back to vim and continue with the below macro

" create name:lang tags
    " make a new file 'mr', paste the copied text above the cursor and save the file.
    " a simple manual review of the above copy paste operation can be to check if
    " both the en and mr files have the same number of lines. If they don't match
    " then something is wrong.
let @p=':e mr"+P:w'

" add name:lang tags to the destination file
