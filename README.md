docker-vuze
===========

All the prereqs to run vuze in a container accessed via a VNC

Run
---
Mount your vuze directory in from the host using -v to keep all the configuration outside the container, this also means the installation is portable and upgradable without rebuilding the container. 

You may also want to mount other directories for downloads from elsewhere on the file system: 

	docker run -d --name vuze \
	-e "passwd=moomoo" \
	-v /home/jim/vuze:/vnc/vuze \
	-v /incoming/downloads:/vnc/downloads \
	-v /incoming/partial:/vnc/partial \
	-v /incoming/torrents:/vnc/torrents \
	jamesyale/docker-vuze
