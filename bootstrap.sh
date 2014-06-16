#!/usr/bin/env bash

cp /vagrant/hosts /etc/hosts
cp /vagrant/resolv.conf /etc/resolv.conf
mkdir -p /root/.ssh; chmod 600 /root/.ssh; cp /home/vagrant/.ssh/authorized_keys /root/.ssh/


#sudo add-apt-repository "deb http://repository.stratio.com/sds/stable/ubuntu/13.10/ binary/"

sudo aptitude update
sudo aptitude safe-upgrade -y
#sudo aptitude install r-base -y
wget http://repository.stratio.com/sds/stable/stratio-sds-installer.sh
chmod +x stratio-sds-installer.sh
sudo ./stratio-sds-installer.sh

#sudo aptitude install  sds-setup -y
#sudo aptitude install sds-dashboard-webui -y