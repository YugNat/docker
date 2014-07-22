#VERSION 0.5

# Pull base image.
FROM dockerfile/ubuntu

MAINTAINER YugNat

# Set environment variables.
ENV http_proxy http://vipproxy1.prod.extelia.fr:8080
ENV https_proxy http://vipproxy1.prod.extelia.fr:8080
ENV ftp_proxy http://vipproxy1.prod.extelia.fr:8080

# Install.
RUN \
  echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx
RUN curl https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz | tar xzC /opt/
RUN curl https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.2.tar.gz | tar xzC /opt/
RUN curl https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz | tar xzC /opt/ && mv /opt/kibana* /opt/kibana

# Add conf files.
ADD nginx.conf /etc/nginx/
ADD logstash.conf /opt/logstash-1.4.2/conf/

# Add start script
ADD start.sh /root/

# Expose nginx and ES ports.
EXPOSE 80 9200

# Define mountable directories.
VOLUME ["/data"]
