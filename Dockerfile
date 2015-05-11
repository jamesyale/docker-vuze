FROM java:7

RUN apt-get update ; apt-get -y install vnc4server
