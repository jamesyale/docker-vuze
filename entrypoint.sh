#!/bin/bash

export USER="vnc"

/bin/mkdir ~/.vnc

/bin/echo "Setting password $passwd"

/bin/echo $passwd | /usr/bin/tightvncpasswd -f > ~/.vnc/passwd

/bin/echo "xterm &" > ~/.vnc/xstartup
/bin/echo "/vnc/vuze/vuze &" >> ~/.vnc/xstartup
/bin/echo "/usr/bin/ratpoison &" >> ~/.vnc/xstartup

/bin/chmod +x ~/.vnc/xstartup
/bin/chmod 600 ~/.vnc/passwd

/usr/bin/tightvncserver :0 -rfbauth ~/.vnc/passwd

/usr/bin/tail -f ~/.vnc/$(/bin/hostname):0.log
