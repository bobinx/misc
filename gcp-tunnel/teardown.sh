set -e
gcloud compute instances delete --zone us-west1-a tunnel
CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"
echo -e "\\r${CHECK_MARK} Instance deleted"
