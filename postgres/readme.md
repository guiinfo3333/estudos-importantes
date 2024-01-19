## 1- Entrando pelo terminal
    sudo -u postgres psql
## 2- Listando bancos 
    \list
## 3- Se conectando com o banco
    \c kiki
## 4- Listando as tabelas
    \dt

## 5- Restaurando banco pela linha de comando
    pg_restore -d parcela_contas -h localhost -U postgres parcelaconta_development.backup

## 6- Liberando conexões remotas

SHOW data_directory;

nano /etc/postgresql/14/main/postgresql.conf    colocar -->  listen_addresses = '*'  

nano /etc/postgresql/14/main/pg_hba.conf

# TYPE  DATABASE        USER            ADDRESS                 METHOD
host    all             all             0.0.0.0/0               md5


sudo systemctl restart postgresql
