FROM ubuntu:20.04

RUN apt-get update -y

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install apache2 -y

RUN apt-get -y install software-properties-common && \
    add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get -y install php7.4

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
