#!/bin/bash
sudo docker search postgres
sudo docker pull postgres:15.2
sudo docker images
docker run -d \
	--name some-postgres \
	-e POSTGRES_PASSWORD=mysecretpassword \
	-e PGDATA=/var/lib/postgresql/data/pgdata \
	-v /custom/mount:/var/lib/postgresql/data \
	postgres
    sudo docker build -t type-image-name .
    sudo docker pull images
    sudo run -d -p5000:6673 --name postgrescont postgres:15.2
    sudo docker images
    sudo docker stop container-name
    sudo docker start container-name
    sudo docker rm container-name
    sudo docker rmi image-name
    sudo docker exec -it container-name /bin/bash
    sudo docker logs cointainer-name
# DOCKER NETWORK
   1.BridgesNetwork 
    this the default network which allows your network in standlone containers
     cidr 172.17.0.0/18
    In terms of Docker, a bridge network uses a software bridge which allows containers connected to the same bridge network to communicate, 
    while providing isolation from containers which are not connected to that bridge network.
   
   2.HostNetwork Docker host networking, is a networking mode in 
   which a Docker container shares its network namespace with the host machine. 
   we can use only in docker swarm

   3.OverlayNetwork : The overlay network driver creates a distributed network among multiple Docker daemon hosts.
    This network sits on top of (overlays) the host-specific networks, allowing containers connected to it
    (including swarm service containers) to communicate securely when encryption is enabled

    4.NoneNetwork: it completely disable the network
    5.Macvlan : it assigns Mac addres to container. it is like physical device .it is used only for legacy application 

sudo docker network inspect bridge
sudo docker attach alpine1; ip addr show 
sudo docker attach alpine2 
  / # ip addr show
  ctl p and q  { without exiting containers}
  
  / create new network
  sudo docker network create --driver bridge alpine1-net
  sudo docker network inspect alpine1-net

  # statrt container on specific network
  sudo docker run -dit --name alpine1 --network alpine1-net alpine /bin/bash
  sudo docker inspect bridge 
  sudo docker network connect alpine1-net alpine3 

