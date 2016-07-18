FROM java:8-jdk
MAINTAINER oliver nadj <mr.oliver.nadj@gmail.com>
RUN curl -O https://s3-us-west-2.amazonaws.com/opsgeniedownloads/repo/opsgenie-marid_2.4.3_all.deb && \
  dpkg -i opsgenie-marid_2.4.3_all.deb && \
  curl -o /var/lib/opsgenie/marid/jruby-complete-9.1.2.0.jar https://s3.amazonaws.com/jruby.org/downloads/9.1.2.0/jruby-complete-9.1.2.0.jar

ADD scripts/start.sh /start.sh
ADD etc/log.properties /etc/opsgenie/marid/log.properties
RUN chmod 755 /start.sh
CMD ["/bin/bash", "/start.sh"]