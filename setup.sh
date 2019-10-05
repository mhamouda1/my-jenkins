usermod centos -u 1005
groupmod centos -g 1005
groupadd jenkins -g 1000
useradd jenkins -g 1000 -u 1000
chown -R 1000:1000 /var/jenkins_home
