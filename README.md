# DataZoo

Welcome to the Imply Data zoo.

This project is mainly a testing ground for [Plywood](https://github.com/implydata/plywood),
[Pivot](https://github.com/implydata/pivot), and [https://github.com/implydata/plyql](PlyQL).

This repo has helpful scripts and seed data to setup a docker container with a number of data bases.

## Initial Setup

### Docker installation

1. [Install Docker](https://docs.docker.com/engine/installation/)
2. [Install Oracle VM VirtualBox manager](https://www.virtualbox.org/wiki/Downloads)
3. Create a docker-machine named default using the virtualbox driver
    `docker-machine create -d virtualbox default`
If this is successful, `docker-machine ip` will return the ip of your machine

### After installing docker
1. Increase docker machine memory to 4GB
    1. Open Oracle VM VirtualBox Manager (installed with docker)
    2. Under default machine -> Settings -> System -> Base Memory -> 4096MB
2. Run `./make-data-files`
3. Run `./docker-init`

## Troubleshooting

Error: `Error getting IP address: Something went wrong running an SSH command`
Try recreating docker-machine

```
$ docker-machine rm default
$ docker-machine create --driver virtualbox default
```
Error: `Error getting IP address: ssh command error:
command : ip addr show
err     : exit status 255
output  :`
Go to settings in VirtualBox Manager for your default machine 
In settings > Network > Adapter 2 (or whichever adapter is the Host-only Adapter) > Advanced > Promiscuous Mode > Allow All
