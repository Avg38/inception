FROM debian:bullseye

RUN apt-get update &&\
	apt-get install -y php-fpm php-mysqli mariadb-client curl netcat &&\
	rm -rf /var/lib/apt/lists/*

COPY /conf/wp-config.sh /

RUN chmod +x wp-config.sh

EXPOSE 9000

ENTRYPOINT ["./wp-config.sh"]

CMD ["php-fpm", "-F"]
