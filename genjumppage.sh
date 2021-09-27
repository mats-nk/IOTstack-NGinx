#!/bin/bash

IP=$1
#IP=192.168.1.10

cat .templates/start.html > index.html

echo "    <li><a href="http://$IP:1880">Node-Red</a></li>" >> index.html
echo "    <li><a href="http://$IP:1880/ui">Node-Red UI</a></li>" >> index.html
echo "    <li><a href="http://$IP:9000">Portainer-ce</a></li>" >> index.html
echo "    <li><a href="http://$IP:8088">TasmoAdmin</a></li>" >> index.html
echo "    <li><a href="http://$IP:8089">PiHole</a></li>" >> index.html

cat .templates/end.html >> index.html

