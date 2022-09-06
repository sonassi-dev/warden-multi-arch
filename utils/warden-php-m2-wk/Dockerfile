ARG PHP_VERSION
ARG WITH_LOADERS

FROM ghcr.io/drpayyne/warden-php-m2${WITH_LOADERS}:${PHP_VERSION:-7.4}-deb

ARG HOST_UID
ARG HOST_GID

USER root

RUN usermod --uid ${HOST_UID} www-data
RUN usermod --gid ${HOST_GID} www-data

WORKDIR /var/www/html
USER www-data
