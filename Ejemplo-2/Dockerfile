#S.O que llevara el contenedor
FROM centos:7

#Lo que va a ejecutar
RUN yum install httpd -y

#Para copiar archivos externos a nuestro dockerfile para que se ejecuten en el contenedor usamoos COPY
COPY startbootstrap-freelancer-master /var/www/html

#Variable de entorno con ENV, crear archivos directamente desde el dockerfile.
#Su sisntaxis en ENV nombre de la variable y el contenido
ENV variable Contenido de la variable de entorno para prueba

#Luego de declarar la variable de entorno debemos utilizarla, para ello usamos RUN para que la ejecute
#Declaramos que el contenido de $variable se cree en un nuevo archivo en la direccion /var/www/html llamado prueba.html, con esto podremos ingresar desde un navegador a ese nueva pagina llamada prueba para visualizar el contenido.
RUN echo "$variable" > /var/www/html/prueba.html

#Para que este corriendo en primer plano en la linea de comando
CMD apachectl -DFOREGROUND


