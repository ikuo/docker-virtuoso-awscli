FROM nicholsn/virtuoso
MAINTAINER Ikuo Matsumura <makiczar@gmail.com>

# Setup EC2
RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install vim python-pip
RUN pip install awscli

ADD startup.sh /tmp/startup.sh
RUN chmod a+x /tmp/startup.sh
CMD ["/tmp/startup.sh"]
