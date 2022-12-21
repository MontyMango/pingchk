#!/bin/bash
echo "Welcome to pingchk!"
echo "This application is currently in beta so stuff might not work and might change!"
echo ""
echo "To begin, fill out the hosts that you want to ping in the Hosts.txt file."
echo "And if you want to automate this, be sure to use \"crontab -e\" to automate!"
echo ""
echo "For further information refer to the README.md. Thank you!"
echo "(Press enter to continue)
read ok

$(bash ./scripts/mk_results_dir.sh)
chmod a+x ping_script.sh
$(chmod a+x ./scripts/*.sh)
