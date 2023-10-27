FROM php:7.4-alpine

ENV PATH $PATH:/root/.composer/vendor/bin

RUN apk add --no-cache \
    git \
    curl \
    zip \
    unzip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer global require "banago/phploy"

ENTRYPOINT [ "phploy" ]
