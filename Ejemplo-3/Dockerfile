#S.O que llevara el contenedor
FROM centos:7

#LABEL, los labels sirven para escribir metadate de la imagen, es decir, informacion descriptiva del versionamiento y datos de interes sobre la imagen.
LABEL version=1.0
LABEL description="Esta es una imagen para un servidor apache"
LABEL author="Blackcalle"

#Lo que va a ejecutar
RUN yum install httpd -y

#Para definir la ubicacion actual donde quiero trabajar usamos WORKDIR
#Ahora cuando se realice el COPY no es necesario escribir la ruta, ya que con WORKDIR estipulamos la carpeta donde vamos a trabajar
WORKDIR /var/www/html

#Para copiar archivos externos a nuestro dockerfile para que se ejecuten en el contenedor usamoos COPY
COPY startbootstrap-freelancer-master .

#Variable de entorno con ENV, crear archivos directamente desde el dockerfile.
#Su sisntaxis en ENV nombre de la variable y el contenido
ENV variable Contenido de la variable de entorno para prueba

#Luego de declarar la variable de entorno debemos utilizarla, para ello usamos RUN para que la ejecute
#Declaramos que el contenido de $variable se cree en un nuevo archivo en la direccion /var/www/html llamado prueba.html, con esto podremos ingresar desde un navegador a ese nueva pagina llamada prueba para visualizar el contenido.
RUN echo "$variable" > /var/www/html/prueba.html

#El EXPOSE es para exponer puertos
EXPOSE 8080

#Para que este corriendo en primer plano en la linea de comando
CMD apachectl -DFOREGROUND


