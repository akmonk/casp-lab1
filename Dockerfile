FROM centos:latest
MAINTAINER Anton Ketov
RUN yum update -y
RUN yum install -y httpd php php-mysql php-mbstring php-mcrypt php-devel php-xml php-gd
RUN echo -e "<?php\nphpinfo();">/var/www/html/index.php
RUN rm -f /var/run/apache2/apache2.pid
#RUN /bin/sleep 9000
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

