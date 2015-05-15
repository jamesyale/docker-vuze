docker-vuze
===========

All the prereqs to run vuze in a container accessed via a VNC

Run
---
Mount your vuze directory in from the host using -v to keep all the configuration outside the container: 

docker run -it -e "passwd=moomoo" -v /home/jim/vuze:/vnc/vuze jamesyale/docker-vuze
