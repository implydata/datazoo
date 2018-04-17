# DataZoo

Welcome to the Imply Data zoo.

This project is mainly a testing ground for [Plywood](https://github.com/implydata/plywood),
[Pivot](https://github.com/implydata/pivot), and [https://github.com/implydata/plyql](PlyQL).

This repo has helpful scripts and seed data to setup a docker container with a number of data bases.

## Initial Setup

### Docker installation

# Tutorial

## Install Docker (Mac)

[Install Homebrew](http://brew.sh/#install)

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

[Install Cask](http://caskroom.io/)

```sh
brew install caskroom/cask/brew-cask
```

Install Virtualbox

```sh
brew update
brew cask install virtualbox
```

Docker Machine

```sh
brew update
brew install docker-machine docker
docker-machine create --driver virtualbox default
eval "$(docker-machine env default)"
```

Is it working?

```
docker run hello-world
```

[build imply-docker](README.md)


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
