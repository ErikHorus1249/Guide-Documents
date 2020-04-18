by [Erik Horus](https://github.com/ErikHorus1249)
date : 18/04/2020 

![](https://i.imgur.com/z4Nrqn8.jpg)
##  Mysql-server trên Ubuntu OS
### I . Cài đặt Mysql-server 
 **[Mysql](https://www.mysql.com/)** là một hệ quản trị cơ  sở dữ liệu được sử dụng phổ biến, nó là open source nên rất được yêu thích. Sau đây là cách mà bạn có thể cài Mysql trên chính máy tính đang chạy Ubuntu hay kali của bạn. 
 - Có rất nhiều cách để cài mysql trên các bài turtorial. nhưng tôi sẽ giới thiệu cho bạn cách tôi hay dùng và thấy nó dễ dàng và hiệu quả. Bắt đầu thôi.
 ### 1 . Cài đặt Mysql-server 
 #### Bước 1- Tải file cài đặt của Mysql
 Trước tiên bạn cần tải file cài đặt tại trang chủ của Oracle thì link tôi đã đặt sẵn dưới đây.
 - Nhấn vào để tải về file .deb : [**Đây**](https://dev.mysql.com/downloads/repo/apt/) 
  #### Bước 2- Cài đặt gói .deb  và thực hiện thao tác cài đặt 
  Sau khi đã tải file cài đặt về thì bạn chỉ cần thực thi lệnh dpkg để cài thôi.
+ Bật Terminal tại thư mục `/Downloads` có file tải về

> `$ cd Downloads/`

+ Chạy lệnh dpkg -i (install)

> `$ sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb`

+ Chọn version Mysql mới nhất => OK
![](https://i.imgur.com/tIWGAB2.png)
+ Chạy lệnh update để cập nhật

> `$ sudo apt-get update`

+ Chạy lệnh kiểm tra xem Mysql-server đã add vào respository chưa : 

> `$ sudo apt-cache search mysql-server`

![](https://i.imgur.com/uN0LgIH.png)
- Sau khi kiểm tra thực hiện cài mysql-community-server bằng apt :

> $ sudo apt-get install -y mysql-community-server
![](https://i.imgur.com/KPhlJJB.png)
- Nhập vào password bạn muốn đặt 
![](https://i.imgur.com/X2O3zR4.png)
- Chọn **OK**
+ Hoàn tất bằng lệnh: 
> `$ sudo apt-get install mysql-server`
#### Xong .
 #### Bước 3- Kiểm tra và xác nhận cài đặt thành công.
 - Kiểm tra đã cài thành công chưa : 
> `$ sudo service mysql status`
![](https://i.imgur.com/HaFO2Ds.png)
> `$ mysql -u root -p`

![](https://i.imgur.com/PFhvwha.png)
 ### 2 . Lỗi Password khi cài đặt Mysql-server 
+ Nếu bạn gặp phải tình trạng khi cài mà nó không hiện khung hỏi mật khẩu root 
- Hãy reset lại root password bằng lệnh sau

> `mysql> alter user 'root'@'localhost' identified by '<password>'`
- Với `<password>` là mật khẩu mới của bạn.
### II . Gỡ cài đặt Mysql-server 
Vì một số lý do cá nhân nào đó mà bạn muốn xóa Mysql khỏi máy tính của bạn thì hãy làm theo các bước sau :
Xóa dịch vụ Mysql

### Bước 1 - Dừng hoạt động của Mysql

> `$ sudo service mysql stop`

hoặc 

> `$ sudo systemctl stop mysql`

### Bước 2 -  Kill sạch các tiến trình Mysql

> `$ sudo killall -KILL mysql mysqld_safe mysqld`

### Bước 3 - Tiến hành gỡ bỏ các gói cài đặt 

> `$ sudo apt-get --yes purge mysql-server mysql-client mysql-common`
> 
>  `$ sudo apt-get --yes autoremove --purge`
> 
>  `$ sudo apt-get autoclean`

### Bước 4 - Xóa user và group cùng directory của user ấy

>  `$ sudo deluser --remove-home mysql` 
>  
>  `$ sudo delgroup mysql`

### Bước  5 - Xóa các file và dữ liệu liên quan Mysql


     $ sudo rm -rf /etc/apparmor.d/abstractions/mysql /etc/apparmor.d/cache/usr.sbin.mysqld /etc/mysql /var/lib/mysql /var/log/mysql* /var/log/upstart/mysql.log* /var/run/mysqld
 Cảm ơn bạn đã thõi dõi bài viết. Chúc bạn sử dụng Mysql hiệu quả.
#### Credit 
- [**reference**]() 
	- [AskUbuntu](https://askubuntu.com/questions/766900/mysql-doesnt-ask-for-root-password-when-installing) 
- author : [**Erik Horus**](https://github.com/ErikHorus1249)


