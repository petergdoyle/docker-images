FROM centos:7

MAINTAINER Peter Doyle

RUN yum -y install epel-release
RUN yum -y update; yum clean all;

RUN yum -y install vim curl htop net-tools

CMD ["/bin/bash"]
