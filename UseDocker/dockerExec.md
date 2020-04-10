
**Lệnh Docker exec, lưu container thành image với commit, xuất image ra file**


* Thi hành lệnh từ host

docker exec <nameContainer> command 

	vd : 
	''' docker exec Ubuntu ls '''
	'''docker exec Ubuntu bash'''

	* Cài htop xem cac tiến trình đang chạy trong container :

	'''# apt update -y && apt install htop'''

	* Cài các phần mềm trong container vd cài nano và ping cho Ubuntu container cài bình thường với lệnh apt 

* Chuyển một container thành image : '''docker commit <nameofContainer>/<ID> "newName":"tag"'''

* Lưu một image thành một file : '''docker save --output "nameImage".tar <ID>''' 

* Phục hồi image từ file nén : '''docker load - <file.tar> '''
	* Đặt tên lại cho image mới load : '''docker tag <ID> "newImage":"tag"'''
	
	**DONE**

