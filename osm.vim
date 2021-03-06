""""""""" vimrc for OSM-anuvadak """""""""
"
" This file needs to be source from your vimrc for it to work.
" If you are seeing this file on Github, then key-notations used in vim may not
" be displayed properly (such as `^M`, `^[` etc.)

" prepare to start
    " from command line run `vim path/to/level0_editor.txt`
    " find '/name =', go 1 line up, and create a new file to save source (English) 'name' strings
    " the initial space before the `name =` is left to avoid detecting `alt_name` tag
let @q='/  name =k:e en:bn'

" extract name tags
    " at the end of this macro the level0 data buffer will be open
let @w='nyy:bnp:bn@w'

" keep only strings to be translated
    " go to top line
    " go to the next buffer,
    " remove 1st (blank) line,
    " keep only the names on each line and
    " save the file
let @e='gg:bnggdd0Gf=lx:w'

" copy the entire list of names into the system clipboard
" and close the buffer (since it is no longer needed)
let @r='gg"+yG:bd'

" translate from en to lang
    " this is a separate task (of doing the actual translation) not related to vim
    " translate the copied contents of `en` file **as it is**.
    " Once the translation is done, copy the translated text **as it is**.
    " get back to vim and continue with the below macro

" paste the translation data
    " make a new file 'mr', paste the copied text above the cursor and save the file.
    " a simple manual review of the above copy paste operation can be to check if
    " both the en and mr files have the same number of lines. If they don't match
    " then something is wrong.
let @t=':e mr"+P:w'

" add 'name:mr' tags to all lines and save
let @y='0GI  name:mr = ggOgg:w'

" add name:lang tags to the destination file
let @u='jyy:bnnp:bn@u'

" close the `mr` buffer and save the level0 data buffer
let @i=':bd:w'

" make macros of macros
let @a='@q@w'       " prep and extract
let @s='@e@r'       " trim and copy
let @d='@t@y@u'     " paste and format
let @f=@i           " save
