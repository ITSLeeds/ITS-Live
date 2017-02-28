# ITS-Live

Software for Transport Data Science

This project is designed to enable reproducible computing in transport research.

The software stack provided runs on Ubuntu 16.04, either installed onto your computer's hard drive, in a virtual machine, or in a docker file.
Once you've decided how you want to run ITS-Live, please skip to the relevant install options below.

## Install locally

## Virtual Machine

## Docker

The Dockerfile defining itslive is located here: https://github.com/ITSLeeds/ITS-Live/blob/master/docker/Dockerfile

To install via Docker, you first need to install Docker on your computer.
Follow install instructions depending on operating system [here](https://www.docker.com/products/overview).
If you're running Ubuntu, the relevant page to install Docker is
[docs.docker.com/engine/installation/linux/ubuntu/](https://docs.docker.com/engine/installation/linux/ubuntu/).

Once you have Docker installed you can [test it works](https://docs.docker.com/engine/getstarted/step_one/), e.g. with:

```
docker run hello-world
```

If you get a message containing the words `Hello from Docker!` congratulations, your Docker install has worked!

Likewise, to run the ITS-Leeds docker image, enter:

```
docker run robinlovelace/itslive
```

To run RStudio from a browser on this docker instance, use the following:

```
docker run -d -p 8787:8787 robinlovelace/itsleeds
```

Then open a browser and navigate to http://localhost:8787/ (or if you're using Windows or Mac, follow [these instructions](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image)).

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

