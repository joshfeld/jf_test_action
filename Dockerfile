# Container image that runs your code
FROM python:3.9 as builder

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY main.py /main.py

# Make executable
RUN ["chmod", "+x", "/entrypoint.sh"]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD [ "python", "/main.py" ]
