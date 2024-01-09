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

nano /etc/postgresql/14/main/postgresql.conf    colocar -->  listen_addresses = '*'  
![image](https://github.com/guiinfo3333/estudos-importantes/assets/55297197/16bfd441-5411-4d84-92d7-1c0a325a7585)

nano /etc/postgresql/14/main/pg_hba.conf
![image](https://github.com/guiinfo3333/estudos-importantes/assets/55297197/6bb8d204-29dc-4aef-ab16-e37c6a62a447)

sudo systemctl restart postgresql
