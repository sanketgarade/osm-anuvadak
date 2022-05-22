# OSM anuvadak

Tool for adding `name:lang` tags in OpenStreetMap.

*anuvadak* (अनुवादक) in Marathi (and in some other Indian languages) means translator.

---

If you are an OpenStreetMap contributor who wants to add a lot of `name:lang`
tags for your language, then this tool will help you.
The input data is obtained using overpass turbo and the level0 editor. 
OSM-anuvadak helps format the data before and after the translation is done.
Finally level0 is again used to upload the data to OSM.

The source tag is set to `name` and the destination tag is set to Marathi
`name:mr` (but can be changed to any `name:lang` easily).


## How to use -
1. Run a query on overpass turbo for the items you want to translate.
2. Export the results to the level0 editor. Copy the entire text present in the
   editor window and save it on your computer in a file, say `lvl0.txt`.
3. Open the file in vim
4. Run the macros `@a` and `@b` to auto-extract the strings that need to be translated.
The strings to be translated (in file `en`) are already copied to your system clipboard.
5. Translate this copied text into Marathi (outside vim), and then copy the
   translated text.
6. Back in vim, run the macros `@d` and `@s` to auto-add the `name:mr` tags and
paste the translated Marathi strings to the `lvl0.txt` file.
7. Now replace the contents of the level0 editor with the text from this file
   and click "upload to OSM". Done!

(**IMPORTANT** - Make sure to review your changes, such as by doing a diff of the
`lvl0.txt` before and after pasting the translated strings or via the "Show
osmChange" button in the level0 editor before clicking the "upload to OSM"
button.)

---

## Installation -

Clone this repo

`git clone git@github.com:sanketgarade/osm-anuvadak.git`


And just add below lines to your `vimrc` and set the correct path to source the `osm.vim`.
```
" do not wrap search at end of file
" this is needed to prevent recursive macros from running in an infinite loop
:set nowrapscan
" keep cursor position when switching buffers
:set nostartofline
" source the file needed for OSM-anuvadak
:source path/to/osm.vim
```

So far I have ran this on a 5000 lines `lvl0.txt` having about 300 `name` tags.
