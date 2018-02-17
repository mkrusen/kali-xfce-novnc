FROM kalilinux/kali-linux-docker

ADD novnc.sh /root/novnc.sh
ADD zshrc /root/.zshrc
#ADD apt_install.sh /root/apt_install.sh
#passwd is set to 'changeme'
ADD passwd /root/.vnc/passwd 
ADD wallhaven.tar /root/Pictures/wallhaven.tar

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
#metasploit-framework \
firefox-esr && \
cd /root && git clone https://github.com/kanaka/noVNC.git && \
cd /root/noVNC/utils && git clone https://github.com/kanaka/websockify websockify && \
chmod 0755 /root/startup.sh && \
apt-get autoremove && \
rm -rf /var/lib/apt/lists/* && \
tar xvf /root/Pictures/wallhaven.tar -C /root/Pictures/ && \
apt-get update -y && apt-get dist-upgrade -y

EXPOSE 6080

CMD /bin/bash
