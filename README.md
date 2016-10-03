## CREDITS
* [Jess Frazelle](https://github.com/jfrazelle) for [containers on the deskop](https://blog.jessfraz.com/post/docker-containers-on-the-desktop/).

## WHAT DOES THIS DO?
This is a container that runs the Eclipse IDE.

## HOW TO RUN IT?
0. Make sure you're on a system running [X](https://en.wikipedia.org/wiki/X_Window_System).
1. Disable X access control (don't do this on a public-facing machine): `$ xhost +`
2. `$ cd` to a path where you want to use Eclipse to do some development.
3. ``$ docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix -v `pwd`:`pwd` -e DISPLAY=$DISPLAY hackenfreude/eclipse-4.6``
4. Have fun. Close Eclipse when you're done, and the container will shut down. Your files will be in the path on the host where you started.
5. __Reenable X access control:__ `$ xhost -`

## WHAT JUST HAPPENED?
* Docker mounted the host's X socket in the continer as the container's X socket; this allows the container's GUI to pass back up to the host.
* Docker mounted the host's working directory in the container at the same path.

## WHAT IF IT DOESN'T WORK?
Open an [issue](https://github.com/hackenfreude/docker-eclipse-4.6/issues/new).
