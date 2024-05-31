#/bin/bash
USERNAME=erosmontin
# Build the docker image
docker build -t petpvc .

#tag the image
docker tag petpvc:latest $USERNAME/petpvc:latest

# Push the image to the docker hub
docker push $USERNAME/petpvc:latest