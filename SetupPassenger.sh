# Setup Nginx integration
if [ ! -f /etc/nginx/modules-enabled/50-mod-http-passenger.conf ]; 
then ln -s /usr/share/nginx/modules-available/mod-http-passenger.load /etc/nginx/modules-enabled/50-mod-http-passenger.conf ; 
fi

ls /etc/nginx/conf.d/mod-http-passenger.conf
service nginx restart

passenger-config validate-install