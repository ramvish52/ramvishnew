FROM centos:centos7
MAINTAINER ramvish52@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/yooga.zip /var/www/html
WORKDIR /var/www/html
RUN  unzip yooga.zip
RUN cp -rvf free-yoga-website-template/* .
RUN rm -rf free-yoga-website-template
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
