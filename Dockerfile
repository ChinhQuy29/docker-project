FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apache2 curl
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html
ENTRYPOINT ["/user/sbin/apache2ct1"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80
