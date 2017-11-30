Introduction
============

I use Debian on my desktop but was tasked with building some snap images using Ubuntu's snapcraft.

Unfortunately getting that to run proper on Debian proved extremly tricky, so I ended up deciding to create a Docker container with the necessary tools.

Installation
============

The Docker image is build automatically when this repository is updated.

Fetch the "snapcraft" script:

`wget https://raw.githubusercontent.com/lbthomsen/docker-snapcraft/master/snapcraft && chmod +x snapcraft`

And move this script somewhere in your path.

Extra packages
==============

The docker image is running as the user but sudo is available, so new packages can be installed with sudo .....

