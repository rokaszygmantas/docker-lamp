FROM ubuntu:20.04

ENV HOME /root
ARG MYSQL_ROOT_PASS=root

RUN apt-get update && \
    apt-get install -y \
    software-properties-common \
    git \
    mcrypt \
    composer \
    sudo \
    mysql-server \
    php7.4-mysql php7.4-zip php7.4-xml php7.4-mbstring php7.4-curl php7.4-json php7.4-pdo php7.4-tokenizer php7.4-cli php7.4-imap php7.4-intl php7.4-gd php7.4-xdebug php7.4-soap \
    apache2 libapache2-mod-php7.4

RUN echo "date.timezone=Europe/Vilnius" > /etc/php/7.4/cli/conf.d/date_timezone.ini && echo "memory_limit=256M" >> /etc/php/7.4/apache2/php.ini
