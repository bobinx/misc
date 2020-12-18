gcloud compute instances create --zone us-west1-a tunnel
gcloud compute ssh --zone us-west1-a tunnel -- -N -p 22 -D localhost:5000
echo "Your IP"
curl --proxy socks5://localhost:5000 ifconfig.me
echo "New IP"
curl --proxy socks5://localhost:5000 ifconfig.me
gcloud compute instances delete --zone us-west1-a tunnel
