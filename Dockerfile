FROM ubuntu:14.04

MAINTAINER wco@byroot.com

ENV REFRESHED_AT 2016-07-07

ADD flatten.sh /usr/local/bin/flatten.sh
RUN apt-get update && \
	apt-get install -y docker.io && \
	ln -sf /usr/bin/docker.io /usr/local/bin/docker && \
	chmod +x /usr/local/bin/flatten.sh

ENTRYPOINT ["/usr/local/bin/flatten.sh"]