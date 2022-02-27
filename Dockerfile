FROM mileschou/phalcon:7.4-apache

RUN apt-get update && \
    apt-get install -y git zip && \
    docker-php-ext-install mysqli pdo pdo_mysql && \
    curl -s https://getcomposer.org/installer | php && \
    a2enmod rewrite
