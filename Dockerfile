FROM ubuntu
RUN apt-get update && \
    apt-get intall -y apache2 && \
    rm -rf /var/lib/apt/lists/*
COPY index.html /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
