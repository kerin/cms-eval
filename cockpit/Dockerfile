FROM php:7.0.10-apache
ENV VERSION 0.13.0

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng12-dev \
        sqlite3 \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN curl -fsSL https://github.com/COCOPi/cockpit/archive/${VERSION}.tar.gz -o cockpit.tgz \
    && tar xzf cockpit.tgz \
    && rm cockpit.tgz \
    && mv cockpit-$VERSION /var/www/html/cockpit \
    && chown -R www-data:www-data /var/www/html/cockpit \
    && chmod -R 740 /var/www/html/cockpit
