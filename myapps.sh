#!/bin/bash

### apt and snap Install

apt-get update
apt-get upgrade -y
apt-get purge openjdk-\* -y
apt-get install snapd vim conky nmon htop tmux tree git inkscape wget curl texlive-full -y 
apt-get autoremove -y
apt-get clean -y
apt-get autoclean -y

snap install vscode --classic 
snap install skype --classic 
snap install docker brave vlc telegram-desktop 

docker pull sagemath/sagemath:latest


### Java 8 Install

DEST=/usr/local/java
SRC=~/Downloads/*.gz

if [ ! -d $DEST ]
then
    wget http://bcc.uag.ufrpe.br/~sftom/downloads/jdk-8u211-linux-x64.tar.gz 
    mkdir -p $DEST
    for a in $SRC
    do
        tar xzvf "$a" -C $DEST
    done

update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_211/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_211/bin/javac" 1
update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_211/bin/javaws" 1

update-alternatives --set java /usr/local/java/jdk1.8.0_211/bin/java
update-alternatives --set javac /usr/local/java/jdk1.8.0_211/bin/javac
update-alternatives --set javaws /usr/local/java/jdk1.8.0_211/bin/javaws

echo "export JAVA_HOME=/usr/local/java/jdk1.8.0_211\nexport PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
fi

SRC_DEB=~/Downloads/*.deb
for b in $SRC_DEB
do
    dpkg -i "$b" 
done

apt-get install -f

apt-get autoremove -y
apt-get clean -y
apt-get autoclean -y


### my conky settings

cp ~/Downloads/conky.conf /etc/conky/conky.conf
cp ~/Downloads/conky.desktop ~/.config/autostart/conky.destop

