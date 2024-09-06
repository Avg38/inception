FROM debian:bullseye

RUN apt update && apt upgrade && apt install -y nginx openssl

CMD ["nginx", "-g", "daemon off;"]