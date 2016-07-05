# ryu-base

RYU in Docker

## Usage

Run the container and login (Docker port forwards port 6633 to host port 6633)
```
docker run -it -p 6633:6633 --rm hsnl-dockerbuild/ryu-base /bin/bash
```

or run the specific app `simple_switch_13`
```
docker run -it -p 6633:6633 --rm hsnl-dockerbuild/ryu-base ryu-manager ryu.app.simple_switch_13.py
```
