
author : [Erik_HorusPTIT ](https://github.com/ErikHorus1249)

**Vận hành Docker**

* Để kiểm tra các image dùng lệnh  : ```docker images ```
* Tìm kiếm các oficial image ở  : [DockerHub](https://hub.docker.com/)
hoặc tìm kiếm image bằng lệnh :``` docker search <nameOfImage> ```

* Khi cần tải một image về  ta  dùng  : ```docker pull <nameOfImage>:tag```
hoặc tải  mặc định image latest thì dùng : ```docker pull <nameOfImage> or docker pull <nameOfImage>:latest```

* Xóa một image : ```docker image rm <nameOfImage> or docker image rm <ID>``` 

* Xóa một khi image đang được sử dụng thì dùng  để tạo  container : ``` docker image rm -f <ID> ( -f : force)```

* Để run image tức là chuyển thành một container thì dùng lệnh : ```docker run -i -t (-it) <nameOfImage>/<ID>``` 
hoặc dùng lệnh để đặt tên cho container và tên Host : ```docker run -it --name "nameContainer" -h "nameHost" <nameOfImage>/<ID>``` 
kiểm tra nếu chạy ubuntu image : ```cat /etc/*release```

* Kiểm tra  trạng thái của các container : 
    * Hiển thị  các container dang chạy sử dụng lệnh : ```docker ps```
    * Hiển thị  các container đang chạy và đã dừng : ```docker ps  -a```

* Dừng container khi đang trong terminal  : ```exit``` 
* Muốn khởi chạy một container : ```docker start <nameOfContainer>/<ID>```

* Muốn thoát khỏi terminal trong docker mà ko muốn tắt docker : Ctrl P Ctrl Q

* Quay trở lại làm việc với một container đang chạy  : ```docker attach <nameOfContainer>/<ID>```

* Khi đang ở Host mà muốn dừng container : ```docker stop <nameOfContainer>/<ID>```

* Xóa container : ```docker rm <nameOfContainer>/<ID>```
hoặc : ```docker rm -f <nameOfContainer>/<ID>```
