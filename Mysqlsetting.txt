Cài Mysql-server

link :https://dev.mysql.com/downloads/repo/apt/

+ Bật Terminal tại thư mục có file tải về
+ Chạy lệnh sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb
+ Chọn version Mysql mới nhất => OK
+ Chạy lệnh sudo apt-get update để cập nhật
+ Chạy lệnh kiểm tra xem đã add vao respository chưa : sudo apt-cache search mysql-server
+ sudo apt-get install -y mysql-community-server
+ Cài đặt : sudo apt-get install mysql-server
+ Đặt password root
+ Nếu ko đặt được pass :mysql> alter user 'root'@'localhost' identified by '<password>';
(link : https://askubuntu.com/questions/766900/mysql-doesnt-ask-for-root-password-when-installing )
+ Kiểm tra đã cài đc chưa : sudo service mysql status

=======> active(running) ------> 

pass:1421999Tuananh
