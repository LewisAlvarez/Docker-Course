#!/bin/bash

#Start php proccess in background

/etc/init.d/php7.1-fpm restart

#Start apache in foreground
["/usr/sbin/apachectl","-DFOREGROUND"]
