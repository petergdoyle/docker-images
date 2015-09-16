#!/bin/sh

#$KAFKA_HOME/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic airshop --from-beginning
$KAFKA_HOME/bin/kafka-console-consumer.sh --zookeeper $zk --topic $topic --from-beginning
