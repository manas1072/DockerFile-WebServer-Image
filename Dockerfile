FROM centos:latest
CMD ["/bin/bash"]
RUN yum install httpd -y
RUN yum install net-tools -y
RUN yum install php -y
COPY index.html /var/www/html
RUN echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]                                                
