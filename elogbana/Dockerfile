#VERSION 0.1

FROM dockerfile/java
ENV http_proxy http://vipproxy1.prod.extelia.fr:8080
ENV https_proxy http://vipproxy1.prod.extelia.fr:8080
ENV ftp_proxy http://vipproxy1.prod.extelia.fr:8080
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx
RUN curl https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz | tar xzC /opt/
RUN curl https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.2.tar.gz | tar xzC /opt/
RUN curl https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz | tar xzC /opt/ && mv /opt/kibana* /opt/kibana
ADD nginx.conf /etc/nginx/
ADD logstash.conf /opt/logstash-1.4.2/conf/
EXPOSE 80 9200
