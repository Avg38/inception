FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y php-fpm

CMD ["php-fpm8.2", "-F"]

EXPOSE 3306