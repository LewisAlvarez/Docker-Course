#S.O que llevara el contenedor
FROM centos:7

#LABEL, los labels sirven para escribir metadate de la imagen, es decir, informacion descriptiva del versionamiento y datos de interes sobre la imagen.
LABEL version=1.0
LABEL description="Esta es una imagen para un servidor apache"
LABEL author="Blackcalle"

#Lo que va a ejecutar
RUN yum install httpd -y

#Para copiar archivos externos a nuestro dockerfile para que se ejecuten en el contenedor usamoos COPY
COPY startbootstrap-freelancer-master /var/www/html

#El EXPOSE es para exponer puertos
EXPOSE 8080

#Para que los datos al eliminarse un contenedor queden guardados o persistan en alguna direccion
VOLUME /var/www/html

#Para que este corriendo en primer plano en la linea de comando
CMD apachectl -DFOREGROUND


