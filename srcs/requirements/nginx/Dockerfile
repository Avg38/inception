FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y nginx

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]