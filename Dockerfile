FROM duffqiu/mesos:latest
MAINTAINER duffqiu@gmail.com

RUN yum -y  update
RUN yum install -y wget

WORKDIR /var/lib/mesos/master


ENTRYPOINT ["mesos-master"]

