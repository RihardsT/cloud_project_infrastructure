FROM armv7/armhf-ubuntu:16.10
ADD qemu-arm-static /usr/bin/qemu-arm-static

RUN apt-get update && apt-get install -y apt-transport-https ca-certificates \
  python3 python3-pip vim less git ruby ruby-dev wget curl \
  libcurl4-openssl-dev libssl-dev zlib1g-dev build-essential && apt-get upgrade -y

ENV NGINX_VERSION 1.11.10
RUN cd /tmp && wget https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz \
  && tar -xf nginx-$NGINX_VERSION.tar.gz

RUN gem install passenger --no-rdoc --no-ri \
  && passenger-install-nginx-module --auto --nginx-source-dir=/tmp/nginx-$NGINX_VERSION --prefix=/opt/nginx --languages python

RUN apt-get purge -y build-essential && apt-get autoclean -y && apt-get -y autoremove
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*