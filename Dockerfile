# This is just a simple DockerFile to be used for your java application.
FROM alpine-java

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8


RUN mkdir -p <project name>
COPY <project folder name> /<project name>/
WORKDIR <project name>/bin
RUN ["chmod", "777", "./run.sh"]
#RUN ["dos2unix", "./run.sh"]
RUN ["echo","some meassage"]
CMD ["bash","./run.sh"]                              
RUN ["echo","----------run.sh--------EXECUTED "]
