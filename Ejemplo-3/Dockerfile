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

#USER --> Usuarios, para saber quien ejecuta los comandos escritos en el dockerfile
#Con la siguiente instruccion, corre el comando whoami quien dice que user ejecuta la tarea y se lo asogna a un nuevo archivo llamado user1.html
RUN echo "$(whoami)" > /var/www/html/user1.html

#Ahora nos crearemos un nueso usuario para que las instrucciones a partir de ahi sean ejecutadas por el nuevo usuario
RUN useradd blackcalle 

#Nos pasamos al nuevo usuario
USER blackalle

#Guardamos el nuevo usuario en el archivo user2.html
RUN echo "$(whoami)" > /tmp/user2.html

#Nos volvemos a pasar a el uruarios root
USER root

#Luego de declarar la variable de entorno debemos utilizarla, para ello usamos RUN para que la ejecute
#Declaramos que el contenido de $variable se cree en un nuevo archivo en la direccion /var/www/html llamado prueba.html, con esto podremos ingresar desde un navegador a ese nueva pagina llamada prueba para visualizar el contenido.
RUN cp /tmp/user2.html /var/www/html/user2.html


#El EXPOSE es para exponer puertos
EXPOSE 8080

#Para que este corriendo en primer plano en la linea de comando
CMD apachectl -DFOREGROUND


