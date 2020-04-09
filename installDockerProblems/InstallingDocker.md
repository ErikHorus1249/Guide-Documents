
//author : Erik Horus

#INSTALL DOCKER ON UBUNTU/KALI LINUX

+ Install Docker by command : sudo apt-get install docker.io

+ Check : service docker status

+ Pronblem 1: /img/dockerInactive.png

+ Fix command : systemcl restart docker

+ Pronblem 2: /img/dockerisvrIsMasked.png
           /img/dockerscrIsMakerAfterCheck.png

+ Check service masked : sudo systemctl list-unit-files

+ Fix command : sudo systemctl unmask docker && systemctl restart docker

===========>>>>> DONE .
NOTE: You can install it the way presented on the official webside of Docker :https://docs.docker.com/engine/install/ubuntu/
Reference link :https://forums.docker.com/t/failed-to-start-docker-service-unit-is-masked/67413
andropytool : https://github.com/alexMyG/AndroPyTool
me: https://github.com/ErikHorus1249

----------->>>>> THANK FOR READING






