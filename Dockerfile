    #Pull base image
    FROM ubuntu
    #Install Apache
    RUN apt-get update -y && apt-get install apache2 apache2-utils -y#Define default port
    COPY index.html /var/www/html/devopsIQ
    EXPOSE 85
    ENTRYPOINT [ "/usr/sbin/apache2ctl" ]#Define default command
    CMD [ "-D", "FOREGROUND" ]
