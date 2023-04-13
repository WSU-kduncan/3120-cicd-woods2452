FROM httpd:2.4

RUN apt update
RUN apt install -y python3 python3-pip

COPY index.html /usr/local/apache2/htdocs/

EXPOSE 8080
