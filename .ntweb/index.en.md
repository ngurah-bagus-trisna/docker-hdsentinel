---
metadata:
  website: https://hub.docker.com/r/ntrrg/hdsentinel
title: docker-hdsentinel
description: Dockerized Hard Disk Sentinel CLI.
tags:
  - containers
  - clis
  - docker
  - hdsentinel
---

[![Docker Build Status](https://img.shields.io/docker/build/ntrrg/hdsentinel.svg)](https://hub.docker.com/r/ntrrg/hdsentinel)

[Hard Disk Sentinel]: https://www.hdsentinel.com/

**docker-hdsentinel** is a Dockerized [Hard Disk Sentinel][] CLI.

| Tag | Dockerfile |
| --: | :-- |
| `latest`, `018c` | [Dockerfile](https://github.com/ntrrg/docker-hdsentinel/blob/018c/Dockerfile) |

# Usage

```shell-session
$ docker run --rm -v /dev/:/dev/ \
    ntrrg/hdsentinel [OPTIONS] [DISK]
```

Any option from hdsentinel might be used, for extra information use `docker run
--rm ntrrg/hdsentinel -h` or see the [official
documentation](https://www.hdsentinel.com/hard_disk_sentinel_linux.php).

## Example

* Get information about disks in the system

```shell-session
$ docker run --rm -v /dev/:/dev/ ntrrg/hdsentinel -solid
```

* Get information about the main disk

```shell-session
$ docker run --rm -v /dev/:/dev/ ntrrg/hdsentinel -solid /dev/sda
```

# Acknowledgment

Working on this project I use/used:

* [Alpine](https://alpinelinux.org/)

* [XFCE](https://xfce.org/)

* [st](https://st.suckless.org/)

* [Zsh](http://www.zsh.org/)

* [GNU Screen](https://www.gnu.org/software/screen)

* [EditorConfig](http://editorconfig.org/)

* [Vim](https://www.vim.org/)

* [Git](https://git-scm.com/)

* [Docker](https://docker.com)

* [Firefox](https://www.mozilla.org/en-US/firefox/)

* [Github](https://github.com)

* [Hard Disk Sentinel](https://www.hdsentinel.com/)

