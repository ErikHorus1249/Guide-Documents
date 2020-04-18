
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
- PPA là viết tắt của Lưu trữ gói cá nhân.(Personal Package Archive) tôi đã sưu tầm được một bài viết về PPA nếu bạn muốn tìm hiểu sâu hơn hay [**vào đây**.](./installSoftwarePPA.md)

![Sử dụng PPA trong Ubuntu Linux [Hướng dẫn đầy đủ] - WebSetNet](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/what-is-ppa.png)
- Để cài đặt bạn cần dùng ba câu thần chú quen thuộc sau đây :

> `$ sudo add-apt-repository ppa:embrosyn/cinnamon`
> 
> `$ sudo apt update`
> 
> `$ sudo apt install cinnamon`
-  Trên đây là ví dụ khi bạn cài cinnamon với ppa 
#### d. Cài phần mềm sử dụng trình quản lý gói synaptic
- **[Synaptic Package Manager](https://en.wikipedia.org/wiki/Synaptic_%28software%29)** nó giúp bạn cài đặt các gói phần mêm mà không cần dùng Ubuntu software centre. Bạn có thể nhiều chi tiết về gói mà bạn cài từ nguồn gốc (origin), trạng thái . . . .
- Trước tiên bạn cần cài đặt [**synaptic**](https://en.wikipedia.org/wiki/Synaptic_(software)) 
> `$ sudo apt-get install synaptic`

![](https://i.imgur.com/BWgKbGt.png)
- Tìm phần mềm hay gói mà bạn muốn cài 
- Right click vào gói chọn `Mark for Installation`
- Chọn `Apply`

![Install software from Synaptic Package Manager](https://www.ubuntupit.com/wp-content/uploads/2018/06/Install-software-from-Synaptic-Package-Manager.jpg)
#### e. Cài phần mềm bằng mã nguồn( source code) của nhà phát triển 
- Đây là một cách cài có đôi chút phức tạp hơn cả, Bạn phải chạy `./configure` rồi tạo `make` rồi mới có thể cài đặt được.
- Khí tải mã nguồn về thì nó sẽ ở dạng file nén bạn cần giải nén chúng
- Sau khi giải nén vào thư mục và xem xét kĩ lưỡng phần **README** hay **INSTALL** để biết cách làm sao để cài đặt hay gỡ bỏ phần mềm đó vì nó là hướng dẫn của nhà phát hành nên rât cần thiết.
- Các bước tiếp theo là khởi động **Terminal** chạy các câu lệnh sau ngay trong thư mục mà bạn vừa giải nén. Thực hiện lần lượt 3 lệnh sau.
	

> `$ ./configure`
> 
> `$ make`
> 
> `$ sudo make install`

#### f. Cài đặt các ứng dụng mã nguồn Python với pip (Pip Installs Packages)
- [**Pip**](h) là một cách khác để cài đặt phần mềm, đặc biệt là các ứng dụng dựa trên Python, trong Ubuntu Linux. Pip thực sự là một hệ thống quản lý phần mềm dựa trên dòng lệnh cho các ứng dụng được viết trên ngôn ngữ lập trình [**Python**](h). Nó rất dễ sử dụng và nếu bạn là nhà phát triển phần mềm, thì bạn có thể sử dụng Pip để cài đặt và quản lý các gói và mô-đun Python khác nhau cho các dự án Python của bạn. Hơn nữa, có rất nhiều phần mềm dựa trên Python tuyệt vời và hữu ích trên thị trường, vì vậy hãy cài đặt tất cả những phần mềm đó, bạn cần học cách sử dụng Pip trên hệ thống của mình.
- Cài đặt **[Pip](p)** trong Ubuntu rất đơn giản. Pip thay đổi theo phiên bản Python và theo phiên bản mới nhất của Ubuntu đi kèm với cả **[Python 2](h)** và **[Python 3](h)** theo mặc định, vì vậy bạn chỉ cần kiểm tra phiên bản Python trước khi đi cài đặt cuối cùng.
- Cài đặt **[Pip](p)** cho Ubuntu

	

> `$ sudo apt install python-pip`
> 
> `$ sudo apt install python3-pip`
-   Để tìm kiếm các gói :

> `pip search <search_string>`


- Lệnh này sẽ cho bạn biết số hiệu (index) của gói .

-   Cài đặt :


> `pip install <package_name>`


-   Remove a Python package installed via pip, use the following command:


> `pip uninstall <installed_package_name>`


Chú ý : Bạn nên sử dụng pip3 để có thể cài đặt các gói viết bằng mã nguồn python3.

#### g. Các cách cài khác mà bạn có thể tìm hiểu 
- [Cài đặt với chính web browser](h)
- [Cài đặt sử dụng AppImage](h)
- [Cài đặt sử dụng snap pagkages](h)
- 
**Xong rồi**
Cảm ơn bạn đã theo dõi hết bài viết. Mong là bạn đã có nhiều cách hơn để cài đặt ứng dụng trên Ubuntu.
#### Credit 
- [**reference**]() 
	- [**AskUbuntu**](https://askubuntu.com/questions/766900/mysql-doesnt-ask-for-root-password-when-installing) 
	- [**UbuntuPit**](https://www.ubuntupit.com/how-to-install-software-in-ubuntu-linux-a-complete-guide-for-newbie/)
- author : [**Erik Horus**](https://github.com/ErikHorus1249)





