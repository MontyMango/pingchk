#!/bin/bash
# Make this file executable and run it to make the other files executable!

$(bash ./scripts/mk_results_dir.sh)
chmod a+x ping_script.sh
$(chmod a+x ./scripts/*.sh)
