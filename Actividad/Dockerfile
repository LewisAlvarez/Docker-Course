#Partimos de la imagen oficial de ubuntu
FROM ubuntu:18.04

#Instalamos apache y PHP 7.0

RUN apt-get update
RUN apt install -y apache2                                                                                                   
RUN apt install -y php libapache2-mod-php                                                                                       
# systemctl restart apache2                                                                                                


#Copiamos el vhost a la ruta por defecto donde se ubica en nginx

#COPY vhost-apache-php.conf /etc/apache2/sites-available/example.conf

#RUN echo "exit 0" > /usr/sbin/policy-rc.d

#Copiamos el index a el archivo de configuracion de apache
#COPY index.php /var/www/html/index.php

#Copiamos el script que inicializa los servicios a una carpta

COPY start.sh /start.sh

#Asignamos permisos al script

RUN chmod +x /start.sh

#Ejecutamos

CMD /start.sh

#CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
 

