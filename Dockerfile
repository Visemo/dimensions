#Dockerfile for Dimension Service Proton
#VERSION 1 - EDITION 1
#Author:   Kai Qian <visemo1413@gmail.com>

#FROM <image> or FROM <image>:<tag>
FROM django:latest

MAINTAINER kai.qian <visemo1413@gmail.com>

#RUN <command> or RUN ["executable", "param1", "param2"]

# Dependency python3 & ansible
RUN yum -y install ansible
RUN yum -y install httpd
#RUN yum -y install sudo-1.8.6p3-20.el6_7.x86_64

# PIP3 intall python dependency, this should be overwrite by python setup
RUN pip3 install django-crontab
RUN pip3 install django-auth-ldap3
RUN pip3 install rsa

#Install Dimensions
RUN useradd dimensions
RUN mkdir -p /opt/dimensions
RUN chmod a+rw /opt/dimensions
ENV PYTHONPATH /usr/lib/python3.4/site-packages
WORKDIR /opt/dimensions
RUN django-admin startproject dimensions
RUN chown dimensions:dimensions /opt/dimensions
RUN chmod u+s /opt/dimensions
USER dimensions
#RUN chmod 640 /etc/sudoers
#RUN chmod 440 /etc/sudoers

VOLUME ["~/appdir/dimensions:/opt/dimensions"]

# You can all enable other port with '-p' when you creating a container
EXPOSE 8000 80

ENTRYPOINT ["/bin/bash", "python manage.py runserver 0.0.0.0:80"]

