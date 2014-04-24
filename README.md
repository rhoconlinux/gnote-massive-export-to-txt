Gnote to txt exporter
===========================

This program works with Gnote, a note taking app for Gnu/Linux Gnome and similar environments. It will transform all the notes into individual txt files so you can access from any platform with any software, anytime.  

This is gnote, in case you don't know it: 
![image](https://raw.githubusercontent.com/rhoconlinux/rhoconlinux.github.io/master/third-party-assets/cap1.png)

Amizingly, if you want to export the notes, the only way that I found was an HTML exporter embedded in Gnote, which allow to export the notes ONE BY ONE. Regarding the html output, it might work for me, although that format is not really convenient cause it will open the webbrowser... However, the biggest problem doesn't concern the format: is when you have several notes, as I do, you are "forced" to export them individually. I have more than 1000 notes... so I preferred to spend my time making this script, instead of wasting 4 clicks x 1500 notes = jajaj.

My solution is simple: run the script and it will export all your notes to a folder. :)


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
![image](https://raw.githubusercontent.com/rhoconlinux/rhoconlinux.github.io/master/third-party-assets/cap3.png)
The time of the process will depend on how many notes you have, but as you may experience, it takes aroung 1 second per note. 

#####Accesing the notes in txt format

The new files will be available in your notes folder of gnote. It is located in `~/.local/share/gnote`. In nautilus, press `ctrl+h` in your home folder to be able to navigate .local > share > gnote. In there, you may find a new folder called **"gnote-notes-in-txt"** which contains the all your notes in text format. 

######A couple of screenshots:

Finding the folder with the notes in Nautilus. 

![image](https://raw.githubusercontent.com/rhoconlinux/rhoconlinux.github.io/master/third-party-assets/cap4.png)


This is how you will see the exported notes directory. A side by side comparison with the Gnote list on the left, and the exported .txt on the right. As you see, all of them are there :)

![image](https://raw.githubusercontent.com/rhoconlinux/rhoconlinux.github.io/master/third-party-assets/cap5.png)

Last, this is how a the output of the process looks. Side by side with the original Gnote note. As you see, the plain text file respects the original layout. :)

![image](https://raw.githubusercontent.com/rhoconlinux/rhoconlinux.github.io/master/third-party-assets/cap6.png)

Hope to find it useful. 


## Licencing 

This work is open-source following the GPL v3 licence. Please feel free to fork it, improve it, copy it and, if you liked it, diffuse it. :)
