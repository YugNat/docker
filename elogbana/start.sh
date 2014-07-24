/etc/init.d/nginx start
/opt/elasticsearch-1.2.2/bin/elasticsearch &
/opt/logstash-1.4.2/bin/logstash agent -f /opt/logstash-1.4.2/conf/logstash.conf &
/bin/bash
