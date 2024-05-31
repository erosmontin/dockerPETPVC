# Use an official Python runtime as a parent image
FROM ubuntu:18.04

# Set the working directory in the container to /app
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    libinsighttoolkit4-dev

# Clone the git repo
RUN git clone https://github.com/UCL/PETPVC

# Set the working directory in the container to the cloned repo
WORKDIR /app/PETPVC

# Compile the package
RUN mkdir build && cd build && cmake .. && make


RUN cd build && make test && make install

# executable will be in /usr/local/bin/pvc_gtm

# # Run app.py when the container launches
# Thanks for your contact info. Here are some basic links related to the project:


#     A review of PVC problem and its clinical applications
    
#     https://pubmed.ncbi.nlm.nih.gov/23073343/
    
    
    
#     Overview of University College London package written by Ben Thomas:
#     PETPVC: a toolbox for performing partial volume correction techniques in positron emission tomography
    
#     https://pubmed.ncbi.nlm.nih.gov/27779136/
    
    
    
#     Benjamin Thomas' page 
    
#     https://www.ucl.ac.uk/nuclear-medicine/research/researchabstracts/pvc
    
#     his software on GitHub
    
#     https://github.com/UCL/PETPVC
    
#     The package implements multiple PVC methods.
#     We're mostly interested in the "iterative Yang" (IY) algorithm.
    
#     I'm pretty sure there are other implementations of  "iterative Yang"  out  there. 
