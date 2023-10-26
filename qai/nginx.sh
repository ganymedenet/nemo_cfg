
sudo apt-get install -y openssl
sudo apt-get install -y nginx

crt_file="/etc/ssl/certs/nginx.crt"
key_file="/etc/ssl/private/nginx.key"

if [ ! -e "$crt_file" ] || [ ! -e "$key_file" ]; then
  sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt
  sudo openssl dhparam -out /etc/nginx/dhparam.pem 4096
fi

sudo curl -o /etc/nginx/sites-available/default https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/nginx/sites-available
sudo nginx -t
sudo systemctl reload nginx



#crt_file="/etc/ssl/certs/nginx.crt"
#key_file="/etc/ssl/private/nginx.key"
#
#if [ ! -e "$crt_file" ] || [ ! -e "$key_file" ]; then
#  echo "Hie"
#fi
#
#if [ ! -e "/etc/ssl/certs/nginx.crt" ] || [ ! -e "/etc/ssl/private/nginx.key"]; then
#  echo "hie"
#fi