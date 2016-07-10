#!/bin/bash 

CONF_PATH=${CONF_PATH:-'/etc/opsgenie/marid/marid.conf'}
LOG_CONF_PATH=${LOG_CONF_PATH:-'/etc/opsgenie/marid/log.properties'}
SCRIPTS_DIR=${SCRIPTS_DIR:-'/var/opsgenie/marid/scripts'}
MEM_LIMIT=${MEM_LIMIT:-'-Xmx512m'}

java \
  -Dmarid.config=/etc/opsgenie/marid \
  -Dmarid.conf.path="$CONF_PATH" \
  -Dmarid.log.conf.path="$LOG_CONF_PATH" \
  -Dmarid.scripts.dir="$SCRIPTS_DIR" \
  -Djava.io.tmpdir=/tmp/marid "$MEM_LIMIT" -server \
  -cp MARID_CLASSPATH:/var/lib/opsgenie/marid/* com.ifountain.opsgenie.client.marid.Bootstrap
