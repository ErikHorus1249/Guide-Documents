
author : [Erik Horus](https://github.com/ErikHorus1249)

### III Chia sẻ dữ liệu trong Docker, tạo quản lý volume 

* **Chia sẻ dữ liệu giữa máy tính của bạn và container trong docker** : ```docker r -it -v <pathFileInHost>":"<MapPathInContainer> <ID>/<nameOfImage>```(-v volume)
	* Khi đó dữ liệu của máy tính sẽ được sync với dữ liệu trong container khi đó mọi sự thay đổi file từ container sẽ thực thi nguyên vẹn trên máy tính thật.
		* sử dụng lệnh :```echo "share" > newDoc.txt``` tạo một file mới trong thư mục được ánh xạ trong container để xem sự thay đổi dữ liệu file gốc trên máy 			host.
	* Khi container bị xóa thì mọi dữ liệu trên máy host không thay đổi.
	
* **Chia sẻ dữ liệu giữ các Container** : ``` docker run -it --volume-from <mapID>/<MapnameOfContainer> <ID>/<nameOfImage> ``` 
	* Dữ liệu đồng bộ hóa ở cả hai container trong trường hợp một trong hai container chia sẻ dữ liệu với host thì dữ liệu ở các nơi lưu trữ trong 3 vị trí sẽ dồng bộ. 		với nhau.
	
* **Chia sẻ dữ liệu giữa container và ổ đĩa** : Chính volume và dữ liệu từ các container lưu trên volume sẽ không bị mất khi container bị xóa, chỉ mất khi xóa volume.

	* **Khởi tạo và chỉnh sửa Volume** :
	
		* Khởi tạo ổ đĩa theo cách **mặc định**: ```docker volume create <newNameOfVolume>``` vd : docker volume create volD => tạo ra một volume có tên là volD.
		* Khởi tạo ổ đĩa theo cách **thủ công** : ```docker volume create --opt device=<pathFileInHost> --opt type=none --opt o=bind <newNameVolume>```
		* Để kiểm tra các volume : ```docker volume ls``` // Kiểm tra chi tiết thông số volume : ```docker volume inspect <nameOfVolume>```.
		* Để xóa một volume : ```docker volume rm <nameOfVolume>```.
		
	* **Khởi tạo container và mount với volume** :
		
		* Lệnh khởi tạo : ```docker run -it --mount source=<nameOfVolume>,target=<MapPathInContainer> <ID>/<nameOfImage>```
		Vd : ```docker run -it --name Com1 --mount source=volD,target=/home/doc/ 567823ce8``` : đã khởi tạo một container tên là Com1 được mount với volume 			**volD** mới tạo ở bước trên với image có ID : 567823ce8 . dữ liệu sẽ được dẫn vào thự mục **/home/doc/**.
		* Đối với volume khởi tạo từ một file đặt trên máy host thì ta có thể mount bằng hai câu lệnh  
			**cách 1** : ``` docker run -it -v <nameOfVolume>":"<MapPathInContainer> <ID>/<nameOfImage>```
			**cách 2** : ``` docker run -it --mount  source=<nameOfVolume>,target=<MapPathInContainer> <ID>/<nameOfImage>```
			
	### To be continued  ...
		
	



