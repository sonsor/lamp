@!/usr/bin

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

yum install yum-utils
yum-config-manager --enable remi-php72
yum install php php-fpm php-common php-xml php-mbstring php-json php-zip


systemctl start php-fpm
systemctl enable php-fpm
systemctl status php-fpm