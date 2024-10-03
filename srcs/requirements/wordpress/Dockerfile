FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y php-fpm php-mysqli\
	curl

COPY ./conf/wp-config.sh /etc/php/7.4/fpm/pool.d/.

CMD ["php-fpm7.4", "-F"]
