FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y &&\
	apt-get install -y curl php php7.4-fpm php-mysql mariadb-client netcat

COPY /conf/wp-config.sh /

RUN chmod +x wp-config.sh

ENTRYPOINT ["./wp-config.sh"]
