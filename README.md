[![Build Status](https://travis-ci.org/IkeLewis/docker-cpp-coveralls.svg?branch=master)](https://travis-ci.org/IkeLewis/docker-cpp-coveralls)

docker-cpp-coveralls
====================

The docker-cpp-coveralls repository may be used to install
cpp-coveralls (in a docker container) in either an online setting or
an offline high-security setting.

Online Installation (via docker)
--------------------------------

```
$ docker pull ikelewis/cpp-coveralls
```

Offline Requirements
--------------------

1) Docker
2) A private Debian mirror

Pre-Installation for Offline Machines
-------------------------------------

Clone docker-cpp-coveralls on a device (e.g. an sd-card) that can
later be placed in read-only mode, and then run
download-cpp-coveralls.sh from the repo directory.

```
$ git clone https://github.com/IkeLewis/docker-cpp-coveralls
$ cd docker-cpp-coveralls
$ ./download-cpp-coveralls.sh.
```

Offline Installation
--------------------

1) Make sure the device used in the pre-installation is in read-only
   mode and then insert/connect it to the desired machine in your
   offline network.

2) Clone docker-cpp-coveralls to your docker projects directory.  Then
   build as usual.

   ```
   $ git clone </path/to/docker-cpp-coveralls>

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