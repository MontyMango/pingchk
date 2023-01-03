# What is pingchk?
pingchk scans your local network to find the listed computers, and lists the hostname and IP address in a results text file. This only works on Linux systems right now. 



# How do I use these scripts?

## First: Run start_up.sh
To make the scripts executable, simply run the start_up.sh by typing:
```
bash start_up.sh
```
while in pingchk's directory. This will output information regarding about using the software.

## Second: Populate Hosts.txt
Delete the first line, and populate the list with the hosts that you want to check for!
Do not worry about sorting, the program will sort it when you run it everytime!

## Third: Manually executing ping_script.sh 
To manually execute ping_script.sh, run this in the terminal:
```
./ping_script.sh
```
Let it run its course and it will make a results text with the title being the date and time of when the script was executed inside of the results directory.



# How do I automate this script for it to go off every ______ ?
For automation, I recommend using **crontab** for this. I will include a crontab setup script later to make automation easy.
