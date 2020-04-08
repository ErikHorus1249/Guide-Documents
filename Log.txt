File log trong linux 

Hệ điều hành Linux cung cấp một kho lưu trữ tập trung các file log trong thư mục /var/log.

Hầu hết các file log được chia thành một trong bốn loại:

Application Logs: Nhật ký ứng dụng
Event Logs: Nhật ký sự kiện
Service Logs: Nhật ký dịch vụ
System Logs: Nhật ký hệ thống


Thông qua việc giám sát các file log chúng ta có thể nắm rõ hơn về hiệu suất của máy chủ, bảo mật, thông báo lỗi và các vấn đề tiềm ẩn. Các file log cho phép chúng ta dự đoán các vấn đề sắp tới trước khi thực sự xảy ra.


1. File log /var/log/messages

[root@localhost ~]# cat /var/log/messages
Hoặc

root@ubuntuserver:~# cat /var/log/syslog


2. File log /var/log/auth.log

[root@localhost ~]# cat /var/log/auth.log

Chứa thông tin xác thực trên hệ thống trong máy chủ Debian và Ubuntu được ghi lại. Khi chúng ta tìm kiếm vấn đề liên quan đến cơ chế ủy quyền của người dùng thì hãy tìm kiếm trong file log này.

Thông qua file log này giúp cho chúng ta xác định được:

Các lần thử đăng nhập thất bại
Điều tra các cuộc tấn công và các lỗ hổng liên quan đến cơ chế ủy quyền của người dùng.


3. File log /var/log/secure

[root@localhost ~]# cat /var/log/secure
Đối với các hệ thống sử dụng RedHat và CentOS thì file log này thay thế cho file log /var/log/auth.log bên trên.

Tại đây nó sử chứ các thông tin về xác thực trên hệ thống. Và có thể lưu trữ tất cả các thông tin liên quan đến bảo mật, các lỗi xác thực. File log này còn giúp cho chúng ta theo dõi thông tin đăng nhập sudo, đăng nhập SSH và các lỗi khác được ghi bởi tiến trình chạy nền của dịch vụ bảo mật hệ thống. Ngoài ra còn giúp cho chúng ta thấy được chi tiết về các lần đăng nhập trái phép hoặc thất bại và nó cũng lưu trữ thông tin đăng nhập thành công và theo dõi các hoạt động của người dùng hợp lệ.

https://blogd.net/linux/cac-file-log-quan-trong-tren-linux/


























