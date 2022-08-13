# What is pingchk?
pingchk scans your local network to find the listed computers  a network scanner that uses a list to 
to see if they are awake, and can be remoted into.





# How do I use these scripts?

## First: Make the scripts executable
Unfortunately, there is no automated way of making these scripts executable... right now. So do this for now:
> chmod a+x (Script Name)

You will need to do this for both ping_script.sh & sort_hosts.sh:
> chmod a+x ping_script.sh
> chmod a+x sort_hosts.sh

## Second: Populate Hosts.txt
Delete the first line, and populate the list with the hosts that you want to check for!
Do not worry about sorting, the program will sort it when you run it everytime!

## Third: Manually executing ping_script.sh 
To manually execute the ping script:
> ./ping_script.sh
Let it run its course and it will make a results text with the title being the date and time of when the script was executed. 





# How do I automate this script for it to go off every ______ ?
For automation, I recommend using **crontab** for this. I will include a crontab setup script later to make automation easy.
