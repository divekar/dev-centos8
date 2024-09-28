# dev-centos8
CentOS 8 Development Environment

1. Use Dockerfile provided. `cd` into the directory of this checkout.
2. `docker build --platform linux/arm64 --network=host -t dev-centos9 .`
3. `docker run -it --rm -v $(pwd):/code repositor:tag`
