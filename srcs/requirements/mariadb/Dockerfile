FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y mariadb

COPY mariadb-init.sql conf/

EXPOSE 3306

CMD ["mysqld"]