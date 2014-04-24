Gnote to txt exporter
===========================

This program works with Gnote, a note taking app for Gnu/Linux Gnome and similar environments. It will transform all the notes into individual txt files so you can access from any platform with any software, anytime.  

This is gnote, in case you don't know it: 
![image](https://raw.githubusercontent.com/rhoconlinux/rhoconlinux.github.io/third-party-assets/cap1.png)

/home/rho/SparkleShare/rhoconlinux.github.io/third-party-assets/cap1.png

## How it works
I implemented a bash script that exports Gnote notes to text files. It will transform each of your notes and ALL of them to txt files in one step.

Basically it parses the notes that are in XML format, and extract both the content and the title of the note. Each txt file will have the title of the note as name. The content of the text notes resulting will be, of course, in plain text (no no links, no symlinks, no nothing: just text).   

## How to install it
Open a terminal in your favourite distribution and paste the following lines:
####Dependencies:
Here I'll use Debian (Ubuntu) commands as example, so apt-get. Replace them according to your package manager (pacman, yum... ): 

` sudo apt-get install xml-twig-tools unzip -y`

####Install (paste this thing):
`cd && mkdir -p .gnote-massive-export-to-txt && cd .gnote-massive-export-to-txt && wget https://github.com/rhoconlinux/gnote-massive-export-to-txt/archive/master.zip && unzip master.zip &&  cd gnote-massive-export-to-txt-master/ &&  mv gnote-export-to-txt.sh ~/.gnote-massive-export-to-txt/ && cd .. && rm -R gnote-massive-export-to-txt-master && rm master.zip && chmod +x gnote-export-to-txt.sh && cd
`

If you want to install it at the system level, simply add this line (will require root authentication):

`sudo cp ~/.gnote-massive-export-to-txt/gnote-export-to-txt.sh /usr/bin/gnote-export-to-txt`

This may be usefull if you want to easily access to the command, for instance by typing `gnote-export-to-txt` anytime, anywhere on your terminal. It may also be useful if you want to make regular backups of your notes using *cron *or other task-scheduling app. 

## How to use it
Using it is very simple. Open a terminal and run:

`sh ~/.gnote-massive-export-to-txt/gnote-export-to-txt.sh`

or if you made the system-level install, just type:

`gnote-export-to-txt`

...the program will do the rest. You will see how the export process starts. It will look like this:




 

