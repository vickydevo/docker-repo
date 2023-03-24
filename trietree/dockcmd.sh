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

    sudo docker history fdaf3dace6f1 ---> IMAGE_ID


    out put
IMAGE          CREATED              CREATED BY                                      SIZE      COMMENT
fdaf3dace6f1   About a minute ago   /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "/app…   0B        
84e2bcfd4e8b   2 minutes ago        /bin/sh -c #(nop) COPY dir:9a869ddddd18004de…   156B      
1c5c8d0b973a   2 weeks ago          /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B        
<missing>      2 weeks ago          /bin/sh -c #(nop) ADD file:20f2ff22b9a8ca9be…   72.8MB    
<missing>      2 weeks ago          /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B        
<missing>      2 weeks ago          /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B        
<missing>      2 weeks ago          /bin/sh -c #(nop)  ARG LAUNCHPAD_BUILD_ARCH     0B        
<missing>      2 weeks ago          /bin/sh -c #(nop)  ARG RELEASE                  0B      
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

  # Docker storage
  sudo docker run --rm -d -it --name bindcontainer --mount type=bind,source="$(pwd)"/remainder.sh,target="$(pwd)"/remainder.s,target=/app nginx
      sudo docker run --rm -d -it --name bindcontainer --v "$(pwd)":/app nginx

# docker volume
sudo docker volume create vignanvol
sudo docker volume ls
sudo docker volume inspect vignanvol
sudo docker run -it --name voltest --rm --mount source=vignanvol,target=/data nginx:latest /bin/sh
# readonly to  file locking while multiple containers using same volume 
sudo docker run -dit --name voltestreadonly --rm --mount source=vignanvol,target=/data,readonly nginx:latest /bin/sh

# NFS volume creation  time 56 mins
install nfs package 
https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-old.html



# Docker compose 
sudo docker 
sudo docker run -d -p8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password  --net mongo-net --name mongodb-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express
sudo docker run -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --net mongo-net --name mongodb mongo