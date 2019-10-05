yum install git java -y

#move the centos user (or any other user) off id 1000
usermod centos -u 1005
groupmod centos -g 1005

#add jenkins
groupadd jenkins -g 1000
useradd jenkins -g 1000 -u 1000

#add jenkins to sudoers file
echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

#agent home directory
mkdir -p /home/jenkins/agent

#permissions
chown -R 1000:1000 /home/jenkins
