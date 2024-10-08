FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y php-fpm php-mysqli mariadb-client\
	curl

COPY /conf/wp-config.sh /

RUN chmod +x wp-config.sh

ENTRYPOINT ["./wp-config.sh"]
# CMD ["php-fpm7.4", "-F"]
