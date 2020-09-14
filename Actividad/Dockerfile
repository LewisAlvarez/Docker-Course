#Partimos de la imagen oficial de debian
FROM debian:latest

#Instalamos apache y PHP 7.0

RUN                                     \
	apt update                   && \
        apt install -y apache2    
#        apt install -y curl wget gnupg2 ca-certificates lsb-release apt-transport-https &&/
#        wget https://packages.sury.org/php/apt.gpg &&/
#        apt-key add apt.gpg &&/
#        echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.list &&/
#        apt update &&/
#        apt install -y php7.1 php7.1-cli php7.1-common

#Copiamos el vhost a la ruta por defecto donde se ubica en nginx

#COPY vhost-apache-php.conf /etc/apache2/sites-available/example.conf

#RUN echo "exit 0" > /usr/sbin/policy-rc.d

#Copiamos el index a el archivo de configuracion de apache
#COPY index.php /var/www/html/index.php

#Copiamos el script que inicializa los servicios a una carpta

#COPY start.sh /start.sh

#Asignamos permisos al script

#RUN chmod +x /start.sh

#Ejecutamos

#CMD /start.sh

CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
 

