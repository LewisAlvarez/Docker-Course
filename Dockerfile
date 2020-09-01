#Esta es una imagen personalizada que contendra, apache y .. en centos 7
#La primera capa es el FROM el cual hace referencia al S.O que tendra el contenedor
#Ahi se descargara centos para el contenedor, la ultima version, tambien se puede poner centos:7 o centos:TAG
FROM centos

#Ahora se procede a la capa 2, es decir, el servicio o programa que se desea instalar en centos
#Esa linea de instalacion debe ser en la linea de comandos del S.O instalado
RUN yum install httpd -y

#Es muy importante para que al momento de crear un contenedor no se muera, que pongamos la capa 3 que corresponde a una linea para que programa instalado se ejecute en primer plano o FOREGOUND
CMD apachectl -DFOREGROUND
