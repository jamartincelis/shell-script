#!/bin/bash
echo "This scripts checks the existence of the test file."
echo "Checking..."
if [ -f /home/javier/scripts/test ] 
  then
    echo "/home/javier/scripts/test exists."
fi
echo 
echo "...done."

echo 
if [ "$(whoami)" != 'root' ]; then
  echo "You have no permission to run $0 as non-root user."
  exit 1;
fi
echo
