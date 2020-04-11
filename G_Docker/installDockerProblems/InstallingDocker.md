
author : [Erik Horus](https://github.com/ErikHorus1249)

# Cài đặt Docker trên OS  Ubuntu/Kali Linux 

**I. Lệnh cài đặt docker**
- Cập nhật OS : ```sudo apt update -y```

-  Cài Docker bằng lệnh sau  : ```sudo apt-get install docker.io```

**II. Kiểm tra thông tin docker sau khi cài đặt**
- Sau khi cài đặt docker kiểm tra cài đặt có thành công hay không : ```docker```
- Đừng lo lắng khi bạn thấy dòng chữ sau hiện lên : ```bash: docker: command not found```
- Hãy khởi động  docker bằng lệnh sau : ```service docker start``` nhập userpassword và ```Enter```
- Và giờ bạn có thể tiểm tra trạng thái của docker client và demon sau khi cài đặt  : ```service docker status``` 
- ![Docker đã sẵn sàng](https://imgur.com/undefined)
- 
**III. Một số sự cố nhỏ**

 -![ docker inactive :](https://imgur.com/ION4Dpm)

+ Hãy bình tĩnh và restart service  : ```systemcl restart docker```

+ Kiểm tra xem  service mask chưa  : ```sudo systemctl list-unit-files```

 ![Chưa mask](https://imgur.com/Hb0hJVL)

+ Fix command : ```sudo systemctl unmask docker && systemctl restart docker```

![Đã mask]( https://imgur.com/pK5xe8u)

![Done](https://imgur.com/Sl29bGQ)

![Docker is active](https://imgur.com/1ps9X2b)

- **Xong rồi hãy voọc thật nhiều với Docker .**
## credit:
* Bạn có thể tìm thêm thông tin tại trang chủ của  [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [Reference link](https://forums.docker.com/t/failed-to-start-docker-service-unit-is-masked/67413)
* [andropytool](https://github.com/alexMyG/AndroPyTool)
* [me](https://github.com/ErikHorus1249)

**THANK FOR READING**








