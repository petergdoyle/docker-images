FROM centos:7

MAINTAINER Peter Doyle

RUN yum -y update; \
yum clean all; \
yum -y install epel-release vim htop curl wget net-tools tree

CMD ["/bin/bash"]
