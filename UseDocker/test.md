

** Để kiểm tra các image dùng lệnh docker images** 

có thể tìm kiếm các oficial image ở hub.docker.c
hoặc tìm kiếm image bằng lệnh : docker search <nameOfImage>

khi cần tải một image về : docker pull <nameOfImage>:tag
hoặc cài mặc định image latest thì : docker pull <nameOfImage> or docker pull <nameOfImage>:latest

Xóa một image : docker image rm <nameOfImage> or docker image rm <ID> 

khi image đang được sử dụng thì dùng docker image rm -f <ID> ( -f : force)

để run image tức là chuyển thành một container thì dùng lệnh : docker run -i -t (-it) <nameOfImage>/<ID> 
hoặc dùng lệnh để đặt tên cho container và tên Host : docker run -it --name "nameContainer" -h "nameHost" <nameOfImage>/<ID> 
kiểm tra nếu chạy ubuntu image : cat /etc/*release

kiểm tra các container dang chạy sử dụng lệnh : docker ps
kiểm tra các container đang chạy và đã dừng : docker ps  -a

tắt docker thì type : exit 
muốn khởi chạy một container : docker start <nameOfContainer>/<ID>

muốn thoát khỏi terminal trong docker mà ko muốn tắt docker : Ctrl P Ctrl Q

quay trở lại làm việc với docker : docker attach <nameOfContainer>/<ID>

khi đang ở Host mà muốn dừng container : docker stop <nameOfContainer>/<ID>

xóa container : docker rm <nameOfContainer>/<ID>
hoặc : docker rm -f <nameOfContainer>/<ID>



























