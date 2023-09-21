FROM centos:latest
RUN yum -y update && \
RUN yum -y install httpd && \
RUN clean all
EXPOSE 80
CMD [ "https" "-D" "FOREGROUND" ]
