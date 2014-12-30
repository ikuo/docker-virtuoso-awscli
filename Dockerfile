FROM nicholsn/virtuoso
MAINTAINER Ikuo Matsumura <makiczar@gmail.com>
ADD startup.sh /tmp/startup.sh
RUN chmod a+x /tmp/startup.sh
CMD ["/tmp/startup.sh"]
