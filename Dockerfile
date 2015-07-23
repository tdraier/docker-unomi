FROM tdraier/ubuntu-java
MAINTAINER tdraier@jahia.com

COPY install.sh /home/jahia/install.sh
COPY startWithIp.sh /home/jahia/startWithIp.sh
USER root
WORKDIR /home/jahia
RUN ./install.sh
WORKDIR /home/jahia/unomi/bin

CMD ["sh", "./startWithIp.sh"]

EXPOSE 9443
EXPOSE 8181
EXPOSE 9200
EXPOSE 9001

