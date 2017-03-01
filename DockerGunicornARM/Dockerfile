FROM registry.gitlab.com/rihardst/cloud_project_infrastructure:python_arm
ENV PYTHONUNBUFFERED 1
RUN mkdir /config
ADD /config/requirements.txt /config/
RUN pip install -r /config/requirements.txt
RUN mkdir /src;
WORKDIR /src