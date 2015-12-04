# Pull base image.
FROM debian:jessie

MAINTAINER YugNat

# Add our user and group first to make sure their IDs get assigned consistently.
RUN groupadd -r kibana && useradd -r -m -g kibana kibana

# Install.
RUN apt-get update && apt-get install -y ca-certificates curl --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN curl https://download.elastic.co/kibana/kibana/kibana-4.3.0-linux-x64.tar.gz | tar xzC /opt/ && mv /opt/kibana* /opt/kibana

# Add conf files.
#ADD conf/kibana.yml /opt/kibana/config/

# Expose Kibana ports.
EXPOSE 5601

# Define default command.
ENV KIBANA_VERSION 4.3.0
ENV PATH /opt/kibana/bin:$PATH
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["kibana"]
