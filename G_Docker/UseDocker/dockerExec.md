
author : [Erik Horus](https://github.com/ErikHorus1249)

### II Thực thi lệnh từ host bằng exec, sử lý container bằng commit và load  


* Thi hành lệnh từ host : ```docker exec <nameContainer> command ```

	vd : 
	``` docker exec Ubuntu ls ```
	```docker exec Ubuntu bash```

	* Cài htop để check tiến trình đang chạy trong container :```# apt update -y && apt install htop```

	* Cài các phần mềm trong container vd cài nano và ping cho Ubuntu container cài bình thường với lệnh apt : ```apt install nano ```

* Chuyển một container thành image : ```docker commit <nameofContainer>/<ID> "newName":"tag"```

* Lưu một image thành một file  nén : ```docker save --output "nameImage".tar <ID>``` 

* Tải image từ file nén : ```docker load - <file.tar> ```
	* Đặt tên lại cho image mới load : ```docker tag <ID> "newImage":"tag"```
	
	### To be continued  ..

