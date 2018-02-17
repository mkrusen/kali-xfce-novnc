FROM kalilinux/kali-linux-docker

ADD novnc.sh /root/novnc.sh

RUN apt-get update -y && apt-get install -y \
net-tools \
xfce4 \
xfce4-goodies \
git \
wget \
python \
python-numpy \
unzip \
vim \
tmux \
zsh \
tigervnc-common \
tigervnc-standalone-server \
metasploit-framework \
firefox-esr && \
cd /root && git clone https://github.com/kanaka/noVNC.git && \
cd /root/noVNC/utils && git clone https://github.com/kanaka/websockify websockify && \
chmod 0755 /root/novnc.sh && \
apt-get autoremove && \
rm -rf /var/lib/apt/lists/* && \
apt-get update -y && apt-get dist-upgrade -y

EXPOSE 6080

CMD /bin/bash
