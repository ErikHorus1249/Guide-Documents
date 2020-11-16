#### Hà Nội, 25/9/2020

![](https://i.imgur.com/EdwNdK1.png)

## Cài đặt VMWARE WORKSTAION 16 PR TRÊN UBUNTU 20.04 LTS

### Bước 1: Download gói  VMware binary (VMware binary  pagkage) từ trang chủ của VMWARE
Link tải : [**Tại đây**](https://my.vmware.com/en/web/vmware/downloads/info/slug/desktop_end_user_computing/vmware_workstation_pro/16_0)
Chọn phiên bản với option phù hợp với cấu hình máy.(64/32bit)

![](https://i.imgur.com/GJKbmTf.png)

## Bước 2: Cài đặt phụ trợ

VM Workstation là phầm mềm chạy máy ảo nên cần phải xử lý với sâu với Kernel(nhân HĐH) đó là lý do vì sao muốn cài đặt thành công nó cần phải cài đặt **[gcc make linux-header](h)** trước. 
> `$ sudo apt-get -y install gcc make linux-headers-$(uname -r) dkms`

## Bước 3: Cấp quyền cho file thực thi( tức là file bundle mới tải về) để chuẩn bị cài đặt

    

> $ sudo chmod +x ~/Downloads/VMware-Workstation-Full-16*.bundle


## Bước 4: Cài đặt VM Workstation 16 pro

Sử dụng lệnh sau với quyền **root** để thực thi cài đặt.

> `$ sudo ./VMware-Workstation-Full-16*.bundle`

Chọn **accept** các **license** của VM rồi finish thôi. 
Còn vấn đề key thi tự **search** vì chúng có rất nhiều trên mạng.

### Tham khảo:
- **[WebsiteForStudent](https://websiteforstudents.com/installing-vmware-workstation-14-pro-ubuntu-17-04-17-10/)**
- **[MyVmware](https://my.vmware.com/en/web/vmware/downloads/info/slug/desktop_end_user_computing/vmware_workstation_pro/16_0)**
- **[StackOverFlow :](h)** [Compiling Linux kernel module using gcc with kernel header files](https://stackoverflow.com/questions/26113959/compiling-linux-kernel-module-using-gcc-with-kernel-header-files)
