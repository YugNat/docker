# Pull base image.
FROM java:8-jre

MAINTAINER YugNat

# Install.
RUN curl https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.1.0/elasticsearch-2.1.0.tar.gz | tar xzC /opt/
RUN chmod -R 777 /opt/elastic*

# Add conf files.
COPY config /opt/elasticsearch-2.1.0/config

# Define mountable directories.

# Define default command.
CMD runuser -u daemon /opt/elastic*/bin/elasticsearch

# Expose ES ports.
EXPOSE 9200 9300
