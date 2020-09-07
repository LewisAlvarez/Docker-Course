#!/bin/bash

echo "Iniciando container....."
echo "Container inicializado!!!!" > /var/www/html/init.html
apachectl -DFOREGROUND
