#!/bin/bash


#VARIABLE DEFINITIONS AND DEFINITION CHECKS
#============================================
echo .starting with definitions....
cd $HOME/.local/share/gnote/
ls
_dest="$HOME/.local/share/gnote/"
#_file="simple_desktop_creator.desktop"
#_focus=$_dest$_file
 
echo "everything went ok."
echo
echo " Path Test......... "  
echo ...directory:
echo "$_dest"

		cd "$_dest"        	

			for f in *.note
			do
				echo "$f"
				mkdir -p gnote-notes-in-txt
				mkdir -p gnote-notes-in-txt/title
				mkdir -p gnote-notes-in-txt/ok
				xml_grep 'note-content' "$f" --text_only >> gnote-notes-in-txt/"$f".txt
				xml_grep 'title' "$f" --text_only >> gnote-notes-in-txt/title/"$f".titleonly.txt
				cd gnote-notes-in-txt			
				rename 's/.note.txt/.txt/' * 
				cd ..
			done
			#fixing titles
			cd gnote-notes-in-txt				
			for f in *.txt
			do
				echo "fixing title for $f"		
 				cp -a "$f"  ok/"`head -1 "$f"`.txt"
			done
		cd ..

rm -R gnote-notes-in-txt/title
mkdir -p gnote-notes-in-txt/raw-export-backup
echo "local dir es"
ls
mv gnote-notes-in-txt/*.txt gnote-notes-in-txt/raw-export-backup
mv gnote-notes-in-txt/ok/*.txt gnote-notes-in-txt/ 
rm -R gnote-notes-in-txt/ok/
rm -R gnote-notes-in-txt/raw-export-backup/	
