FROM orboan/dcss-shellinabox
MAINTAINER Oriol Boix Anfosso <dev@orboan.com>

RUN \
  yum install httpd -y

# - Clean YUM caches to minimise Docker image size...
RUN \
  yum clean all && rm -rf /tmp/yum*

ADD container-files /

EXPOSE 8080
