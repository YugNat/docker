# Pull base image.
FROM java:8-jre

MAINTAINER YugNat

# Install.

ENV LOGSTASH_MAJOR 2.1
ENV LOGSTASH_VERSION 1:2.1.0-1

RUN curl https://download.elastic.co/logstash/logstash/logstash-2.1.0.tar.gz | tar xzC /opt/
RUN mv /opt/logstash* /opt/logstash

ENV PATH /opt/logstash/bin:$PATH

# Add conf files.
ADD conf/logstash.conf /opt/logstash/conf/

# Define mountable directories.
VOLUME ["/data"]

# Define default command.
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["logstash", "agent"]
