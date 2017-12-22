# Debvnc

## Why did I create debvnc?
I wanted to have a virtual desktop at my disposal, which I could easily create, use and throw away. Docker seemed to be the obvious choice. With docker it is easy to create a container, throw it away, create it again, and do this cycle over and over again. I used to use a container, with a VNC-server in it, so I could connect through VNC. Inside the container it runned GNOME on Ubuntu, and it contained LibreOffice, for some office-work, Firefox for decent browsing and some minor tools.

This container however was more than 1.5GiB large, and mainly I was only using Firefox. So basically, when I wanted to upgrade the underlying Ubuntu (from 14.04 to 16.04), I came to the idea to minimize the whole container and only put into it what I really use. So that's how this container came into existance. This container has:

 * a very simple window manager (blackbox) _(removing the need for hacks to make GNOME work ;) )_
 * Firefox
 * xterm (as a graphical terminal application)
 * and it is based on *Debian unstable* instead of Ubuntu
 
With the window manager, it is easy to play around with potential popups and maybe even start another application or browser window. I found some kind of graphical terminal application to be a minimum need when working in a Linux-based graphical environment.

Ok. Let's get serious and talk some business.

## Installing and running
In order to install this container you need [Docker](http://dwww.docker.com). How to install docker can be found on docker's [website](http://www.docker.com).

Assuming you're in a Linux shell with sufficient privileges installing this is fairly simple.
If you have the source code and you want to build the container yourself, just issue :
```
docker build -t debvnc .
```
Then run it with
```
docker run -ti -p 5901:5901 debvnc
```

If you don't feel the need to do this yourself you could pull the image from [Docker hub](http://hub.docker.com):
```
docker run -ti -p 5901:5901 pyromanic/debvnc
```
_(assuming you're already logged into Docker hub)_

And then log into the container with your VNC-client. The VNC-password is "acoman".


## Using
By default the desktop runs as a normal user called "user". This user has full "sudo" possibilities (no password required). So if you wish to install additional software you could do that like you do in Ubuntu. For example:

```
sudo apt-get install libreoffice
```

Happy debvnc'ing ;)
