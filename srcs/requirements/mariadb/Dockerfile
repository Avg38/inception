FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y mariadb-server && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

COPY ./conf/my.cnf /etc/mysql/mariadb.conf.d/.
COPY ./conf/init.sql /etc/mysql/init.sql
RUN chmod +x /conf/script.sh

CMD ["./conf/script.sh"]