[![Build Status](https://travis-ci.org/IkeLewis/docker-cpp-coveralls.svg?branch=master)](https://travis-ci.org/IkeLewis/docker-cpp-coveralls)

docker-cpp-coveralls
====================

Dockerize [cpp-coveralls](https://github.com/eddyxu/cpp-coveralls)
(run cpp-coveralls in a docker container).

Online Installation
-------------------

```
$ docker pull ikelewis/cpp-coveralls
```

Pre-Offline Installation
------------------------

Pull the image from Docker Hub, and then save it to a device
(e.g. an sd-card) that can later be placed in read-only mode.

```
$ docker pull ikelewis/cpp-coveralls
$ docker save -o cpp-coveralls.tar ikelewis/cpp-coveralls
```

Offline Installation
--------------------

Make sure the device used in the previous step is in read-only mode
before inserting/connecting it to the desired machine in your offline
network.  Then load the image onto the machine.

```
$ docker load -i cpp-coveralls.tar
```

Command Line Usage
------------------

```
$ docker run -v <your-project-dir>:/project-for-ca -w /project-for-ca \
  cpp-coveralls <cpp-coveralls-options>
```

Removal
-------

```
$ docker rmi ikelewis/cpp-coveralls
```