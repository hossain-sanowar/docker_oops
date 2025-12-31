# docker_oops
Docker is a containerization platform that bundles applications with all required libraries and configurations into isolated containers. This enables reproducible builds, simplified deployment, and efficient scaling across different environments.

How to run?
````angular2html
conda create -n test python=3.11 -y
conda activate test
pip install -r requirements.txt
````

Docker Test
````angular2html
docker pull hello-world
docker run hello-world

docker ps                                   # See a list of all running containers
docker ps -a                                # See a list of all containers, even the ones not running
docker rm <hash>                            # Remove the specified container from this machine
docker rm $(docker ps -a -q)                # Remove all containers from this machine
docker images -a                            # Show all images on this machine
docker rmi <imagename>                      # Remove the specified image from this machine
docker rmi $(docker images -q)              # Remove all images from this machine
Docker Custom image
docker build -t sanowarhossain/calapp:latest . #build docker image

docker run -p 8080:8080 sanowarhossain/calapp:latest # run docker container
docker run -d -p 8080:8080 sanowarhossain/calapp:latest # run docker container with detach mode
````

Push to Docker Hub:
````angular2html
docker login
docker push sanowarhossain/calapp:latest
````
