
author : [Erik Horus](https://github.com/ErikHorus1249) 
date : 13/04/2020
![](https://i.imgur.com/2VEIasN.jpg)
## Cài đặt cơ bản sau khi cài Ubuntu 
## I. Cập nhật hệ  thống 
- Open **terminal** : 

> ```sudo apt-get update```

  hoặc 

> ```sudo apt update -y```

 và  

> ```sudo apt-get upgrade ```

- Chạy **software update**

> restart

## II. Sync dữ liệu từ Driver và Dropbox, clone Git 
- Download các **file** dữ liệu cũ về từ  [**GG driver**](https://drive.google.com/drive/u/0/my-drive)
-  Download dữ liệu từ [**Dropbox**](https://www.dropbox.com/)
- Sử dụng [**git** clone](https://github.com/ErikHorus1249)
- Đăng nhập tài khoản online : [**Google**](), [**Ubuntu**]() 
## III. Set up keyboard shortcuts 
- setup keyboard shortcuts : 
	- name : **xkill** , command : **xkill**, keyboard : `Ctrl + Alt + X`
	- name : **sublime-text 3**, command : **subl .**, keyboard : `Ctrl + Alt + S`
	- name : **setting**, keyboard : Super + I
	- name : **files**, keyboard : Super + E
	- name : **visual Code**, keyboard : Super + C
	- name : **browser**, keyboard : Super + B
	- **. . .**
## IV. Cài đặt các ứng dụng :
### 1. Lệnh :
> `sudo apt install <nameOfApp>`

> `sudo dpkg -i <nameOfpagketDebian`
### 2. Các ứng dụng và gói cần cài : 
- Applications : 
	- [**Sublime-text 3**](https://www.sublimetext.com/)
	- [**Gnome-tweaks**]()
	- [**Chrome/ chromium**](https://www.google.com/intl/vi_vn/chrome/)
	- [**Dconf Editor**]()
	-  [**Python 3**](https://www.python.org/)
	- [**JRE, JDK**](https://www.oracle.com/index.html) 
	- [**MySQL**](https://www.mysql.com/)
	- [**Xampp**](https://www.apachefriends.org/index.html)
	- [**Nautilus**](https://askubuntu.com/questions/156998/how-do-i-start-nautilus-as-root)
	- [**Node js**](https://nodejs.org/en/)
	- [**Docker CE**](https://www.docker.com/)
### 3. Cài Đặt chi tiết 
#### a. Thiết lập giao diện với Gnome-tweaks và theme GTK3 từ Gnome Look.
- Bạn có thể vào website của [**Gnome Look**](https://www.gnome-look.org/) chọn một theme, icon hay cusor  mình thích và tải về máy.  Sau đó tại thư mục `/home/` tạo một **hidden folder** bằng giao diện hoặc bằng lệnh sau : `mkdir .themes ` và `mkdir .icons`. Giải nén file theme và icon vừa tải về rồi chuyển chúng đến folder vừa tạo.
- Mở Gnome-tweaks bằng lệnh ```gnome-tweaks`` hoặc  tìm tweaks trong ứng dụng. `Super + A`
- Chọn `tag` **Appearance**  Hãy thay đổi nội dung của **Applications**, **Icons**, ... theo tên **theme** và **icon** mà bạn đã tải về trước đó. Ví dụ : theme của t dùng là [**Kripton**](https://www.gnome-look.org/p/1365372/) icon set là : [**Breeze-Amore-Dark**](https://www.gnome-look.org/s/Gnome/p/1352717)
![](https://i.imgur.com/00uLIPQ.png)result : ( giao diện kali linux 2020 sau khi dùng Gnome-tweaks/ Gnome 3.36)
![](https://i.imgur.com/dRwnrYh.png)
#### b. Cài đặt tiện ích  giao diện bằng gsettings với Dconf Editor hoặc dùng lệnh trực tiếp 
- Khi bật một cửa sổ mới ở trung tâm màn hình : 
	 - Khởi chạy **Dconf Editor** và truy cập `/org/gnome/mutter/`. Đặt `center-new-windows` `true` 
	- Lệnh : `gsettings set org.gnome.mutter center-new-windows true`
- Hiển thị giây ở đồng hồ : `gsettings set org.gnome.desktop.interface clock-show-seconds true`

=> còn rất nhiều tính năng bạn có thể khởi động qua **gsettings** hãy khám phá nó để có được giao diện phù hợp với bạn. 

Cửa sổ new teminal hiển thị giữa màn hình.
![](https://i.imgur.com/XT4arYw.png)
#### c. Cài Node js 
![](https://i.imgur.com/28sK106.png)
- Tải gói cài đặt `node-vxx.xx.x-linux-x64.tar.xz` tại [**Node js**](https://nodejs.org/en/)

- Cách cài đặt  nodejs : tải file giải nén đổi tên thành **node** cho gọn và dùng lệnh **copy** **-r** (recursively) các folder bin, include, lib, share vào `/usr/` 

> `sudo cp -r node/{bin,include,lib,share} /usr/`
- Xong.
#### d. Cài Xampp  
![](https://i.imgur.com/D0IeUIL.jpg)
- Tải gói cài đặt tại [**Xampp**](https://www.apachefriends.org/download.html)
- Sử dụng lệnh cấp quyền chạy run cho người dùng 
> `sudo chmod + x`
> `./<namOfRunXampp>`
### e. Cài Docker
- Mọi hướng dẫn về docker : [tại  đây](./G_Docker/installDockerProblems/InstallingDocker.md)
![](https://i.imgur.com/jyvBLIr.png)
### Xong rồi . 

#### credit 
- [by Erik Horus](https://github.com/ErikHorus1249) 
- reference
	- [ ask Ubuntu](https://askubuntu.com/)
	- [ stack Exchange](https://stackexchange.com/)


