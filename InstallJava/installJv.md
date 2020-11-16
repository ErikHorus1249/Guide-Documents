

## Cài đặt Java 8 cho Ubntu bao gồm JRE và JDk
![](https://i.imgur.com/jaEt6OQ.png)
### Bước 1 – Cài đặt  Java 8 on Ubuntu

>
 `$ sudo apt update` 
> 
`$ sudo apt install openjdk-8-jdk openjdk-8-jre`

### Bước 2 – Kiểm tra và xác nhận việc cài đặt đã thành công chưa 

> 
`$ java -version`
> 
> openjdk version "1.8.0_222" OpenJDK Runtime Environment (build
> 1.8.0_222-8u222-b10-1ubuntu1~18.04.1-b10) OpenJDK 64-Bit Server VM (build 25.222-b10, mixed mode)
- Kết quả như trên là đã thành công 


### Bước 3 – Đặt biến môi trường Java_home và jre_home 

> 
`cat >> /etc/environment <<EOL JAVA_HOME= /usr/lib/jvm/java 8-openjdk-amd64`
> 
`JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre EOL`

#### Xong .

#### End credit 
- [reference](https://tecadmin.net/install-oracle-java-8-ubuntu-via-ppa/) 
- author : [Erik Horus](https://github.com/ErikHorus1249)


