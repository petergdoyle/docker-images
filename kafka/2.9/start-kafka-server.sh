#!/bin/sh

if [ "$#" -ne 1 ]
then
  echo "Usage: ${BASH_SOURCE[0]} \
    [broker_id (default 0)] \
    [zk (default kafka_zk_0:2181)] \
    [broker_port (default 909\$broker_id)] \
    [broker_log_retention_size (default 25000000)] \
    [broker_log_segment_size (default 25000000)] \
    [broker_log_retention_hrs] \
    [broker_log_retention_check_interval (default 3000)]
    "
  exit 1
fi

broker_id=${1-"0"}
zk=${2-"kafka_zk_0:2181"}
broker_port=${3-"909$broker_id"}
broker_log_dir=kafka-logs-$broker_id
broker_log_retention_size=${4-"25000000"}
broker_log_segment_size=${5-"25000000"}
broker_log_retention_check_interval=${6-"3000"}
broker_log_retention_hrs=${7-"16"}
server_properties="server-$broker_id.properties"

cat server.properties \
  |sed "s/BROKER_ID/$broker_id/" \
    |sed "s/BROKER_PORT/$broker_port/" \
      |sed "s/BROKER_LOG_DIR/$broker_log_dir/" \
        |sed "s/BROKER_LOG_RETENTION_HRS/$broker_log_retention_hrs/" \
          |sed "s/BROKER_LOG_RETENTION_SIZE/$broker_log_retention_size/" \
            |sed "s/BROKER_LOG_RETENTION_CHECK_INTERVAL/$broker_log_retention_check_interval/" \
              |sed "s/BROKER_LOG_SEGMENT_SIZE/$broker_log_segment_size/" \
                |sed "s/BROKER_ZOOKEEPER_CONNECT/$zk/" \
                  > $KAFKA_HOME/config/$server_properties

$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/$server_properties
