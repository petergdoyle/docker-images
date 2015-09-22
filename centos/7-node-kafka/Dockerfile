FROM centos:7

MAINTAINER Peter Doyle

RUN yum -y install epel-release
RUN yum -y update; yum clean all;

RUN yum -y install vim curl git \
gcc gcc-c++ kernel-devel make \
nodejs npm

RUN npm install node-gyp

CMD ["/bin/bash"]
