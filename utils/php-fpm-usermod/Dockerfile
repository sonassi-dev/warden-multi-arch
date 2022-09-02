ARG PHP_VERSION
ARG WITH_LOADERS
ARG UID
ARG GID

FROM ghcr.io/drpayyne/warden-php-m2${WITH_LOADERS}:${PHP_VERSION}-deb

USER root

RUN usermod --uid ${UID} www-data
RUN usermod --gid ${GID} www-data

WORKDIR /var/www/html
USER www-data
