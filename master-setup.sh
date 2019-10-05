#move the centos user off id 1000
usermod centos -u 1005
groupmod centos -g 1005

#add jenkins
groupadd jenkins -g 1000
useradd jenkins -g 1000 -u 1000

#create directory/permissions
mkdir -p /var/jenkins_home
chown -R 1000:1000 /var/jenkins_home
chown -R 1000:1000 /home/jenkins
