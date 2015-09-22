#!/bin/sh
if [ "$#" -ne 1 ]
then
  echo "Usage: ${BASH_SOURCE[0]} [topic] [zk]"
  exit 1
fi
topic=$1
zk= ${2-'kafka_zk_0:2181'}
#$KAFKA_HOME/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic airshop --from-beginning
$KAFKA_HOME/bin/kafka-console-consumer.sh --zookeeper $zk --topic $topic --from-beginning
