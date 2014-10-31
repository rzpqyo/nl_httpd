FROM centos:centos6
MAINTAINER rzpqyo

RUN yum -y install httpd
ADD src /var/www/html
RUN chmod -R 444 /var/www/html/*

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
