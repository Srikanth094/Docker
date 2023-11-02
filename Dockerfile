FROM centos:latest
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all
EXPOSE 80
CMD [ "httpd" "-D" "FOREGROUND" ]
