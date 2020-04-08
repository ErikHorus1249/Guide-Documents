Xóa dịch vụ Mysql

Bước 1 : Dừng hoạt động của Mysql
sudo service mysql stop

Bước 2 : Kill sạch các tiến trình Mysql
sudo killall -KILL mysql mysqld_safe mysqld

Bước 3 : Tiến hành gỡ bỏ các gói cài đặt 

# sudo apt-get --yes purge mysql-server mysql-client mysql-common
# sudo apt-get --yes autoremove --purge
# sudo apt-get autoclean

Bước 4 : Xóa user và group cùng directory cua user ấy

# sudo deluser --remove-home mysql
# sudo delgroup mysql

Bước  5 : Xóa các file và dữ liệu liên quan Mysql


# sudo rm -rf /etc/apparmor.d/abstractions/mysql /etc/apparmor.d/cache/usr.sbin.mysqld /etc/mysql /var/lib/mysql /var/log/mysql* /var/log/upstart/mysql.log* /var/run/mysqld
1
# sudo rm -rf /etc/apparmor.d/abstractions/mysql /etc/apparmor.d/cache/usr.sbin.mysqld /etc/mysql /var/lib/mysql /var/log/mysql* /var/log/upstart/mysql.log* /var/run/mysqld


