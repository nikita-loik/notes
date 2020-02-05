# 0. Docker Components
image — 
container —

# 1. Files Used by Docker

Dockerfile — list of instruction of how to create a container
.dockerignore —
docker-compose.yml — works as a front end "script" on top of the same docker API used by docker, so you can do everything docker-compose does with docker commands and a lot of shell scripting

# 2. Basic Docker Commands

Docker CLI is the client command line to access the docker daemon api, used to manage individual containers on a docker engine.

```bash
# Check version:
docker --version

# Build an image with a particular tag (-t):
docker build . -t [IMAGE_TAG]

# List containers:
docker ps -a

# Check logs of a container:
docker logs -f [CONTAINER_NAME]

# To run an image:
docker run [IMAGE_NAME]

#Start a container:
docker start [CONTAINER_NAME]

# Stop a container:
docker stop [CONTAINER_NAME]

# Remove a container:
docker remove [CONTAINER_NAME]
```

# 3. Basic [Docker-Compose](https://docs.docker.com/compose/) Commands
Docker-Compose CLI can be used to manage a multi-container application. It also moves many of the options you would enter on the `docker run` into the docker-compose.yml file for easier reuse.

```bash
# Start and app in a detached mode (-d) 
docker-compose up -d

# Shut-down a containter
docker-compose down

# Run any 'command' from docker-compose.yml:
docker-compose run [COMMAND]
```

# 4. Dockerfile

FROM — set base image
RUN — execute command in container
ENV — set environment variable
WORKDIR — set working directory
VOLUME — create mount-point for a volume
CMD — set executable for container
