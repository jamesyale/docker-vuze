docker-vuze
===========

All the prereqs to run vuze in a container accessed via a VNC

The container creates a user called vnc as UID 1999. Create a matching user on your host system and give it access to your vuze / downloads directory:

	useradd -u 1999 -U -m -s /bin/false -d /dev/null vuze
	chown -R vuze vuze
	chown -R vuze downloads

or enable ACLs and:

	setfacl -R -m u:vuze:rwx

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
	-p 5900:5900 \
	jamesyale/docker-vuze
