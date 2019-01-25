#!/bin/bash
echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "This script will run test_servicecontrol.py in servicecontrol"
echo "Type start() on the interactive prompt"
echo "test_servicecontrol.py will create several child processes"
echo "Try to kill it with kill(). test_servicecontrol will ignore the sigterm signal, so after the timeout it should be killed with a SIGKILL"
echo "Also try to leave the script running, it should terminate normally after about 30 seconds, then restart" 
echo "Starting in 2 seconds"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo ""
echo ""
sleep 2

servicecontrol "python test_servicecontrol.py" -i --stream-as-log --kill-timeout 5 --autorestart

