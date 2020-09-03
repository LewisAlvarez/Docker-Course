#S.O que llevara el contenedor
FROM centos:7

#Lo que va a ejecutar
RUN yum install httpd -y

#Para copiar archivos externos a nuestro dockerfile para que se ejecuten en el contenedor usamoos COPY
ADD startbootstrap-freelancer-master /var/www/html

#Para que este corriendo en primer plano en la linea de comando
CMD apachectl -DFOREGROUND


