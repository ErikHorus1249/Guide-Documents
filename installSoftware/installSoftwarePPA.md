author : [AaronStuart](https://websetnet.net/vi/t%C3%A1c-gi%E1%BA%A3/aaronstuart/ "Bài đăng của AaronStuart") Mar 1, 2019
# Sử dụng PPA trong Ubuntu Linux [Hướng dẫn đầy đủ]

Bài viết của tác giả  [AaronStuart](https://websetnet.net/vi/t%C3%A1c-gi%E1%BA%A3/aaronstuart/ "Bài đăng của AaronStuart").

Nếu bạn đã và đang sử dụng Ubuntu hoặc một số bản phân phối Linux khác dựa trên Ubuntu như Linux Mint, Linux Lite, Zorin OS, v.v., bạn có thể đã bắt gặp ba dòng ma thuật thuộc loại này:

```
sudo add-apt-repository ppa: dr-akulavich / lighttable sudo apt-get update sudo apt-get install lighttable-Installer
```

Một số trang web đề xuất các loại dòng này để [cài đặt ứng dụng trong Ubuntu](https://itsfoss.com/remove-install-software-ubuntu/). Đây là những gì được gọi là cài đặt một ứng dụng bằng PPA.

Nhưng PPA là gì? Tại sao nó được sử dụng? Sử dụng PPA có an toàn không? Sử dụng PPA đúng cách như thế nào? Làm thế nào để xóa một PPA?

Tôi sẽ trả lời tất cả các câu hỏi trên trong hướng dẫn chi tiết này. Ngay cả khi bạn đã biết một vài điều về PPA, tôi chắc chắn bài viết này vẫn sẽ bổ sung vào kiến ​​thức của bạn.

Xin lưu ý rằng tôi đang viết bài viết này bằng Ubuntu. Do đó, tôi sẽ sử dụng thuật ngữ Ubuntu gần như ở mọi nơi nhưng các giải thích và các bước cũng có thể áp dụng cho các bản phân phối dựa trên Debian / Ubuntu khác.

## PPA là gì? Tại sao nó được sử dụng?

![Mọi thứ bạn cần biết về PPA trong Ubuntu Linux](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/what-is-ppa-1.png)

PPA là viết tắt của Lưu trữ gói cá nhân.

Điều đó có ý nghĩa? Chắc là không.

Trước khi bạn hiểu PPA, bạn nên biết khái niệm về kho lưu trữ trong Linux. Tôi sẽ không đi vào chi tiết ở đây mặc dù.

### Khái niệm về kho và quản lý gói

Kho lưu trữ là một tập hợp các tệp có thông tin về các phần mềm khác nhau, các phiên bản của chúng và một số chi tiết khác như tổng kiểm tra. Mỗi phiên bản Ubuntu có bộ bốn kho lưu trữ chính thức của riêng mình:

-   **Chủ yếu** - Phần mềm mã nguồn mở và miễn phí được Canonical hỗ trợ.
-   **Vũ trụ** - Phần mềm nguồn mở và miễn phí được cộng đồng duy trì.
-   **Bị hạn chế** - Trình điều khiển độc quyền cho các thiết bị.
-   **Multiverse** - Phần mềm bị hạn chế bởi bản quyền hoặc các vấn đề pháp lý.

Bạn có thể thấy các kho như vậy cho tất cả các phiên bản Ubuntu [đây.](https://href.li/?http://archive.ubuntu.com/ubuntu/dists/). Bạn có thể duyệt qua chúng và cũng có thể đi đến các kho riêng lẻ. Ví dụ: kho lưu trữ chính Ubuntu 16.04 có thể được tìm thấy [đây.](https://href.li/?http://archive.ubuntu.com/ubuntu/dists/xenial/main/).

Về cơ bản, đó là một URL web có thông tin về phần mềm. Làm thế nào để hệ thống của bạn biết các kho lưu trữ này ở đâu?

Thông tin này được lưu trữ trong tệp nguồn.list trong thư mục / etc / apt. Nếu bạn nhìn vào nội dung của nó, bạn sẽ thấy rằng nó có URL của các kho lưu trữ. Các dòng có # ở đầu được bỏ qua.

Bây giờ khi bạn chạy lệnh sudo apt update, hệ thống của bạn sẽ sử dụng [Công cụ APT](https://wiki.debian.org/Apt) để kiểm tra repo và lưu trữ thông tin về phần mềm và phiên bản của chúng trong bộ đệm. Khi bạn sử dụng lệnh sudo apt install pack_name, nó sẽ sử dụng thông tin để lấy gói đó từ URL nơi phần mềm thực tế được lưu trữ.

Nếu kho lưu trữ không có thông tin về một gói nhất định, bạn sẽ thấy một lỗi như:

```
E: Không thể xác định vị trí gói
```

Tại thời điểm này, tôi khuyên bạn nên đọc [hướng dẫn sử dụng lệnh apt](https://itsfoss.com/apt-command-guide/). Điều này sẽ giúp bạn hiểu rõ hơn về các lệnh apt, cập nhật, v.v.

Vì vậy, đây là về kho. Nhưng PPA là gì? Làm thế nào để nó nhập vào hình ảnh?

### Tại sao PPA được sử dụng?

Như bạn có thể thấy, Ubuntu kiểm soát phần mềm nào và quan trọng hơn là phiên bản phần mềm nào bạn có trên hệ thống của mình. Nhưng hãy tưởng tượng nếu một nhà phát triển phần mềm phát hành phiên bản mới của phần mềm.

Ubuntu sẽ không có sẵn ngay lập tức. Có một quy trình để kiểm tra xem phiên bản mới của phần mềm có tương thích với hệ thống hay không. Điều này đảm bảo sự ổn định của hệ thống.

Nhưng điều này cũng có nghĩa là nó sẽ có một vài tuần hoặc trong một số trường hợp, một vài tháng trước khi nó được cung cấp bởi Ubuntu. Không phải ai cũng muốn chờ đợi lâu để có được phiên bản mới của phần mềm yêu thích của họ.

Tương tự, giả sử ai đó phát triển một phần mềm và muốn Ubuntu đưa phần mềm đó vào kho chính thức. Một lần nữa sẽ mất vài tháng trước khi Ubuntu đưa ra quyết định và đưa nó vào kho chính thức.

Một trường hợp khác sẽ là trong quá trình thử nghiệm beta. Ngay cả khi phiên bản ổn định của phần mềm có sẵn trong kho chính thức, nhà phát triển phần mềm có thể muốn một số người dùng cuối thử nghiệm bản phát hành sắp tới của họ. Làm thế nào để họ cho phép người dùng cuối thử nghiệm phiên bản beta sắp tới?

Nhập PPA!

## Sử dụng PPA như thế nào? PPA hoạt động như thế nào?

[PPA](https://launchpad.net/ubuntu/+ppas), như tôi đã nói với bạn, có nghĩa là Lưu trữ gói cá nhân. Hãy nhớ từ 'Cá nhân' ở đây. Điều đó đưa ra gợi ý rằng đây là thứ dành riêng cho nhà phát triển và không được phân phối chính thức.

Ubuntu cung cấp một nền tảng được gọi là Launchpad cho phép các nhà phát triển phần mềm tạo ra các kho lưu trữ của riêng họ. Người dùng cuối tức là bạn có thể thêm kho lưu trữ PPA vào nguồn.list và khi bạn cập nhật hệ thống, hệ thống của bạn sẽ biết về tính khả dụng của phần mềm mới này và bạn có thể cài đặt nó bằng lệnh cài đặt sudo apt tiêu chuẩn như thế này.

sudo add-apt-repository ppa: dr-akulavich / lighttable sudo apt-get update sudo apt-get install lighttable-Installer

Để tóm tắt:

-   sudo add-apt-repository <PPA_info> <- Lệnh này thêm kho lưu trữ PPA vào danh sách.
-   sudo apt-get update <- Lệnh này cập nhật danh sách các gói có thể được cài đặt trên hệ thống.
-   sudo apt-get install <pack_in_PPA> <- Lệnh này cài đặt gói.

Bạn thấy rằng điều quan trọng là sử dụng lệnh sudo apt update nếu không hệ thống của bạn sẽ không biết khi nào có gói mới.

Bây giờ chúng ta hãy xem lệnh đầu tiên chi tiết hơn một chút.

```
sudo add-apt-repository ppa: dr-akulavich / lighttable
```

Bạn sẽ nhận thấy rằng lệnh này không có URL tới kho lưu trữ. Điều này là do công cụ đã được thiết kế để trừu tượng hóa thông tin về URL từ bạn.

Chỉ cần một lưu ý nhỏ. Nếu bạn thêm ppa: dr-akulavich / lighttable, bạn sẽ nhận được Light Table. Nhưng nếu bạn thêm ppa: dr-akulavich, bạn sẽ nhận được tất cả kho lưu trữ hoặc gói được đề cập trong 'kho trên'. Đó là thứ bậc.

Về cơ bản, khi bạn thêm PPA bằng add-apt-repository, nó sẽ thực hiện hành động tương tự như khi bạn chạy các lệnh này theo cách thủ công:

```
deb http://ppa.launchpad.net/dr-akulavich/lighttable/ubfox Your_UBUNTU_VERSION_HERE
```

Hai dòng trên là cách truyền thống để thêm bất kỳ kho lưu trữ nào vào nguồn của bạn. Nhưng PPA tự động làm điều đó cho bạn, mà không cần hỏi về URL kho lưu trữ chính xác và phiên bản hệ điều hành.

Một điều quan trọng không phải ở đây là khi bạn sử dụng PPA, nó không thay đổi nguồn gốc của bạn. Thay vào đó, nó tạo hai tệp trong thư mục /etc/apt/source.d, một danh sách và một tệp sao lưu với hậu tố 'lưu'.

![Sử dụng PPA trong Ubuntu](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/ppa-sources-list-files.png)

PPA tạo nguồn.list riêng

Các tệp có hậu tố 'list' có lệnh thêm thông tin về kho lưu trữ.

![PPA thêm thông tin kho lưu trữ](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/content-of-ppa-list.png)

Nội dung của source.list của PPA

Đây là một biện pháp an toàn để đảm bảo rằng việc thêm PPA không gây rối với các nguồn ban đầu. Nó cũng giúp loại bỏ PPA.

### Tại sao lại là PPA? Tại sao không phải là gói DEB?

Bạn có thể hỏi tại sao bạn nên sử dụng PPA khi nó liên quan đến việc sử dụng dòng lệnh có thể không được mọi người ưa thích. Tại sao không chỉ phân phối một gói DEB có thể được cài đặt bằng đồ họa?

Câu trả lời nằm trong thủ tục cập nhật. Nếu bạn cài đặt phần mềm bằng gói DEB, không có gì đảm bảo rằng phần mềm đã cài đặt sẽ được cập nhật lên phiên bản mới hơn khi bạn chạy cập nhật sudo apt && sudo apt nâng cấp.

Đó là vì quy trình nâng cấp apt phụ thuộc vào nguồn.list. Nếu không có mục nào cho phần mềm, nó sẽ không nhận được bản cập nhật thông qua trình cập nhật phần mềm tiêu chuẩn.

Vậy có nghĩa là phần mềm được cài đặt bằng DEB không bao giờ được cập nhật? Không thật sự lắm. Nó phụ thuộc vào cách gói được tạo ra.

Một số nhà phát triển tự động thêm một mục vào nguồn.list và sau đó nó được cập nhật như một phần mềm thông thường. Google Chrome là một ví dụ như vậy.

Một số phần mềm sẽ thông báo cho bạn về tính khả dụng của phiên bản mới khi bạn cố chạy nó. Bạn sẽ phải tải xuống gói DEB mới và chạy lại để cập nhật phần mềm hiện tại lên phiên bản mới hơn. Oracle Virtual Box là một ví dụ trong trường hợp này.

Đối với các gói DEB còn lại, bạn sẽ phải tìm kiếm bản cập nhật theo cách thủ công và điều này không thuận tiện, đặc biệt nếu phần mềm của bạn dành cho người thử nghiệm bản beta. Bạn cần thêm nhiều cập nhật thường xuyên. Đây là nơi PPA đến giải cứu.

### PPA chính thức so với PPA không chính thức

Bạn cũng có thể nghe thuật ngữ PPA chính thức hoặc PPA không chính thức. Có gì khác biệt?

Khi các nhà phát triển tạo PPA cho phần mềm của họ, nó được gọi là PPA chính thức. Rõ ràng là vì nó đến từ không ai khác ngoài các nhà phát triển dự án.

Nhưng đôi khi, các cá nhân tạo PPA của các dự án được tạo bởi các nhà phát triển khác.

Tại sao lại có người nào đó làm vậy? Bởi vì nhiều nhà phát triển chỉ cung cấp mã nguồn của phần mềm và bạn biết rằng [cài đặt phần mềm từ mã nguồn trong Linux](https://itsfoss.com/install-software-from-source-code/) là một nỗi đau và không phải ai cũng có thể hoặc sẽ làm điều đó.

Đây là lý do tại sao các tình nguyện viên tự mình tạo ra PPA từ các mã nguồn đó để những người dùng khác có thể cài đặt phần mềm một cách dễ dàng. Rốt cuộc, việc sử dụng các dòng 3 đó dễ dàng hơn nhiều so với chiến đấu với việc cài đặt mã nguồn.

### Đảm bảo rằng PPA có sẵn cho phiên bản phân phối của bạn

Khi nói đến việc sử dụng PPA trong Ubuntu hoặc bất kỳ bản phân phối dựa trên Debian nào khác, có một số điều bạn nên ghi nhớ.

Không phải mọi PPA đều có sẵn cho phiên bản cụ thể của bạn. Bạn nên biết [phiên bản Ubuntu nào](https://itsfoss.com/how-to-know-ubuntu-unity-version/) bạn đang sử dụng. Tên mã của bản phát hành rất quan trọng vì khi bạn truy cập trang web của một PPA nhất định, bạn có thể xem phiên bản Ubuntu nào được PPA hỗ trợ.

Đối với các bản phân phối dựa trên Ubuntu khác, bạn có thể kiểm tra nội dung của / etc / os-phát hành để [tìm ra phiên bản Ubuntu](https://itsfoss.com/how-to-know-ubuntu-unity-version/) thông tin.

![Xác minh tính khả dụng của PPA cho phiên bản Ubuntu](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/verify-ppa-availibility-version.jpg)

Kiểm tra xem PPA có sẵn cho phiên bản Ubuntu của bạn không

Làm thế nào để biết url PPA? Chỉ cần tìm kiếm trên internet với tên PPA như ppa: dr-akulavich / lighttable và bạn sẽ nhận được kết quả đầu tiên từ [Launchpad](https://launchpad.net/), nền tảng chính thức để lưu trữ PPA. Bạn cũng có thể truy cập Launchpad và tìm kiếm PPA cần thiết trực tiếp tại đó.

Nếu bạn không xác minh và thêm PPA, bạn có thể thấy một lỗi như thế này khi bạn cố gắng cài đặt một phần mềm không có sẵn cho phiên bản của bạn.

```
E: Không thể xác định vị trí gói
```

Điều tệ hơn là vì nó đã được thêm vào source.list của bạn, mỗi lần bạn chạy trình cập nhật phần mềm, bạn sẽ thấy một lỗi Lỗi[Không thể tải xuống thông tin kho lưu trữ](https://itsfoss.com/failed-to-download-repository-information-ubuntu-13-04/)".

![Không thể tải xuống thông tin kho lưu trữ Ubuntu 13.04](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/Failed-to-download-repository-information-Ubuntu-13.04.png)

Nếu bạn chạy cập nhật sudo apt trong thiết bị đầu cuối, lỗi sẽ có thêm chi tiết về kho lưu trữ nào gây ra sự cố. Bạn có thể thấy một cái gì đó như thế này ở cuối đầu ra của bản cập nhật sudo apt:

```
W. Họ đã bị bỏ qua, hoặc những người thân cũ được sử dụng để thay thế.
```

Đó là tự giải thích vì hệ thống không thể tìm thấy kho lưu trữ cho phiên bản của bạn. Hãy nhớ những gì chúng ta đã thấy trước đó về cấu trúc kho lưu trữ? APT sẽ cố gắng tìm kiếm thông tin phần mềm tại nơi http://ppa.launchpad.net/<PPA_NAME>/ubfox/dists/Ub Ubuntu_Version

Và nếu PPA cho phiên bản cụ thể không có sẵn, nó sẽ không bao giờ có thể mở URL và bạn gặp lỗi 404 nổi tiếng.

### Tại sao PPA không có sẵn cho tất cả các phiên bản phát hành Ubuntu?

Đó là bởi vì ai đó phải biên dịch phần mềm và tạo PPA từ phần mềm trên các phiên bản cụ thể. Xem xét rằng một phiên bản Ubuntu mới được phát hành sáu tháng một lần, đó là một nhiệm vụ mệt mỏi để cập nhật PPA cho mỗi bản phát hành Ubuntu. Không phải tất cả các nhà phát triển có thời gian để làm điều đó.

### Làm cách nào để cài đặt ứng dụng nếu PPA không có sẵn cho phiên bản của bạn?

Có thể mặc dù PPA không có sẵn cho phiên bản Ubuntu của bạn, bạn vẫn có thể tải xuống tệp DEB và cài đặt ứng dụng

Hãy nói rằng bạn đi đến Bảng ánh sáng PPA. Sử dụng kiến ​​thức về PPA bạn vừa học, bạn nhận ra rằng PPA không có sẵn cho bản phát hành Ubuntu cụ thể của bạn.

Những gì bạn có thể làm là nhấp vào 'Xem chi tiết gói'.

![Nhận tệp DEB từ PPA](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/deb-from-ppa.jpg)

Và tại đây, bạn có thể nhấp vào một gói để tiết lộ thêm chi tiết. Bạn cũng sẽ tìm thấy mã nguồn và tệp DEB của gói ở đây.

![Tải xuống tệp DEB từ PPA](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/deb-from-ppa-2.jpg)

tôi khuyên [sử dụng Gdebi để cài đặt các tệp DEB này](https://itsfoss.com/gdebi-default-ubuntu-software-center/) thay vì Trung tâm phần mềm vì Gdebi xử lý phụ thuộc tốt hơn rất nhiều.

Xin lưu ý rằng gói được cài đặt theo cách này có thể không nhận được bất kỳ bản cập nhật nào trong tương lai.

Tôi nghĩ rằng bạn đã đọc đủ về việc thêm PPA. Làm thế nào về việc loại bỏ một PPA và phần mềm được cài đặt bởi nó?

## Làm thế nào để xóa PPA?

Tôi đã viết về [xóa PPA](https://itsfoss.com/how-to-remove-or-delete-ppas-quick-tip/) trong quá khứ. Tôi sẽ mô tả các phương pháp tương tự ở đây là tốt.

Tôi khuyên bạn nên xóa phần mềm mà bạn đã cài đặt từ PPA trước khi xóa PPA. Nếu bạn chỉ gỡ bỏ PPA, phần mềm đã cài đặt vẫn nằm trong hệ thống nhưng nó sẽ không nhận được bất kỳ bản cập nhật nào. Bạn sẽ không muốn điều đó, phải không?

Vì vậy, câu hỏi đặt ra, làm thế nào để biết ứng dụng nào được cài đặt bởi PPA nào?

### Tìm các gói được cài đặt bởi PPA và xóa chúng

Trung tâm phần mềm Ubuntu không giúp đỡ ở đây. Bạn sẽ phải sử dụng trình quản lý gói Synaptic tại đây có các tính năng nâng cao hơn.

Bạn có thể cài đặt Synaptic từ Trung tâm phần mềm hoặc sử dụng lệnh bên dưới:

    $ sudo apt install synaptic

Sau khi cài đặt, khởi động trình quản lý gói Synaptic và chọn Origin. Bạn sẽ thấy các kho khác nhau được thêm vào hệ thống. Các mục PPA sẽ được dán nhãn bằng PPA tiền tố. Nhấp vào chúng để xem các gói có sẵn bởi PPA. Phần mềm được cài đặt sẽ có biểu tượng thích hợp trước nó.

![Quản lý PPA với trình quản lý gói Synaptic](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/ppa-synaptic-manager.jpe)

Tìm các gói được cài đặt qua PPA

Khi bạn đã tìm thấy các gói, bạn có thể xóa chúng khỏi Synaptic. Mặt khác, bạn luôn có tùy chọn để sử dụng dòng lệnh:

    $ sudo apt remove <nameOfPagkage>

Khi bạn đã xóa các gói được cài đặt bởi PPA, bạn có thể tiếp tục xóa PPA khỏi nguồn.list của mình.

### Xóa PPA bằng đồ họa

Chuyển đến Phần mềm & Cập nhật và sau đó chuyển đến tab Phần mềm khác. Tìm PPA mà bạn muốn loại bỏ:

![Xóa PPA khỏi Nguồn phần mềm](https://websetnet.b-cdn.net/wp-content/uploads/2019/03/Delete-a-PPA.jpe)

Bạn có hai lựa chọn ở đây. Hoặc bạn bỏ chọn PPA hoặc bạn chọn tùy chọn Xóa.

Sự khác biệt là khi bạn bỏ chọn mục PPA, hệ thống của bạn sẽ nhận xét mục nhập kho lưu trữ trong tệp ppa_name.list của nó trong /etc/apt/source.list.d nhưng nếu bạn chọn tùy chọn Xóa, nó sẽ xóa mục nhập kho lưu trữ từ tệp ppa_name.list của nó trong thư mục /etc/apt/source.list.d.

Trong cả hai trường hợp, các tệp ppa_name.list vẫn nằm trong thư mục đã nói, ngay cả khi nó trống.

## Sử dụng PPA có an toàn không?

Đó là một câu hỏi chủ quan. Những người theo chủ nghĩa thuần túy ghê tởm PPA vì phần lớn thời gian PPA là từ các nhà phát triển bên thứ ba. Nhưng đồng thời, PPA rất phổ biến trong thế giới Debian / Ubuntu vì chúng cung cấp tùy chọn cài đặt dễ dàng hơn.

Về bảo mật, ít có khả năng bạn sử dụng PPA và hệ thống Linux của bạn bị hack hoặc bị nhiễm phần mềm độc hại. Tôi không nhớ lại một sự việc như vậy đã từng xảy ra cho đến nay.

PPA chính thức có thể được sử dụng mà không cần suy nghĩ hai lần. Sử dụng PPA không chính thức hoàn toàn là quyết định của bạn.

Theo nguyên tắc thông thường, bạn nên tránh cài đặt chương trình qua PPA của bên thứ ba nếu chương trình yêu cầu quyền truy cập sudo để chạy.

## Bạn nghĩ gì về việc sử dụng PPA?

Tôi biết đó là một bài đọc dài nhưng tôi muốn cho bạn hiểu rõ hơn về PPA. Tôi hy vọng hướng dẫn chi tiết này đã trả lời hầu hết các câu hỏi của bạn về việc sử dụng PPA.

Nếu bạn có thêm câu hỏi về PPA, xin vui lòng hỏi trong phần bình luận.

Nếu bạn nhận thấy bất kỳ lỗi kỹ thuật hoặc ngữ pháp hoặc nếu bạn có đề xuất cải thiện bài viết này, xin vui lòng cho tôi biết.

#### Credit
- reference : [AaronStuart](https://websetnet.net/vi/t%C3%A1c-gi%E1%BA%A3/aaronstuart/ "Bài đăng của AaronStuart") Mar 1, 2019
- compilation of [Erik Horus](https://github.com/ErikHorus1249)

