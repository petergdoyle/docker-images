
FROM petergdoyle/oraclejdk:8

RUN curl -O http://www.eu.apache.org/dist/tomcat/tomcat-8/v8.0.28/bin/apache-tomcat-8.0.28.tar.gz \
  && mkdir -p /tomcat \
  && tar -xvf apache-tomcat-8.0.28.tar.gz -C /tomcat \
  && ln -s /tomcat/apache-tomcat-8.0.28 /tomcat/default \
  && rm -f apache-tomcat-8.0.28.tar.gz

RUN curl -O http://apache.go-parts.com/tomcat/tomcat-8/v8.0.28/bin/extras/catalina-jmx-remote.jar \
      && mv catalina-jmx-remote.jar /tomcat/default/lib/

EXPOSE 8080
