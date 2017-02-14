FROM passenger_arm

RUN adduser --disabled-password --gecos "" myappuser
RUN mkdir -p /var/www/myapp && chown -R myappuser:myappuser /var/www/myapp

USER myappuser
RUN mkdir /home/myappuser/.ssh/
ADD id_rsa /home/myappuser/.ssh/
RUN touch /home/myappuser/.ssh/known_hosts &&\
  ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts
RUN cd /var/www/myapp && git clone git@gitlab.com:RihardsT/blog_project.git code
RUN cd /var/www/myapp/code &&\
  pip3 install -r requirements.txt &&\
  python3 manage.py migrate

USER root
ADD nginx.conf /opt/nginx/conf/nginx.conf

CMD ["/opt/nginx/sbin/nginx", "-g", "daemon off;"]