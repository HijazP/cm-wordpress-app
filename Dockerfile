FROM wordpress:latest

RUN apt-get update && \
    apt-get install -y wget unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://downloads.wordpress.org/plugin/wp-stateless.zip -O /tmp/wp-stateless.zip && \
    unzip /tmp/wp-stateless.zip -d /var/www/html/wp-content/plugins/ && \
    rm /tmp/wp-stateless.zip

RUN chown -R www-data:www-data /var/www/html/wp-content