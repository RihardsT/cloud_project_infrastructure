## About
This is a base image which is installs Passenger Nginx
PassengerDockerARMDjango builds upon this image

## Build ARM ready Docker image
Followed https://blog.hypriot.com/post/setup-simple-ci-pipeline-for-arm-images/
docker run --rm --privileged multiarch/qemu-user-static:register --reset
docker build -t passenger_arm .