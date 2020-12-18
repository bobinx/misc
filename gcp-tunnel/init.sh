#!/bin/bash
set -e
gcloud compute instances create --zone us-west1-a tunnel
CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"
echo -e "\\r${CHECK_MARK} Instance created"
for i in {1..60};
do
   ans=$(( 60 - $i ))
   echo -ne "\rsleeping for ${ans} seconds before ssh..."
   sleep 1
done
echo ""
gcloud compute ssh --zone us-west1-a tunnel -- -N -p 22 -D localhost:5000

