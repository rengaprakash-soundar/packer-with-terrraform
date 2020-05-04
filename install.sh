echo "Type hostname to set"
hostnamectl set-hostname myachine
echo "disable selinux"
sudo setenforce 0
sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
echo "Installing basic package like vim and wget"
sudo yum install wget vim unzip -y
#======update ssh config for AWS=====
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/#PubkeyAuthentication/PubkeyAuthentication/' /etc/ssh/sshd_config

#======Java install=============
sudo yum install java java-devel -y 
