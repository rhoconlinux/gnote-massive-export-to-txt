Gnote to txt exporter
===========================

This program works with Gnote, a note taking app for Gnu/Linux Gnome and similar environments. It will transform all the notes into individual txt files so you can access from any platform with any software, anytime.  

This is gnote, in case you don't know it: 
![image](https://raw.githubusercontent.com/rhoconlinux/gnote-massive-export-to-txt/master/readme-assets/cap1.png)


## How it works
I implemented a bash script that exports Gnote notes to text files. It will transform each of your notes and ALL of them to txt files in one step.

Basically it parses the notes that are in XML format, and extract both the content and the title of the note. Each txt file will have the title of the note as name. The content of the text notes resulting will be, of course, in plain text (no no links, no symlinks, no nothing: just text).   

## How to install it
Open a terminal in your favourite distribution and paste the following lines:
####Dependencies:
Here I'll use Debian (Ubuntu) commands as example, so apt-get. Replace them according to your package manager (pacman, yum... ): 

` sudo apt-get install xml-twig-tools -y`

####Install (paste this thing):
`cd && mkdir -p .gnote-massive-export-to-txt && cd .gnote-massive-export-to-txt && wget 
` 

