FROM raesene/bwapp

RUN apt-get update && apt-get install -y curl wget php5-gd && rm -rf /var/lib/apt/lists/*

