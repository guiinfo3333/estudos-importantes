## 1- Statartando servido nginx
    sudo service nginx start
    sudo service nginx restart
    sudo service nginx stop


## 2- Renovando certificando LetsEncrypt 
    sudo certbot -d apis.test.com.br -d apis.test.com.br

## 3- Problema para restartar servidor nginx
    sudo fuser -k 80/tcp
    sudo fuser -k 443/tcp


