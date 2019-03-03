#!/bin/bash

# install dependencies
docker run --rm --interactive --tty --volume /${PWD}:/app composer install

# build and run app container
docker build -t php-app .
docker run -it --rm --name php-test-app php-app

# run tests
#docker run -it --rm --name php-test-app php-app php -dxdebug.remote_enable=1 -dxdebug.remote_autostart=1 -dxdebug.remote_host=10.0.75.1 vendor/phpunit/phpunit/phpunit tests\AppTest.php