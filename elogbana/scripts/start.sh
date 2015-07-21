/opt/elasticsearch-1.7.0/bin/elasticsearch &
/opt/logstash-1.5.2/bin/logstash agent -f /opt/logstash-1.5.2/conf/logstash.conf &
sleep 5
/opt/kibana/bin/kibana &
/bin/bash
