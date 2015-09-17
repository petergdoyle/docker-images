#!/bin/sh
if [ "$#" -ne 1 ]
then
  echo "Usage: start-kafka-consumer [zk'localhost:2181'] [topic]"
  exit 1
fi
#$KAFKA_HOME/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic airshop --from-beginning
$KAFKA_HOME/bin/kafka-console-consumer.sh --zookeeper $zk --topic $topic --from-beginning
