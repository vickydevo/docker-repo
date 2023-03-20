# Install using the repository
https://docs.docker.com/engine/install/
in the link you will not having repository for amazon linux distribution
# To find architecture
lscpu | echo $(grep Architecture)
dpkg --print-architecture 
# amazon docker commands 
#!/bin/bash
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl start docker
sudo docker version

