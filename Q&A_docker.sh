# what is docker?
docker is an open source containerization service.
it enables developers to package applicationsinto containers.

# what is a Docker container and how is it different from other a Virtual Machine?

# what is a Dockerfile?
a set of instructionsor or commands that difines a dcoker image and what dependencies should be installedfor the application to run
Docker images act as a set of instructions to build a Docker container it can be compared to a snapshot in a VM 

# what are the different Docker components?
    1.Docker client
    2.Docker Host 
    3. Docker Registry 

# what is the diference between docker and docker COPY and ADD?
 Docker ADD can copy the files from a URL unlike 
 Docker COPY which can only copy the files from host system to th container 

 # what is the diference between CMD and ENTRYPOINT?
 # how can you transfer a file from one docker container to another container?
 # what is the diference between Dockerfile, Docker compose and Docker swarm?
   Dockerfile      ----> Run a single container 
            docker build -t name .
   Docker compose  ----> Run multiple container using yaml file
            docker compose up
            docker compose down 
   Docker swarm    ----> Container orchestration which allows communication between containers
# After successfully executing the docker command "docker run ubuntu" the ubuntu container is getting killed automatically, why?


# what is a multi stage build in Docker?
# what are distro less images in Docker?

