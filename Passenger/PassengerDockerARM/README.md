## Passenger Docker image for ARM
This is a base image which is installs Passenger Nginx
PassengerDockerARMDjango builds upon this image

There's no magic found here: Passenger installs Nginx from source.
Followed https://www.phusionpassenger.com/library/install/nginx/install/oss/rubygems_norvm/

## Build ARM ready Docker image
Followed https://blog.hypriot.com/post/setup-simple-ci-pipeline-for-arm-images/
I believe that I copied qemu-arm-static out of hypriot/rpi-alpine image.
```
docker run --rm --privileged multiarch/qemu-user-static:register --reset
docker build -t passenger_arm .
```