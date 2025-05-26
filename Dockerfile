FROM raesene/bwapp

RUN apt-get update && apt-get install -y curl wget php5-gd && mkdir /var/www/html/logs && touch /var/www/html/logs/visitors.txt && chmod -R 777 /var/www/html && rm -rf /var/lib/apt/lists/*