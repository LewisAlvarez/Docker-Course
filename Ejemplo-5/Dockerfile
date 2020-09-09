FROM centos:7

#Instalo apache y php, el back slash es para organizar las instrucciones
RUN \
  yum -y install httpd php php-cli php-common

CMD apachectl -DFOREGROUND
