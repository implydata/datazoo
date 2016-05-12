# DataZoo

Welcome to the Imply Data zoo.

This project is mainly a testing ground for [Plywood](https://github.com/implydata/plywood),
[Pivot](https://github.com/implydata/pivot), and [https://github.com/implydata/plyql](PlyQL).

This repo has helpful scripts and seed data to setup a docker container with a number of data bases.

## Initial Setup

1. [Install Docker](https://docs.docker.com/engine/installation/)
2. Increase docker machine memory to 4GB
  1. Open Oracle VM VirtualBox Manager (installed with docker)
  2. Under default machine -> Settings -> System -> Base Memory -> 4096MB
3. Run `./make-data-files`
4. Run `./docker-init`
