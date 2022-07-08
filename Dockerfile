# Container image that runs your code
FROM python:3.9 as builder
ADD . /app

# Make executable
RUN ["chmod", "+x", "/entrypoint.sh"]

# Copies your code file from your action repository to the filesystem path `/` of the container
WORKDIR /app
COPY /app /app

# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD [ "python", "./main.py" ]
