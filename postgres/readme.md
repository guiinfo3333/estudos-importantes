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