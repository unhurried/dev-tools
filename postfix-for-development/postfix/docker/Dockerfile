FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update \
  && apt-get -y install postfix \
  && apt-get -y install mailutils

RUN echo "/^.*$/ root" > /etc/postfix/virtual
RUN echo "virtual_alias_maps = regexp:/etc/postfix/virtual" >> /etc/postfix/main.cf
RUN postmap /etc/postfix/virtual

EXPOSE 25

CMD [ "sh", "-c", "/usr/sbin/postfix start && tail -f /dev/null" ]
