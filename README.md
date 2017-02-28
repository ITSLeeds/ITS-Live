# ITS-Live

Software for Transport Data Science

This project is designed to enable reproducible computing in transport research.

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


### Run itsleeds in Docker

Likewise, to run the ITS-Leeds docker image, enter:

```
docker run ITS-Live
```


## Installation via local .deb package

## Installation via Virtual Machine

## Advanced 

Note: if you want to install your docker files remotely, e.g. to your an 'extra' folder on your computer,
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

