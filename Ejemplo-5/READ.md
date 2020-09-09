En este ejemplo nos crearemos un Dockerfile con centos 7 y le instalaremos apache y php
Ademas instalaremos el certificado ssl a la aplicacion web.
Para ello usamos el comando: openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout docker.key -out docker.crt
