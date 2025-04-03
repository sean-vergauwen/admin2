FROM nginx:latest
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN apt update -y
RUN apt upgrade -y
RUN apt install certbot python3-certbot-nginx -y