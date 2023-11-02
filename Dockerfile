FROM centos:latest
RUN yum -y update && \
RUN yum -y install httpd && \
RUN clean all
EXPOSE 80
CMD [ "httpd" "-D" "FOREGROUND" ]
