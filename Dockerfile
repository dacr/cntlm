FROM debian:wheezy

RUN apt-get update && apt-get install -y cntlm

ADD defaults.conf /defaults.conf
ADD start.sh /start.sh

RUN chmod a+rw /defaults.conf
RUN chmod a+rx start.sh

EXPOSE 3128

ENTRYPOINT ["/start.sh"]

CMD ["proxy:8080"]
