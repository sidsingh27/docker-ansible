FROM centos:latest
RUN yum -y install httpd && systemctl enable httpd.service
COPY site /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
