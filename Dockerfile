FROM php:7.2-cli

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug

ENV PHP_IDE_CONFIG="serverName=localhost"

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD [ "php", "./bootstrap.php" ]
