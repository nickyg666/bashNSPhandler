#!/bin/bash
:'extract xci or nsp first, recursively in case
I/you do it a directory up and bash handles 
it dir by dir and renames and moves all of them.
This script assumes you have a main directory, 
which is full of xci/nsp renamed for tinfoil. 
I hide my new additions in a separate
folder inside the main directory, where another
directory is created with the individual rars 
upon backup, so this script will move them back 
into the main folderless dir after renaming to automate all this legwork.'

unrar e -r *.rar

#find TitleID from .NFO in pwd/cwd

Title=$(echo 'grep -Eo [A-F0-9]{16} *.nfo')

#rename xci/nsp only if they are in the pwd

if ls *.xci *.nsp; 
then for x in $( ls *.xci *.nsp); do mv $x ../../[$Title]$x; fi 
done

#:'that's it, the idea is here it probably does not run right now 
#as I haven't tested the script yet (just the individual commands)
#and am just putting this here so I don't lose it. I've tried to 
#comment well for myself and maybe others, if you're out there.'
