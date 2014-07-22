docker
======

Test about docker

elogbana : dock with logstash, elasticsearch, kibana and nginx.
You can use /data to share a log with the dock.

sudo docker run -it --rm -p 80:80 -p 9200:9200 -v /data:/data test/logstash
