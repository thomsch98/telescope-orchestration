# telescope-on-docker
================

[Telescope](https://github.com/TelescopeJS/Telescope) built from sources in a container based on the [phusion/passenger-nodejs image](https://registry.hub.docker.com/u/phusion/passenger-nodejs/)


Build It
=========

```
docker build -t telescope .
```

Use It
=======

```
docker run -d -p 3000:3000 telescope
```

Persistent Data
=======================

Mount the local mongodb folder in a custom location :

```
docker run -d -p 3000:3000 -v /custom/location:/telescope/.meteor/local/db telescope
```
