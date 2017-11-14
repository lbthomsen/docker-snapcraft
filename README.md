Introduction
============

I use Debian on my desktop but was tasked with building some snap images using Ubuntu's snapcraft.

Unfortunately getting that to run proper on Debian proved extremly tricky, so I ended up deciding to create a Docker container with the necessary tools.

The container is meant to be running using the same username, userid and home directory as the "outside world" to avoid having to move the resulting images in and out of the docker environment.

Installation
============

The Docker image is build automatically when this repository is updated, so running should be as simple as:

    docker run --hostname "snapcraft" --env="USERNAME=$USER" --env="USERID=`id -u`" --volume="/home:/home" -ti lbthomsen/docker-snapcraft

Extra packages
==============

The docker image is running as the user but sudo is available, so new packages can be installed with sudo .....

