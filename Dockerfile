# adapted from https://github.com/orchardup/docker-nginx

from ubuntu

run apt-get update && apt-get -y install nginx
run echo "daemon off;" >> /etc/nginx/nginx.conf
run mkdir /etc/nginx/ssl

add default /etc/nginx/sites-available/default
add default-ssl /etc/nginx/sites-available/default-ssl
add src/ /var/www

# uncomment and add crt and key for ssl
#add server.crt /etc/nginx/ssl/
#add server.key /etc/nginx/ssl/
#run ln -s /etc/nginx/sites-available/default-ssl /etc/nginx/sites-enabled/default-ssl

expose 80

cmd [ "nginx" ]
