
sudo apt-get install openssl
sudo apt-get install -y nginx
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt
sudo openssl dhparam -out /etc/nginx/dhparam.pem 4096

sudo curl -o /etc/nginx/sites-available/default https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/nginx/sites-available
sudo nginx -t
sudo systemctl reload nginx