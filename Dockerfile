FROM docker.io/openjdk:8-alpine

MAINTAINER kevin zhangkefa@yihecloud.com

WORKDIR /program

COPY  startup.sh /program/startup.sh
RUN chmod +x /program/startup.sh

COPY target/rundocker-1.0.jar /program/app.jar

CMD /program/startup.sh