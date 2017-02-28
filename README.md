# ITS-Live

Software for Transport Data Science, distributed by staff at the Institute for Transport Studies, University of Leeds, UK.

This project is designed to enable reproducible computing in transport research and teaching.

The software stack provided runs on Ubuntu 16.04, either installed onto your computer's hard drive, in a virtual machine, or in a docker file.
Once you've decided how you want to run ITS-Live, please skip to the relevant install options below.


## Installation via Docker

### Installation of Docker

To install via Docker, you first need to install Docker on your computer.

If you're running Ubuntu, the relevant page to install Docker is
[docs.docker.com/engine/installation/linux/ubuntu/](https://docs.docker.com/engine/installation/linux/ubuntu/).

Otherwise, follow install instructions depending on operating system [here](https://www.docker.com/products/overview).

Once you have Docker installed you can [test it works](https://docs.docker.com/engine/getstarted/step_one/), e.g. with:

```
docker run hello-world
```

If you get a message containing the words `Hello from Docker!` congratulations, your Docker install has worked!


### Run itslive R tools in Docker

Likewise, to run the ITS-Leeds docker image, enter:

```
 sudo docker run -d -p 8787:8787 robinlovelace/itslive
```

Then, in your browser open,
```
http://localhost:8787/
```

### Run itslive Python tools in Docker

sudo docker run -it charleswfox/itslivepy


## Installation via local .deb package

## Installation via Virtual Machine

## Advanced 

To run a stock ubuntu VM (which appears in the terminal),
```
 sudo docker run -i -t ubuntu /bin/bash
```
NB the -it gives us an interactive terminal (in the current termainal window).


To view all installed images:
```
docker images
```

To view all currently running containers:
```
docker ps
```
Kill a container,
```
docker kill 1636a463032d
```

Making a docker:
Make a file called Dockerfile like this (which bases off a stock ubuntu container):
```
FROM ubuntu:latest
RUN apt-get -y update && apt-get install -y vim
RUN apt-get -y update && apt-get install -y python
RUN apt-get -y update && apt-get install -y python-scipy
```
Build with
```
sudo docker build -t docker-whale .
```
(this creates a new image on the local machine which can be seen with "docker images")


edit the relevant file (e.g. `/etc/default/docker` on Ubuntu) so it becomes, as documented
[here](https://forums.docker.com/t/how-do-i-change-the-docker-image-installation-directory/1169):

```
# Use DOCKER_OPTS to modify the daemon startup options.
DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4 -g /home/robin/extra/docker"



```

## Related projects

- [OSGeo-Live](https://github.com/robinlovelace/OSGeoLive)
- [planet ccrma](https://github.com/ccrma/music220a)
- [install-gis-ubuntu](https://github.com/Robinlovelace/install-gis-ubuntu)

