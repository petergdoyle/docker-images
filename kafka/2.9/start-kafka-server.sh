#!/bin/sh
die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "1 argument required, $# provided"
echo $1 | grep -E -q '^[0-9]+$' || die "Numeric argument required, $1 provided"

number_of_servers="$1"

for ((n=0;n<$number_of_servers;n++))
do

  BROKER_ID=$n
  BROKER_PORT=909$n
  BROKER_LOG_DIR=kafka-logs-$n
  BROKER_LOG_RETENTION_SIZE=25000000
  BROKER_LOG_SEGMENT_SIZE=25000000
  BROKER_LOG_RETENTION_HRS=16
  BROKER_ZOOKEEPER_CONNECT=kafka_zk_0:2181
  SERVER_PROPERTIES="server-$n.properties"

  cat /kafka/server.properties \
    |sed "s/BROKER_ID/$BROKER_ID/" \
      |sed "s/BROKER_PORT/$BROKER_PORT/" \
        |sed "s/BROKER_LOG_DIR/$BROKER_LOG_DIR/" \
          |sed "s/BROKER_LOG_RETENTION_HRS/$BROKER_LOG_RETENTION_HRS/" \
            |sed "s/BROKER_LOG_RETENTION_SIZE/$BROKER_LOG_RETENTION_SIZE/" \
              |sed "s/BROKER_LOG_SEGMENT_SIZE/$BROKER_LOG_SEGMENT_SIZE/" \
                |sed "s/BROKER_ZOOKEEPER_CONNECT/$BROKER_ZOOKEEPER_CONNECT/" \
                  > $KAFKA_HOME/config/$SERVER_PROPERTIES

   $KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/$SERVER_PROPERTIES
done
