FROM centos:latest
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all
EXPOSE 9090
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
