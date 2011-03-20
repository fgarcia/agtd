Tired of trying thousand of tools to organize my life, and inspired in the
idea of ONE BIG TEXT FILE from Danny O'Brien, I decided that the world needed
yet another GTD tool. The "Almighty" part is a reference to the idea of having
all type of notes about your tasks in one single file.

The whole idea of this GTD implementation relies in some custom notation
marks, the Folding capabilities of VIM and its power to work quickly with
text. I wanted something portable to collect, edit, search and structure
lightning fast my notes. This is the result so far:

    * Organize project tree with notes, links and tasks
    * Move tasks from the project tree to the TODO list inserting project label
    * Neatly collect and display all tasks related with a project
    * Ease project tasks/notes finding
    * Build a calendar with all the dates in the text file

I strongly recommend the UTL script as a side companion. It will enhance your
notes allowing you to open different links with just a short keystroke.

This script is my idea of how GTD should be done with VIM. Any comments, bug
reports, patches, forks, fixes and suggestions are welcome.

![screen shot](https://github.com/FGarcia/agtd/raw/master/screenshot.png)

Usage
---------

The best way to get started is playing around with the [example
file](https://github.com/FGarcia/agtd/blob/master/todo-example.txt). Just play
around with this sample sequence of Vim commands:

    zo, zc          Open / close a folder
    zM              Close everything
    'v              Jump to project set by label
    zM              Close everything
    :GSearch VPN    Another way to jump to a project
    
The online help is not very complete, but can give you an overview of the
features: 
    :AG
    :help agtd

Bugs
---------

I have developed this script according my environment. I would expect
that some behaviour might be different or broken for other users
(color schema, tab width...)

Most of the time I use GUI version of Vim with the 'dark-blue' color schema. I
would not be surporised if this scripts does not look OK with light backgrounds
and/or the command line.

License
---------
Copyright © 2011 Francisco García Rodríguez. 

GNU General Public License - Version 3
See `License.txt` in this directory
