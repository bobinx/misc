set -e
echo -ne "Your IP: "
curl  ifconfig.me
echo -ne "\nNew IP: "
curl --proxy socks5://localhost:5000 ifconfig.me
echo ""
