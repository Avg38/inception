FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y php-fpm

COPY ./conf/wp-config.php /var/www/html

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]
