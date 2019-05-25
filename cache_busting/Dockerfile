# This docker explains the advantage of merging different RUN commands
FROM ubuntu:16.04

LABEL maintainer "Rekha Rokkam"
#LABEL image_type "Ngnix webserver with PHP"
LABEL image_type  "Default Apache webserver packaged with PHP"

#passing default value to the argument. this can be overridden by providing a value during the docker build.
ARG JQUERY_VERSION_ARG=3.2.0

ENV DOC_ROOT /var/www/mysite-dev
ENV JQUERY_VERSION ${JQUERY_VERSION_ARG}

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    apache2 \
    libapache2-mod-php \
   # nginx \ - we dont need this as the above packages come with apache webserver
    php7.0 \
# Here adding a package and pinning 
# my-package-1.* :: Asterix makes sure that always the latest version of my-package within 1.x is installed.
    && rm -rf /var/lib/apt/lists/*

WORKDIR ${DOC_ROOT}

# USER www-data:www-data - this is not required for apache webserver as the server needs to run as the default user which is root

#COPY /code/site/mysite ${DOC_ROOT} - Since I added the workDir this is not valid anymore
COPY sites/mysite .

#Add virtual host configuration file
ADD code/apache/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf
ADD https://code.jquery.com/jquery-${JQUERY_VERSION}.min.js js/

# removed 443 earlier it was EXPOSE 80 443
EXPOSE 80  

# CMD is the command to start the apache service.
CMD apachectl -D FOREGROUND