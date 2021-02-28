#!/bin/bash
sudo systemctl start tor

gsettings set org.gnome.system.proxy mode 'manual'
gsettings set org.gnome.system.proxy.socks port 9050
gsettings set org.gnome.system.proxy.socks host 'localhost'
gsettings set org.gnome.system.proxy ignore-hosts "['localhost', '127.0.0.0/8', '::1']"

sudo su <<-EOF
#environment settings
echo "socks_proxy='socks://localhost:9050/'" >> /etc/environment
#apt settings
echo "Acquire::socks::proxy 'socks://localhost:9050/';" >> /etc/apt/apt.conf
EOF

# Exclude 5 eyes + 1 eye
sudo echo -e "\nExcludeNodes {fr}\nExcludeExitNodes {us},{au},{ca},{nz},{gb},{fr}" >> /etc/tor/torrc

sudo systemctl reload tor
