# bash_stuff
Some Bash scripts I've written for various tasks:

### chmod-recursive.sh
Simple enough script, saved to remember. Will recursively update the specified folder and any subfolders and files to 775/664 permissions, respectively.

### find-webserver.sh
This tool is used to find web servers on the local network. In order to narrow the search, the server port and subnet can be specified. This can be useful if your router won't display all connected hosts and/or you just want to find a certain server quickly. *NOTE: This uses curl*

### host-shutdown.sh
Specify a user and a host (like _./host-shutdown.sh user@host_). You will be prompted for the users password, after which the host will be shut down. I use this to shut off my headless Raspberry Pis, for example, but the command can easily be changed to perform some other action.

### regex-unrar.sh
When executed in a folder with a regex as argument (see -h for example), will find any .rar files inside that folder (and in subfolders) and extract them (_unrar x_).
