FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y php-fpm

EXPOSE 3306

CMD ["php-fpm7.4", "-F"]
