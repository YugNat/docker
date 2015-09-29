/opt/elasticsearch-1.7.1/bin/elasticsearch &
/opt/logstash-1.5.4/bin/logstash agent -f /opt/logstash-1.5.4/conf/logstash.conf &
sleep 5
/opt/kibana/bin/kibana &
/bin/bash
