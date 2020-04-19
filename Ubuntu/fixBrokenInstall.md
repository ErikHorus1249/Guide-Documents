sudo apt-get install libxcb-xtest0

apt --fix-broken install




by [Erik Horus](https://github.com/ErikHorus1249)
date : 18/04/2020 

![](https://i.imgur.com/eYInexv.png)
#  Cài đặt Phần mềm trên Ubuntu 
## I . Phần mềm sử dụng trên Ubuntu
### 1. Giới thiệu 
  Các phần mềm được sử dụng trên nền tảng [**Ubuntu**](h) rất đa dạng và phong phú nếu ai nói với bạn là dùng Ubuntu ít ứng dụng hay nghèo nàn về nội dung hơn Windows thì họ nhầm rồi. Nhiều ứng dụng mang tính chất và công năng sử dụng tương tự như trên [**Windows**](h) xuất hiện  trên nên tảng Debian nói chung và Ubuntu nói riêng. Quan trọng hơn cả là chúng được phát triển với mục địch phi lợi nhuận tức là miễn phí. Hiện tại thì phần mềm sử dụng trên Ubuntu đề được cung cấp và hỗ trợ từ kho ứng dụng khổng lồ của **[Debian](https://www.debian.org/index.vi.html)**.
Việc khám phá và sử dụng các phần mềm trên Ubuntu sẽ thay thế dần khoảng trống mà Windows để lại. Hãy thay đổi để cảm nhận những trải nghiệm mới mẻ.
 
### 2. Những cách bạn có thể cài đặt phần mêm trên Ubuntu
 #### a. Sử dụng Ubuntu software 
 - Ubuntu software là nơi cung cấp cho bạn các ứng dụng có thể cài đặt một cachs dễ dàng bằng giao diện đồ họa, nó tương tự như **Windows store** hay **Ch play** trên Android. Khác là mọi phần mềm không phải trả bất kì phí nào để có thể cài đặt.
 ![Find Snap Apps Faster Using This Online Store | WebSetNet](https://websetnet.net/vi/wp-content/uploads/2018/07/find-snap-apps-faster-using-this-online-store.jpg)
 - Giao diện rất dễ tìm kiếm và cài đặt. Bạn có thể tải vô vàn thứ như Gnome-tweaks để chỉnh sửa giao diện hay các phần mềm IDE hay chỉnh sửa text như intleJ, sublime-text3 . . . Ngoài ra còn có game. 
#### b. Cài phần mềm bằng file .deb
 - Cài đặt phần mềm bằng file .deb tương tự như việc bạn cài ứng dụng windows bằng file .exe vậy. Cách này khá đơn giản.
 ![Hướng dẫn cài đặt HDH Debian 10 buster - VinaSupport](https://vinasupport.com/uploads/bai-viet/Debian/10/Debian-10.png)
 - Bạn chỉ cần lựa chon bản tải về là x64 hay x86 tùy thuộc vào hệ điều hành của bạn 64bit hay 32bit.
 - Thực hiện lệnh 

>  `$ sudo dpkg -i <nameOfFileDeb>`
#### c. Cài phần mềm bằng lệnh apt
- Về cơ bản việc cài đặt bằng **apt** và bằng **ubuntu software** là tương tự vì chúng đều cung cấp phần mềm từ repository. Khác ở đây là thay vì dùng giao diện lệnh thì **apt** sử dụng bằng dòng lệnh quan **terminal**.
![Defense Takeaways from Three Adversary Playbooks | Threatpost](https://media.threatpost.com/wp-content/uploads/sites/103/2018/12/21144206/APT-2018-Year-in-review2.jpg)
- Để cài đặt sử dụng lệnh 
> `$ sudo apt install <nameOfSoftware>`
#### d. Cài phần mềm bằng lệnh sử dụng PPA 
- PPA là viết tắt của Lưu trữ gói cá nhân.(Personal Package Archive)

![Sử dụng PPA trong Ubuntu Linux [Hướng dẫn đầy đủ] - WebSetNet](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/what-is-ppa.png)

#### Credit 
- [**reference**]() 
	- [AskUbuntu](https://askubuntu.com/questions/766900/mysql-doesnt-ask-for-root-password-when-installing) 
	- [a](https://www.ubuntupit.com/how-to-install-software-in-ubuntu-linux-a-complete-guide-for-newbie/)
- author : [**Erik Horus**](https://github.com/ErikHorus1249)






