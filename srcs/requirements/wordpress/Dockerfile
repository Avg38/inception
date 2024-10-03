FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y php-fpm php-mysqli\
	curl

COPY ./conf/www.conf /etc/php/8.2/fpm/pool.d/.

CMD ["php-fpm8.2", "-F"]
