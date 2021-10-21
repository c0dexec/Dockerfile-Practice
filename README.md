# About
This is a practice understanding how to encorporate multiple services like ssh and apache within a docker image.

Notes:
> While running makesure to make use of `--cap-add=NET_ADMIN`.
> Ports 80 and 22 are the ones that are being exposed inside the image.

# Building and Running
## Docker Build
```
docker build -t test:1 .
```
## Docker Run
```
docker run --name Ubuntu-SPR500 --hostname Ubuntu-SPR500 --cap-add=NET_ADMIN -it -p7000:80 -p7001:22 test:1
```