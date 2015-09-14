# Pull base image.
FROM java:7-jre

MAINTAINER YugNat

# Install.
RUN curl https://download.elastic.co/logstash/logstash/logstash-1.5.4.tar.gz | tar xzC /opt/
RUN curl https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.1.tar.gz | tar xzC /opt/
RUN curl https://download.elastic.co/kibana/kibana/kibana-4.1.2-linux-x64.tar.gz | tar xzC /opt/ && mv /opt/kibana* /opt/kibana

# Add conf files.
ADD conf/logstash.conf /opt/logstash-1.5.4/conf/
ADD conf/kibana.yml /opt/kibana/config/
#ADD conf/kibana.index /root/.kibana

# Add start script
ADD scripts/start.sh /root/

# Define mountable directories.
VOLUME ["/data"]

# Define default command.
CMD /root/start.sh

# Expose Kibana and ES ports.
EXPOSE 80 9200 9300
