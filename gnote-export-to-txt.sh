#!/bin/bash

if [ "$1" == "" ]; then
    note_files=`ls $HOME/.local/share/gnote/*.note `
else
    note_files=`grep -l "<title>$1</title>" $HOME/.local/share/gnote/*.note`
fi

#cd $HOME/.local/share/gnote/
ls
dest="$HOME/gnote_export"
mkdir -p $dest


for f in $note_files;
do
    sed -e "s/<strikethrough>/[strike]/g;s/<\/strikethrough>/[\/strike]/g;s/<highlight>/[high]/g;s/<\/highlight>/[\/high]/g" $f > /tmp/gnote-export.wrk
    title=`xml_grep 'title' "$f" --text_only |sed "s/\//_slash_/g;s/\*/_star_/g"`
    echo -e "file=$f\ttitle=$title"
    xml_grep 'note-content' "/tmp/gnote-export.wrk" --text_only > $dest/"$title.txt"
done

mkdir -p gnote-notes-in-txt/raw-export-backup
