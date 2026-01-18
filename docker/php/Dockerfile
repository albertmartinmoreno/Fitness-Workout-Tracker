FROM php:8.3-fpm

WORKDIR /var/www/project

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpq-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
    pdo_pgsql \
    opcache

COPY --from=composer /usr/bin/composer /usr/bin/composer

EXPOSE 9000

CMD ["php-fpm"]
