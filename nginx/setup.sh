

sudo curl -o /etc/nginx/sites-available/default https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/nginx/sites-available
sudo nginx -t
sudo systemctl reload nginx
