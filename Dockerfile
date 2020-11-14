FROM php:8.0-rc

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt update && apt-get install -y \
    unzip

WORKDIR /opt/project
