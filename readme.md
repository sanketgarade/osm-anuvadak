# OSM anuvadak

## Tool for translating `name` tags in OpenStreetMap.

*anuvadak* (अनुवादक) in Marathi (and in some other Indian languages) means translator.

If you are an OpenStreetMap contributor who wants to add a lot of `name:lang`
tags for your language, then this tool will help you.

It uses data from overpass turbo, level0 editor and does the magic using
vim.

The source tag is set to `name` and the destination tag is set to Marathi
`name:mr` (and can be changed to any `name:lang` easily).

### High level steps for the entire process -
1. Run a query on overpass turbo for the items you want to translate.
2. Export the results to the level0 editor. Copy the entire text present in the
   editor window and save it on your computer in a file, say `lvl0.txt`.
3. Open the file in vim
4. Run the macro `@a` to auto-generate the strings that need to be translated.
Copy the entire text from the file `en`.
5. Translate this text into Marathi (outside vim), then copy it and come back to
   vim.
6. Run the macro `@d` to auto-add the `name:mr` tags and the translated Marathi
   strings to the `lvl0.txt` file.
7. Now replace the contents of the level0 editor with the text from this file
   and click 'upload to OSM'. Done!

So far I have ran this on a 5000 lines `lvl0.txt` having about 300 `name` tags.
