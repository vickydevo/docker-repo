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
    lshfdsfh