FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y nginx

COPY nginx.conf conf/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]