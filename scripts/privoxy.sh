#!/bin/bash
sudo echo -e "\nforward-socks5 / localhost:9050 ." >> /etc/privoxy/config
sudo systemctl restart privoxy
