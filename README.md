# kali-xfce-novnc
Docker image built from kalilinux/kali-linux-docker then adding xfce and novnc.

git clone https://github.com/mkrusen/kali-xfce-novnc.git
docker build -t kali-xfce-novnc .
docker run -d -p 6080:6080 -w /root/ --name kali -it kali-xfce-novnc /bin/bash
docker attach kali
vncpasswd
#Detach with Ctrl+P Ctrl+Q
docker exec -d kali-xfce-novnc /root/novnc.sh

Browse to http://server:6080
