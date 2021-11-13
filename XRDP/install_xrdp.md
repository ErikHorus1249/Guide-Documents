$ sudo apt install xrdp

$ sudo adduser xrdp ssl-cert

$ sudo ufw allow from 192.168.2.0/24 to any port 3389

$ sudo ufw reload
$ sudo ufw status

$ sudo vim /etc/xrdp/startwm.sh

insert before "test"

unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR
