#!/bin/bash
set -e

# Download
curl -LO https://github.com/allwinvar/ProtonVPN-Next-CLI/releases/latest/download/pvpn-next
chmod +x pvpn-next

# Connect
sudo ./pvpn-next guest
sudo ./pvpn-next register-cert
sudo ./pvpn-next fetch-servers
sudo ./pvpn-next connect "NL-FREE#15"

# Verify
echo "Your IP:"
curl -s ipinfo.io | grep -E "ip|city|country"
