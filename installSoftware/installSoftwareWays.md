

by [Erik Horus](https://github.com/ErikHorus1249)
date : 18/04/2020 

![](https://i.imgur.com/eYInexv.png)
#  Cài đặt Phần mềm trên Ubuntu 
## I . Phần mềm sử dụng trên Ubuntu
### 1. Giới thiệu 
  Các phần mềm được sử dụng trên nền tảng [**Ubuntu**](h) rất đa dạng và phong phú nếu ai nói với bạn là dùng Ubuntu ít ứng dụng hay nghèo nàn về nội dung hơn Windows thì họ nhầm rồi. Nhiều ứng dụng mang tính chất và công năng sử dụng tương tự như trên [**Windows**](h) xuất hiện  trên nên tảng Debian nói chung và Ubuntu nói riêng. Quan trọng hơn cả là hầu hết chúng được phát triển với mục địch phi lợi nhuận tức là **miễn phí**. Hiện tại thì phần mềm sử dụng trên Ubuntu đề được cung cấp và hỗ trợ từ kho ứng dụng (repository) có 4 kho lưu trữ phần mềm chính là: 
-   **Main**: phần mềm miễn phí và mã nguồn mở được Canonical hỗ trợ.
-   **Universe**: phần mềm miện phí và mã nguồn mở được cộng đồng duy trì.
-   **Restricted**: driver độc quyền cho thiết bị.
-   **Multiverse**: phần mềm bị hạn chế với bản quyền và các vấn đề pháp lý.

Việc kích hoạt các kho lưu trữ này cung cấp tất cả phần mềm hay gói mà  bạn cần. Để làm điều này, hãy tìm kiếm trong Dash **“Software & Update”.** Ngoài ra bạn còn có thể cài các phần mềm **manual** theo nhiều cách nữa và tôi sẽ giới thiệu ngay sau đây.

 
### 2. Những cách giúp bạn cài đặt phần mềm và gói trên Ubuntu
 #### a. Sử dụng Ubuntu software 
  **Ubuntu software** là nơi cung cấp cho bạn các ứng dụng có thể cài đặt một cách dễ dàng bằng giao diện đồ họa, nó tương tự như  Windows store của Windows  hay  Ch play trên Android. Điểm khác là mọi phần mềm hay extentions không phải trả bất kì phí nào để có thể cài đặt.
  
   **Ubuntu software** được cung cấp mặc định trên các phiên bản Ubuntu.
 
 ![Find Snap Apps Faster Using This Online Store | WebSetNet](https://websetnet.net/vi/wp-content/uploads/2018/07/find-snap-apps-faster-using-this-online-store.jpg)
 
 Giao diện rất dễ tìm kiếm và cài đặt. Bạn có thể tải như Gnome-tweaks để chỉnh sửa giao diện hay các phần mềm IDE như IntleJ, Netbean, Visual Code  hay các phần mềm chỉnh sửa text như Sublime-text3, Atom . . . Ngoài ra còn có game, các phần mềm giải trí và editor như  Spotify, Vlc. . .
#### b. Cài phần mềm bằng file .deb
 Cài đặt phần mềm bằng file .deb tương tự như việc bạn cài ứng dụng windows bằng file .exe vậy. Cách này rất đơn giản.
 ![Hướng dẫn cài đặt HDH Debian 10 buster - VinaSupport](https://vinasupport.com/uploads/bai-viet/Debian/10/Debian-10.png)
 - Bạn chỉ cần lựa chon bản tải về là x64 hay x86 tùy thuộc vào hệ điều hành của bạn 64bit hay 32bit.
 - Thực hiện lệnh 

>  `$ sudo dpkg -i <nameOfFileDeb>`

Trong một diễn biến xấu là bạn sẽ gặp lỗi như  broken installing có nghĩa là ứng dụng cài đặt xong rồi nhưng không thể chạy  thì hãy sử dụng câu lệnh sau với quyền **admin** (super user)

> `$ sudo apt --fix-broken install`

#### c. Cài phần mềm bằng lệnh apt
Về cơ bản việc cài đặt bằng **apt** và  **ubuntu software** là tương tự vì chúng đều cung cấp phần mềm từ repository. Khác ở đây là thay vì dùng giao diện lệnh thì **apt** sử dụng bằng dòng lệnh qua **terminal**.

![Defense Takeaways from Three Adversary Playbooks | Threatpost](https://media.threatpost.com/wp-content/uploads/sites/103/2018/12/21144206/APT-2018-Year-in-review2.jpg)

Để cài đặt sử dụng lệnh 
> `$ sudo apt install <nameOfSoftware>`
#### d. Cài phần mềm bằng lệnh sử dụng PPA 
**PPA** là viết tắt của Lưu trữ gói cá nhân.(Personal Package Archive) tôi đã sưu tầm được một bài viết về rất chi tiết về **PPA** nếu bạn muốn tìm hiểu nhiều  hơn hãy click [**vào đây**.](./installSoftwarePPA.md)

![Sử dụng PPA trong Ubuntu Linux [Hướng dẫn đầy đủ] - WebSetNet](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/what-is-ppa.png)
Để cài đặt bạn cần dùng ba câu "thần chú" quen thuộc sau đây :

> `$ sudo add-apt-repository ppa:<pathOfRepository>`
> 
> `$ sudo apt update`
> 
> `$ sudo apt install <nameOfSoftware>`

#### d. Cài phần mềm sử dụng trình quản lý gói synaptic
 **[Synaptic Package Manager](https://en.wikipedia.org/wiki/Synaptic_%28software%29)** nó giúp bạn cài đặt các gói phần mêm mà không cần dùng Ubuntu software centre. Bạn có thể nhiều chi tiết về gói mà bạn cài từ nguồn gốc (origin), trạng thái . . . .
 Trước tiên bạn cần cài đặt [**synaptic**](https://en.wikipedia.org/wiki/Synaptic_(software)) 
> `$ sudo apt-get install synaptic`

Dưới đây là giao diện đồ họa của [**synaptic**](https://en.wikipedia.org/wiki/Synaptic_(software))

![](https://i.imgur.com/BWgKbGt.png)
- Tìm phần mềm hay gói mà bạn muốn cài 
- Right click vào gói chọn `Mark for Installation`
- Chọn `Apply`

![Install software from Synaptic Package Manager](https://www.ubuntupit.com/wp-content/uploads/2018/06/Install-software-from-Synaptic-Package-Manager.jpg)
#### e. Cài phần mềm bằng mã nguồn( source code) của nhà phát triển 
 Đây là một cách cài có đôi chút phức tạp hơn cả, Bạn phải chạy `./configure` tạo `make` rồi mới có thể cài đặt được.
 Khi tải mã nguồn về thì nó sẽ ở dạng file nén bạn cần giải nén chúng
 Sau khi giải nén vào thư mục và xem xét kĩ lưỡng phần **README** hay **INSTALL** để biết cách làm sao để cài đặt hay gỡ bỏ phần mềm đó vì nó là hướng dẫn của nhà phát hành nên rất cần thiết.
 Các bước tiếp theo là khởi động **Terminal** chạy các câu lệnh sau ngay trong thư mục mà bạn vừa giải nén. Thực hiện lần lượt 3 lệnh sau.
	

> `$ ./configure`
> 
> `$ make`
> 
> `$ sudo make install`

#### f. Cài đặt các ứng dụng mã nguồn Python với pip (Pip Installs Packages)
 [**Pip**](h) là một cách khác để cài đặt phần mềm, đặc biệt là các ứng dụng viết bằng [**Python**](h). Nó rất dễ sử dụng và nếu bạn là nhà phát triển phần mềm, thì bạn có thể sử dụng Pip để cài đặt và quản lý các gói và module Python khác nhau cho các dự án Python của bạn. Hơn nữa, có rất nhiều phần mềm dựa trên Python tuyệt vời và hữu ích trên thị trường, vì vậy hãy cài đặt tất cả những phần mềm đó, bạn cần học cách sử dụng Pip trên hệ thống của mình.
 
 Cài đặt **[Pip](p)** trong Ubuntu rất đơn giản. Pip thay đổi theo phiên bản Python và theo phiên bản mới nhất của Ubuntu đi kèm với cả **[Python 2](h)** và **[Python 3](h)** theo mặc định, vì vậy bạn chỉ cần kiểm tra phiên bản Python trước khi đi cài đặt cuối cùng.
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


Chú ý : Bạn nên sử dụng **[pip3](h)** để có thể cài đặt các gói viết bằng mã nguồn python3.

#### g. Các cách cài khác mà bạn có thể tìm hiểu 
- [Cài đặt với chính web browser](h)
- [Cài đặt sử dụng AppImage](h)
- [Cài đặt sử dụng snap pagkages](h) 

**DONE .**

Việc khám phá và sử dụng các phần mềm trên Ubuntu sẽ thay đổi dần thói quen sử dụng hệ điều hành của bạn hay cách bạn nhìn nhận Ubuntu. Hãy thay đổi để cảm nhận những trải nghiệm mới mẻ.
#### End credit 
- reference 
	- [**AskUbuntu**](https://askubuntu.com/questions/766900/mysql-doesnt-ask-for-root-password-when-installing) 
	- [**UbuntuPit**](https://www.ubuntupit.com/how-to-install-software-in-ubuntu-linux-a-complete-guide-for-newbie/)
	- [**Ubuntu help**](https://help.ubuntu.com/community/Repositories/Ubuntu)
- author : [**Erik Horus**](https://github.com/ErikHorus1249)





