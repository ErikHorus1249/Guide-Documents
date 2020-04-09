
sudo apt update

Add the official Docker PGP key like so:

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

configure APT

] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list

Up date :

=========> Install Docker on Kali Linux :

sudo apt update

sudo apt remove docker docker-engine docker.io

sudo apt install docker-ce -y

+ Starting Docker:

sudo systemctl start docker

=========> Verifying the Installation

sudo docker run hello-world



https://www.ceos3c.com/hacking/install-docker-on-kali-linux/
