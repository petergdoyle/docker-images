FROM petergdoyle/oraclejdk:8

MAINTAINER Peter Doyle

RUN curl -O --insecure http://apache.claz.org/kafka/0.8.2.1/kafka_2.9.1-0.8.2.1.tgz;
RUN mkdir /kafka; \
  tar -xvf kafka_2.9.1-0.8.2.1.tgz -C /kafka; \
  ln -s /kafka/kafka_2.9.1-0.8.2.1 /kafka/default; \
  rm -f kafka_2.9.1-0.8.2.1.tgz

ENV KAFKA_HOME='/kafka/default'

COPY kafka-single-node-server-0.properties $KAFKA_HOME/config/server-0.properties
COPY kafka-single-node-server-1.properties $KAFKA_HOME/config/server-1.properties
COPY kafka-single-node-server-2.properties $KAFKA_HOME/config/server-2.properties
COPY zookeeper.properties $KAFKA_HOME/config/zookeeper.properties
COPY start-kafka-zookeeper.sh start-kafka-server.sh start-kafka-consumer.sh stop-kafka-singlenode.sh /usr/bin/

CMD ["/bin/bash"]
