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

Offline Build Requirements (Advanced)
-------------------------------------

1) Docker
2) A private Debian mirror

Pre-Offline Build
-----------------

Clone docker-cpp-coveralls on a device (e.g. an sd-card) that can
later be placed in read-only mode, and then run
download-cpp-coveralls.sh from the repo directory.

```
$ git clone https://github.com/IkeLewis/docker-cpp-coveralls
$ cd docker-cpp-coveralls
$ ./download-cpp-coveralls.sh.
```

Offline Build
-------------

1) Make sure the device used in the pre-installation is in read-only
   mode and then insert/connect it to the desired machine in your
   offline network.

2) Change to your docker projects directory, copy
   docker-cpp-coveralls, then build as usual.

   ```
   $ cd /your/docker/projects

   $ copy -R /path/to/docker-cpp-coveralls .

   $ docker build -t ikelewis/cpp-coveralls .
   ```

Command line Usage
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