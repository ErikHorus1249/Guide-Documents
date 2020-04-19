
by  [Erik Horus](https://github.com/ErikHorus1249)
date : [15/04/2020](h)
![](https://i.imgur.com/jyvBLIr.png)
# Cài đặt Docker trên OS  Kali Linux 

## I. Cài đặt docker
Xin chào, mình là **[Erik](e)** ngay sau đây là các bước cài **Docker** mà bạn có thể tham khảo. Đồng thời mình sẽ chỉ ra một số lỗi hay mắc phải khi cài **Docker** trên hệ điều hành **[Kali Linux](https://www.kali.org/)**, nó cũng không khác cách cài trên **[Ubuntu](https://ubuntu.com/)** là mấy đâu.
- Cập nhật OS : 
 > `$ sudo apt update`

- Thêm khóa  [PGP](https://vi.wikipedia.org/wiki/Pretty_Good_Privacy) của Docker:

> ```$ curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - ```

- Tiếp đến là cầu hình APT để có thể download, cài đặt và cập nhật **docker**
> `$ echo 'deb [arch=amd64] https://download.docker.com/linux/debian
 buster stable' | sudo tee /etc/apt/sources.list.d/docker.list `

- Câp nhật để download các gói cài đặt 

> `$ sudo apt update`
- Nếu máy của bạn đã từng cài docker trước đó thì hãy xóa bản cài đặt cũ :
> `$ sudo apt remove docker docker-engine docker.io`


- Cài đặt docker :

> `$ sudo apt install docker-ce -y`

- Khởi động docker 

    

> $ sudo systemctl start docker


## II. Kiểm tra thông tin docker sau khi cài đặt
- Sau khi cài đặt docker kiểm tra cài đặt có thành công hay không :

>  ```$ docker info```

- Đừng lo lắng khi bạn thấy dòng chữ sau hiện lên : ```bash: docker: command not found```
- Hãy khởi động  docker bằng lệnh sau : 

> ```$ systemctl restart docker```

- Và giờ bạn có thể tiểm tra trạng thái của **docker client** và **deamon** sau khi cài đặt  : 

> ```$ service docker status```

Hoặc

> `$ docker info`

> [**Client**](h):  Debug Mode: false
> 
> [**Server**](h):  Containers: 0   Running: 0   Paused: 0   Stopped: 0  Images:
> 1  Server Version: 19.03.8  Storage Driver: overlay2   Backing
> Filesystem: <unknown>   Supports d_type: true   Native Overlay Diff:
> true  Logging Driver: json-file  Cgroup Driver: cgroupfs  Plugins:  
> Volume: local   Network: bridge host ipvlan macvlan null overlay  
> Log: awslogs fluentd gcplogs gelf journald json-file local logentries
> splunk syslog  Swarm: inactive  Runtimes: runc  Default Runtime: runc 
> Init Binary: docker-init  containerd version:
> 7ad184331fa3e55e52b890ea95e65ba581ae3429  runc version:
> dc9208a3303feef5b3839f4323d9beb36df0a9dd  init version: fec3683 
> Security Options:   apparmor   seccomp    Profile: default  Kernel
> Version: 5.4.0-kali4-amd64  Operating System: Kali GNU/Linux Rolling 
> OSType: linux  Architecture: x86_64  CPUs: 4  Total Memory: 3.78GiB 
> Name: erik  ID:
> MBLD:FNSG:7GW3:6DQ2:7Y2A:67LX:2LWI:FQML:5BVN:T6IE:O6GC:KMMJ  Docker
> Root Dir: /var/lib/docker  Debug Mode: false  Registry:
> https://index.docker.io/v1/  Labels:  Experimental: false  Insecure
> Registries:
>   127.0.0.0/8  Live Restore Enabled: false
> 
> WARNING: No swap limit support
- Nếu bạn nhận được thông tin về docker có đủ cả [**client**](h) và [**server**](d) tức là **deamon socket** của bạn hoạt động tốt thì bạn đã thành công trong việc cài docker.
- Còn nếu không thì bạn đã gặp phải vấn đề cấp quyền hoạt động cho deamon socket hoặc một vấn đề tệ hại nào đó. Hay theo dõi tiếp bài viết của tôi để khắc phục. 

## III. Một số sự cố nhỏ
### 1. Bạn không đủ quyền để  khởi chạy daemon socket
- Nó sẽ trông như trong ảnh lý do bởi vì bạn chưa phải là **root user**(hay còn gọi là [**non root user**](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user)) và cũng chưa được add thành **$User** trong **docker group**.  Nó không phải lỗi mà chỉ là thiếu xót trong quá trình sau cài đặt thôi :>
- Bạn có thể tham khảo qua tài liệu hướng dẫn của Docker Docs [**tại đây**](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user)

 ![](https://i.imgur.com/Ie8HGNv.png)
 - Vậy điều cần làm bây giờ là bạn hãy add mình vào docker group

    

>  $ sudo usermod -aG docker $USER

-  Sau đó hãy **restart** máy tính của bạn vào vào lại **docker**

 ### Chúc bạn cài đặt thành công .
## End credit:
* Reference link
	* [**forum docker**](https://forums.docker.com/t/failed-to-start-docker-service-unit-is-masked/67413)
	*  [ **The official docker docs**](https://docs.docker.com/engine/install/ubuntu/)
	* [**stackoverflow**](https://stackoverflow.com/questions/48957195/how-to-fix-docker-got-permission-denied-issue)
	* [**ceos3c**](https://www.ceos3c.com/hacking/install-docker-on-kali-linux/)
* author :[**Erik Horus** ](https://github.com/ErikHorus1249)










