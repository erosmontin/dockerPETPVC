# PETPVC Docker Image

This repository contains a Dockerfile for building a Docker image that installs the necessary dependencies, clones the PETPVC repository, and builds and installs the PETPVC package.

## Building the Docker Image

To build the Docker image, navigate to the directory containing the Dockerfile and run the following command:

```bash
docker build -t petpvc:latest .
docker run -it petpvc:latest
```

Alternative you can use run.sh using

docker run -it erosmontin/petpvc:latest