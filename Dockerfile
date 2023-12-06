FROM php:8.0.9-apache

WORKDIR /app

COPY . /var/www/html/

RUN docker-php-ext-install pdo pdo_mysql
EXPOSE 80
EXPOSE 443

CMD ["apache2-foreground"]