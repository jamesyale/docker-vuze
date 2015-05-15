FROM java:7

RUN apt-get update ; apt-get -y install x11vnc xvfb vnc4server tightvncserver libswt-gnome-gtk-3-jni ratpoison

RUN useradd -m -d /vnc vnc

COPY entrypoint.sh /vnc/entrypoint.sh

USER vnc

CMD [ "/usr/bin/x11vnc", "--help" ]

ENTRYPOINT [ "/bin/bash", "/vnc/entrypoint.sh" ]
