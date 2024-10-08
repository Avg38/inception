FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y mariadb-server && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

COPY /conf/create_db.sh /


RUN chmod +x create_db.sh

ENTRYPOINT ["./create_db.sh"]

CMD ["mysqld"]