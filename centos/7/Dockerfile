FROM centos:7

MAINTAINER Peter Doyle

RUN yum -y update; \
yum clean all; \
yum -y install epel-release

RUN yum -y install vim htop curl wget net-tools tree telnet git

CMD ["/bin/bash"]
