FROM centos:7

MAINTAINER Peter Doyle

RUN yum -y update; \
yum clean all; \
yum -y install epel-release

RUN yum -y install supervisor \
  vim bash-completion tree git \
  htop curl wget telnet \
  iperf net-tools iftop nmon httpd-tools sysstat httperf

CMD ["/bin/bash"]
