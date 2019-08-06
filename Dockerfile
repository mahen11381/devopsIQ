FROM ubuntu:latest
MAINTAINER devopstest
RUN apt -y install httpd
COPY index.html /var/www/html/devopsIQ
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 84
