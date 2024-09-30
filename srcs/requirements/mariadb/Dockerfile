FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y mariadb-server && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

COPY conf/my.cnf /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]