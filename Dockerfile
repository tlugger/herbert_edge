# Base
FROM 743469128601.dkr.ecr.us-west-2.amazonaws.com/nio_full:latest
MAINTAINER n.io <info@n.io>

# Install all of the project's python dependencies
COPY requirements.txt /nio/requirements.txt
RUN pip install -r /nio/requirements.txt

# copy all files into project folder
COPY . /nio/project
