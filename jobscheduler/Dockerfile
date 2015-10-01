# Pull base image.
FROM java:8-jre

MAINTAINER YugNat

# Install.
RUN curl http://netcologne.dl.sourceforge.net/project/jobscheduler/jobscheduler_linux-x64.1.10.0.tar.gz | tar xzC /opt/

# Add conf files.
ADD conf/jobscheduler_install.xml /root

# Add start script

# Start installation
RUN /opt/jobscheduler.1.10.0/setup.sh /root/jobscheduler_install.xml

# Define mountable directories.
VOLUME ["/data"]

# Define default command.
CMD /opt/scheduler/bin/jobscheduler.sh start

# Expose Kibana and ES ports.
EXPOSE 4444

