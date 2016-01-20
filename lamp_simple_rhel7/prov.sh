#!/bin/bash
sudo yum install vim iptables -y

touch /tmp/provisioned
echo "root:stackbuilders" | sudo chpasswd
sed -i '/PermitRootLogin without-password/c\PermitRootLogin yes' /etc/ssh/sshd_config
#sudo /etc/init.d/sshd restart
sudo systemctl restart sshd.service
