#!/bin/bash
# This script acts upon the exit status given by childDocument.sh

# Validate the two parameters
if [ "$#" != "2" ]; then
  echo -e "Usage of the feed script:\t$0 food-on-menu animal-name\n"
  exit 1
else

  export menu="$1" #parameter 1
  export animal="$2" #parameter 2	

  echo -e "Feeding $menu to $animal...\n"

  feed="/home/javier/scripts/childDocument.sh"
  
  $feed $menu $animal

  result="$?" #get the exit value from the chilDocument
  
  echo -e "Done feeding.\n"
  case "$result" in
    1)
      echo -e "Guard: \"You'd better give'm a fish, less they get violent...\"\n"
      ;;
    2)
      echo -e "Guard: \"No wonder they flee our planet...\"\n"
      ;;
    3)
      echo -e "Guard: \"Buy the food that the Zoo provides at the entry, you ***\"\n"
      echo -e "Guard: \"You want to poison them, do you?\"\n"
      ;;
    *)
      echo -e "Guard: \"Don't forget the guide!\"\n"
      ;; 
  esac
fi

echo "Leaving..."
echo -e "\a\a\aThanks for visiting the Zoo, hope to see you again soon!\n" 
