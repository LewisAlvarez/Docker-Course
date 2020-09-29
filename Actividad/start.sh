#!/bin/bash

#Start php proccess in background

/etc/init.d/php7.2 restart

#Start apache in foreground
["/usr/sbin/apache2ctl", "-DFOREGROUND"]
