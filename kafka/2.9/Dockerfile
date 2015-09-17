FROM petergdoyle/oraclejdk:8

MAINTAINER Peter Doyle

RUN curl -O --insecure http://apache.claz.org/kafka/0.8.2.1/kafka_2.9.1-0.8.2.1.tgz;
RUN mkdir /kafka; \
  tar -xvf kafka_2.9.1-0.8.2.1.tgz -C /kafka; \
  ln -s /kafka/kafka_2.9.1-0.8.2.1 /kafka/default; \
  rm -f kafka_2.9.1-0.8.2.1.tgz

ENV KAFKA_HOME='/kafka/default'

COPY server.properties /kafka/
COPY zookeeper.properties $KAFKA_HOME/config/
COPY start-kafka-zookeeper.sh start-kafka-server.sh start-kafka-consumer.sh stop-kafka-singlenode.sh /usr/bin/

CMD ["/bin/bash"]
