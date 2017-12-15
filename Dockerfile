# docker build -t apfmx-installer-base .
# docker tag apfmx-installer-base kimcharli/apfmx-installer-base:01
# docker tag apfmx-installer-base kimcharli/apfmx-installer-base:latest
# docker push kimcharli/apfmx-installer-base:01
# docker push kimcharli/apfmx-installer-base:latest

FROM ubuntu:16.04

LABEL maintainer="kimcharli@gmail.com"

WORKDIR /root
COPY requirements-1.txt setup-1.sh /root/

ENV NOTVISIBLE "in users profile"
RUN sh setup-1.sh

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]

