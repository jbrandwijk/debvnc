#!/bin/sh
# (c) Pete Birley

#this sets the vnc password
su user -c /usr/local/etc/start-vnc-expect-script.sh
#this starts the vnc server
su user -c 'USER=user vncserver :1 -geometry 1366x768 -depth 24'
sleep 1;
export DISPLAY=:1
su user -c 'firefox file:///usr/local/etc/welcome.html &>/dev/null' &
