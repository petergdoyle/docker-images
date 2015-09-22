FROM petergdoyle/centos:7

MAINTAINER Peter Doyle

RUN curl -O -L --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
"http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz"

RUN mkdir -p /usr/java; \
  tar -xvf jdk-8u60-linux-x64.tar.gz -C /usr/java; \
  ln -s /usr/java/jdk1.8.0_60/ /usr/java/default; \
  rm -f jdk-8u60-linux-x64.tar.gz

RUN alternatives --install "/usr/bin/java" "java" "/usr/java/default/bin/java" 99999; \
  alternatives --install "/usr/bin/javac" "javac" "/usr/java/default/bin/javac" 99999; \
  alternatives --install "/usr/bin/javaws" "javaws" "/usr/java/default/bin/javaws" 99999

ENV JAVA_HOME=/usr/java/default

RUN curl -O http://www.eu.apache.org/dist/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz
RUN mkdir /usr/maven; \
tar -xvf apache-maven-3.3.3-bin.tar.gz -C /usr/maven; \
ln -s /usr/maven/apache-maven-3.3.3 /usr/maven/default; \
rm -f apache-maven-3.3.3-bin.tar.gz

RUN  alternatives --install "/usr/bin/mvn" "mvn" "/usr/maven/default/bin/mvn" 99999

ENV MAVEN_HOME=/usr/maven/default

CMD ["/bin/bash"]
